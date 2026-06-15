Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xH/iEBuJL2pOCAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:09:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2468364F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:09:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Vll8kzRm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C337710E1A1;
	Mon, 15 Jun 2026 05:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD1C10E18F;
 Mon, 15 Jun 2026 05:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781500184; x=1813036184;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0Yg9f/ZtZEyekp+wFkujssgmYIOLg2znNLilGX6D2Xs=;
 b=Vll8kzRmVPigbwmgKmd2LBv4HPemXr4pg4bZAzbysFmcJkPx/8Lxc65Z
 8pY+JKOOBA8U/G4brsJTXrVw75eCjfRK3G6ZFOEMMsoxx2hvq2RRDkZA3
 XPq0AfoGlUVSzCwKvKYG9H8lVvzA+egAbkZd2O3KkBA2mNr2h6izBnn1N
 rvcw7VLSyOVhsi/6/6paZdRWuuVCNrHkj2fPYV3/w7PjCvTcAUxqGSYVI
 +gtzC0xP8TtA+J6OC7Le3tRlK59mhx1dTl0g8JfA/z9GW88p4hJUSf9NV
 propSiZHW1e/vwb24T1mRyzxP7OTEzNvtzIqoxYAJx67hZXUv2L+GNHKI A==;
X-CSE-ConnectionGUID: rTb3zeefQqqMnVLhxayP+g==
X-CSE-MsgGUID: YaOEqgFSQmWytVhHkerb9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82271406"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="82271406"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:09:44 -0700
X-CSE-ConnectionGUID: WmdCekGER42tADa0Zi7aPQ==
X-CSE-MsgGUID: 2RVqcOptRq6/qUiG6bU/8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="277564232"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:09:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:09:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:09:42 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.35) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:09:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sirahqGLd+M+LLlWdYJrlYBQIdA7g8nE1YaWLs9TVx+GzJ+aFvFnUVgzsuhu7N7xFvuidZk5lqgwRE02jDMfLo8i15/KyPitglsLJi98NgrFNr9L4UEOUwO0/nMhqYdfTRAEYcf4/B1Py2J4flGSOJq7B/RpsDgpvthmJbBdQ0dsEiazoPvDMB06MuhTzHwyfQ54vVaYB4N4bjuvHh9VjpjG2N73PZgn73+vylAKpJxw92dZa+5vCpqJ09bEvKMG+9BcbCo6ExWoXiHzcO5mqlveLKW36RLSd+x4xizIIoD/0v4pooJCyD01EJ8nCLzylx7RYmzaxffdFSfEQbqMNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Yg9f/ZtZEyekp+wFkujssgmYIOLg2znNLilGX6D2Xs=;
 b=yNy6VkcxhWfbltzvdCT80hAxboAb1Ykp/shB70uONGBOCGLm+8/N5EgvgMKDDtdI9CUaVK5SkhRcigUTuDCWfmYmIzXH30AlZy615i8CZcEKFnu+XerftiBz78WZHrAcVWmuEUmM95x6CJsb5SjA5hWMxE/yGqTyb7O229Z7pik6Ev3pFLIceVOxgeRQWRqsYxIj0o6upkeSBYYr3sU4s/STQc884M5SaBR2mhOGU5PtAECsXI6YESnctVR27V3AJjG7EasH22NF+06dS4/SqHVt9Vsk2nSs7cg5lhqncCL7SdRUmVRkEfRX1ZnIKx27+JjS634ZP+eWvwcG0Txk8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM4PR11MB6264.namprd11.prod.outlook.com
 (2603:10b6:8:a5::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:09:40 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:09:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Topic: [PATCH v7 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Index: AQHc930CK/y4HXDIjEuV/s0xGhbkhbY/Gzuw
Date: Mon, 15 Jun 2026 05:09:40 +0000
Message-ID: <DS4PPFE901A304F3B1BED9C008A45839F68E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-3-michal.grzelak@intel.com>
In-Reply-To: <20260608192821.3414590-3-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM4PR11MB6264:EE_
x-ms-office365-filtering-correlation-id: 079dce93-3a1a-4461-a997-08deca9c4e19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|18002099003|22082099003|11063799006|3023799007|4143699003|56012099006;
x-microsoft-antispam-message-info: J+nVuQal/HVGsPx95Ou54dHYe6vjFQ+wgLNY/NxtJYPwjwBk11ufasrqv4sMY3IOtg6hS6DV8SUhFAuSVlfirjB3tYTQSgd+6UnsSzrngjB9PIgp41+FTr9f+P4aPgezL6W1sbRbaaxZGuvrD1ypWWyNxM2W5+imnywLLdLcBSZi2HrZX4mT5L3fEimGf6wyl6M/UrutV2I/uUZBldSj6rv82G0tBKtXl7VLCM0os1iuJUwJZRsmkfnw3Aa9GD/Zwaj3OTq8t1+j9e1JMpGXK1/GK7yqIOSuTgUUuI4v2NarpWnaTH+jA1wMuWaPm1m880GuKrS4jGw6VV5d/iMhYIhnM/6iHKVry6LP6pZMLXeMn8+IDRIf8ui5b2qBDtT01xfkAhKrk3vMbNcNnR/9FGvdh4vUcO3nLbIkBzOZMXXUZzvH8t/RaoMLpwc2gpZPdHChS0vj/vj9xotI9cK0mCnDsfbxCIKpEjoVCRBZz7GNfCzl7T2XeCDZyD/l1njZYxgjsc2AzXxfSDi0/uQjq7mCYRZs662Y7EtMeHNMixBUYXcjjWySX22kru78qWMt5cINvQZ9XA9xtsrAeNA6KE6cIIraXHEP4zI/NEgDwzbzHvJ4ErwqzMJDcFAPDgEMyHl6Z+G+op7U954O4GBaikfb0NAaB1HHZd9/PNiclMHTYwnWOH+GFUFurhULuvBdp9q/DpP6EiYjb6JmC2RL9Ko+cA5IVAIRFWiqLBFsnZ6MWQJNzFeZYE34u681O5iv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(18002099003)(22082099003)(11063799006)(3023799007)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzdhVHlaU29oT1dzVFl6TFNaTGRkMmNKS1ZJV2ZaTExXOHRnRmN6dkNBWjQx?=
 =?utf-8?B?NVBLOXRjWFVuK0o0c282UlNZbXQ3dGRCbHRyZVRkcGxqY1hFV0FyY3FEUmFh?=
 =?utf-8?B?a1AvVXVZQ2ZWeWhTL3c3Q2VjOEFyZkNYb3RpdmRHaXVXbHFvbTBPZUVIYXNF?=
 =?utf-8?B?OWJTRUV0ME90NUdqL0RaRTlHOGJHTmQ0cTFXRXlSdTVwUnRaZnBLTVRKQWZI?=
 =?utf-8?B?OGxlenlCWUEwb2VSMnNLdTFlckx6OWU0VUFyMkdldWdiV21MUkN1OGRVajRm?=
 =?utf-8?B?UStjZFpMSE8xcytZSkpqUjg5eVFyZHNhSXFtNmg2bzY4V2thQjhVTktzOVgy?=
 =?utf-8?B?M3g0dUhVN1NLSURMcElxVG5xbmlpSTNjNU1LdzlEakZpa0JJQTkzYjcrZFI1?=
 =?utf-8?B?STJpSmxPL0padUxMOWtkZlBZUWJlbCtLd2ZKZHBhbkJIVzVMeHZzeHNzMC9l?=
 =?utf-8?B?dHBLYUkzWkRjV3M4ZEptQTBGYUxMZnB5eFRNbThWM0RaQkZpc2NLeTdiMm1E?=
 =?utf-8?B?S1NjK0duQlVIVXNCVTYxc0wwMGx6UTgzMFFWMEhTeUNRMEU4Y21uUDB5R1NF?=
 =?utf-8?B?emRRd2VaUnF4bVV5VDJsNDJNVnBQRDA2U2ZwaGo0bU5Oa1ZCL2ZScGo5aklG?=
 =?utf-8?B?MG11N3I5TWUvdjJWUHUyeW93LzJiSm04N2krcGhtbnpxcyt2WHdrd1locXF0?=
 =?utf-8?B?TTNEN3ZWUDM2SkdXbjlYLytvOCtMeXdaQVdUdm5FTnNYWmdvRmcxRkRkZjA3?=
 =?utf-8?B?c0U2c0NwZUxjdjloR2V2NGJSeVdBMnMzMDgvRHpCV2NtOGNKb3hGS2tOUVVw?=
 =?utf-8?B?eitvYWYvVS9mbW5MSGl3UTJOVEZpaGMwR2hJcXVIN2lyOS9UN0JRN0ZtMVRt?=
 =?utf-8?B?aFJlSWNseW5qamduQVh4RnlYaDFJV2IvdS9jME5SV2xaN1V3cFhiZHR1OXFa?=
 =?utf-8?B?ZW9maC94OW1mdUcvNEVuRUxHOVltWmQvYndhV2xPYVNxQmpscktjMTJjemhK?=
 =?utf-8?B?MlVpWDJhL3IydmRtbktRbnJaNnNTakN2K0tNSWJPSUl0Q3c0UW91MXU3RVd3?=
 =?utf-8?B?cGUzaUdGb2MxWElDbG40STVXdG9NbFdhVDBuR25aaFV2SmZ4aXFaNFR3Z2w3?=
 =?utf-8?B?djNUV3I4SEhnR3FQV2Q5ZjVBcTBHQ0s3c1VzdEhMWjdyeU5FcnFoYmllOWVX?=
 =?utf-8?B?SjJWMkdqR3Q3WGhtaGNLM2pMN0JweTdVbFhzaVpxajVyaUlGQmNZTEdkWXU3?=
 =?utf-8?B?QkRZMmJ5NENzV3p3Qkw0NTNIMXM5TUoyd3dsb1ZsQkw1a25nZm9WOGc1TmV3?=
 =?utf-8?B?Ly9lcEUydVdLQy9uSXN6NnpBS1d1dG5Ma0JNWHNMaGd3dy9iMG4wQWtXZXBC?=
 =?utf-8?B?NmJoaWNMU1BIMGF4bnFES2JsS0tuWDJjNFpSdDYxd3RWc1NNNVZlc0dBdmJQ?=
 =?utf-8?B?Q1Vybkk1bWg0K3U4NWtwMUpsUzJqbkNzNURkRFFCQWdrNGFFQU10eE9jZm5s?=
 =?utf-8?B?WEY4MXVYZ3FGZndVeFdIcXltOWcvRXVKTjVjSkxoOVA5Nks1dzlmd0ptenpn?=
 =?utf-8?B?Nm5MYU5ra3lqSUNFbnBWZW93RjB6U2dSQm5JTnEyRUp5c2RUSTdwU2gvZnVQ?=
 =?utf-8?B?QzhWTkF6MEplbkZaYjNzVTZrSUtnWjRycVFBN1lqMm43d2ZRV2FLREprbEFQ?=
 =?utf-8?B?YUdhbWdpdHdnSlBSdk5JcjJKU0VrNUN1YmZmTWpSOVVsM3ZVMzhOalI2R0h6?=
 =?utf-8?B?eStMT0V0cGpabTVUeEdOQkdkMHFsdFRlYmRURXp5YUo0L3ZWZWVSUFJzV1F2?=
 =?utf-8?B?ZVF4R3phN3dZbjBLU21zSHhoRnI4bHVWUDhUNTFidHpEdm0xVkhBUFZ4Q05K?=
 =?utf-8?B?emlpT1B3V0RKYjB3QXlOVnRBSjNKQTNBekg1eE9ZbnR0ZU1ENzhBNnFhZXVJ?=
 =?utf-8?B?Sm9sbkdXYmRLNEtsd2d6MmdwOHNJd1QvUG15RDh4K2xsN2ppSTdXcTZURlk0?=
 =?utf-8?B?MEVXMW9lZ2g3VVFEZ0FTbHVXWlJ1NmdwWDh6WE16NUg2eCtrVm8ySnV6Szls?=
 =?utf-8?B?Q3B6SVgwZUo2RGo4Wlh5cmczY0FJV1Nmemg2MjNNSG5ZUGFHWEI0NytVd0N4?=
 =?utf-8?B?MWU4OE9Dam8xMmV1RG1ZbzQwb2s1b1M5REZGY2pLTVdxMnQvZ1pjWEFlTUVE?=
 =?utf-8?B?L1ZxdUlGMmNmM2VYWGpOaXFxaXhOZi90K1duK0JKUnFwaXNvTkRhRDc4S01o?=
 =?utf-8?B?ZW8ycndGaDBwYllJY3dZOE9zOEVEby9sQWc0VGlFNis2K1JsVVQ5YU5ITGZJ?=
 =?utf-8?B?VjhlQSs4akdOTVV5ZURmaUwxTHJtMm40RDNGSUR4eXdGNXc3WlNKUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c/+9EwC3C7KMXYaN5X2f6btfC0gNw/8JeixVqRYWVaTQhSxRnFlfrbWy4Ju2tDNhIBpEYrScpectyaRzBraAL9JmHkICbfQrItL1wgIqnDv+vWJHQIOvS0xf+JL2ckf9yklPCW0g/sAdGJROUl1IHGQkbOTyB1GMYCbFyMuOE23wda1nSEuLzxOEpu7T/fmmOGK51bCy89Q8bklBH9y8XkffbtUzy3i9DZf40kM24TtppS4LFfAfEwEFDXTNKqEVv0gDXxSEKzp+EVk7a+SzdXQrQ6o9ehIz8O1bOpe5fbCJcEQD1SCkgXFuAUzAaSBcqTlB4toenpCAsR5FALFXlg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 079dce93-3a1a-4461-a997-08deca9c4e19
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:09:40.7120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IyeKUBQidfkmEmVHqrwI69SpSL2xusxVyN4aJV57hmTZiYe67kCn0VjZUKRRY/ud6rCOOeRd5SEl1/I9DkI+Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6264
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8EC2468364F

PiBTdWJqZWN0OiBbUEFUQ0ggdjcgMi84XSBkcm0vaTkxNS9iaW9zOiBzdG9yZSBWQlQgIzU3J3Mg
bWV0YWRhdGEgaW4NCj4gaW50ZWxfdmJ0X2RhdGENCj4gDQo+IFN0b3JlIHRhYmxlcywgbnVtYmVy
IG9mIHRhYmxlcywgbnVtYmVyIG9mIHJvd3MgYW5kIG51bWJlciBvZiBjb2x1bW5zIGluDQo+IGlu
dGVsX3ZidF9kYXRhIHdoZW4gc2VhcmNoIGZvciB0aGUgVkJUICM1NyBoYXMgc3VjY2VlZGVkLiBT
dHJ1Y3R1cml6ZSBhbGwNCj4gVlMvUEUtTyByZWxldmFudCBtZXRhZGF0YSBpbnNpZGUgYW5vbnlt
b3VzIHN0cnVjdCBuYW1lZCBhcyB2c3Blby4NCj4gDQo+IFByZXNlbmNlIG9mIEMyMCBvciBuZXdl
ciBQSFkgY2F1c2VzIGVhY2ggdGFibGUgdG8gY29udGFpbiAxNiByb3dzLiBFYWNoDQo+IHRhYmxl
IGNvbnRhaW5zIDEwIHJvd3MgaW4gY2FzZSBDMjAgUEhZIGlzIGFic2VudC4gVXNlIGRpc3BsYXkg
dmVyc2lvbiB0bw0KPiBkZXRlcm1pbmUgbnVtYmVyIG9mIHJvd3Mgc2luY2UgdGhlcmUgaXMgbm8g
aGVscGVyIGluIGludGVsX2Jpb3MuYyB0byBjaGVjaw0KPiBwcmVzZW5jZSBvZiBhbnkgQzIwKyBQ
SFkuIHByZS1NVEwgcGxhdGZvcm1zIHNob3VsZCBoYXZlIDEwIHJvd3Mgd2hpbGUNCj4gTVRMKyBz
aG91bGQgaGF2ZSAxNiByb3dzLg0KPiANCj4gdjUtPnY2DQo+IC0gYWRkIEJzcGVjIChTdXJhaikN
Cj4gDQo+IHYzLT52NA0KPiAtIHJlbW92ZSB1bm5lY2Vzc2FyeSBpbml0IG9mIFZTL1BFLU8gbWV0
YWRhdGEgKFN1cmFqKQ0KPiAtIGFkZCBoZWxwZXIgZm9yIGNvbXB1dGluZyBudW1iZXIgb2Ygcm93
cyAoU3VyYWopDQo+IC0gZml4IG51bV9yb3dzJ3MgdHlwZSAoSmFuaSwgU3VyYWopDQo+IC0gZGVj
bGFyZSBudW1fcm93cyAoU3VyYWopDQo+IA0KPiBCc3BlYzogNjg5NjMNCj4gU2lnbmVkLW9mZi1i
eTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQoNCkxHVE0sDQpS
ZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgICAg
IHwgMTAgKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2NvcmUuaCB8ICA3ICsrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gaW5kZXggMGM3Mzg1YTNiYjc1Li42YzIyODUzYjUzNWYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0yMTg1LDYgKzIxODUsMTEg
QEAgcGFyc2VfY29tcHJlc3Npb25fcGFyYW1ldGVycyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCB2c3dpbmdfcHJlZW1waF9u
dW1fcm93cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgew0KPiArCXJldHVybiBESVNQ
TEFZX1ZFUihkaXNwbGF5KSA+PSAxNCA/IDE2IDogMTA7IH0NCj4gKw0KPiAgc3RhdGljIHZvaWQN
Cj4gIHBhcnNlX3Zzd2luZ19wcmVlbXBoX292ZXJyaWRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5KSAgeyBAQCAtMjE5OCw2DQo+ICsyMjAzLDExIEBAIHBhcnNlX3Zzd2luZ19wcmVlbXBo
X292ZXJyaWRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCS8qIHByZS1JQ0wg
R09QcyBkb24ndCBoYXZlIFZCVCAjNTcgKi8NCj4gIAlpZiAoIWJsb2NrKQ0KPiAgCQlyZXR1cm47
DQo+ICsNCj4gKwlkaXNwbGF5LT52YnQudnNwZW8udGFibGVzID0gYmxvY2stPnRhYmxlczsNCj4g
KwlkaXNwbGF5LT52YnQudnNwZW8ubnVtX3RhYmxlcyA9IGJsb2NrLT5udW1fdGFibGVzOw0KPiAr
CWRpc3BsYXktPnZidC52c3Blby5udW1fY29sdW1ucyA9IGJsb2NrLT5udW1fY29sdW1uczsNCj4g
KwlkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3MgPSB2c3dpbmdfcHJlZW1waF9udW1fcm93cyhk
aXNwbGF5KTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdTggdHJhbnNsYXRlX2lib29zdChzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSwgdTggdmFsKSBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gaW5kZXggMDljZTI1YTZk
NGIxLi4wNjFiZjQ3OTQ1OGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBAQCAtMjQyLDYgKzI0MiwxMyBAQCBzdHJ1
Y3QgaW50ZWxfdmJ0X2RhdGEgew0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgZGlzcGxheV9kZXZpY2Vz
Ow0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgYmRiX2Jsb2NrczsNCj4gDQo+ICsJc3RydWN0IHsNCj4g
KwkJY29uc3QgdTMyICp0YWJsZXM7DQo+ICsJCWludCBudW1fdGFibGVzOw0KPiArCQlpbnQgbnVt
X2NvbHVtbnM7DQo+ICsJCWludCBudW1fcm93czsNCj4gKwl9IHZzcGVvOw0KPiArDQo+ICAJc3Ry
dWN0IHNkdm9fZGV2aWNlX21hcHBpbmcgew0KPiAgCQl1OCBpbml0aWFsaXplZDsNCj4gIAkJdTgg
ZHZvX3BvcnQ7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
