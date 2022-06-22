Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09EB555344
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 20:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30B9112D68;
	Wed, 22 Jun 2022 18:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C61112D68
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 18:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655922527; x=1687458527;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SMFBCHJO/AQeaDgMmBmo1z2OjBWS5f1/GB2KN465xlM=;
 b=dUEnHD6Z/k7SU8dxD+H6Fff/sGgNIW3rZWJ19IYMyB2lWJdHjkzJTjFq
 vLGcxrxJDs/cX3E+c0lHpogeqkIHup4gkOfD+p8FZzWZxUw7H7n5p2EeP
 p5owJZxBV8913up1ibxI2H+yORQNKHXAh9CMr7g/7LAwUNx1CEVuMb8Ek
 +CV/PhIYet0s3n1qxyUpYlhQ43iEBIpUF0Sc+EDcXJVv8pRrMp6yKnxuZ
 6s060/fHyY3Bx1OtNR3FbLCnwzj/WsU6Uo2pv/rbvql/aWfy4dZSNbjq3
 xlyisI/P1L0q+c1kxhfg/gTgWHp9q1R81edERRhtFtD2MJb40851P5Jrf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280552337"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280552337"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 11:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="834249176"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jun 2022 11:16:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 11:16:55 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 11:16:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 11:16:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 11:16:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T7HNLssELIBz7s9IFYdnkQwPpzpVokiU23FOCE8cobMcbH2Qkg/etIBfJkOnOyyzG9qaYoYVJF30TTc5hBkpe5tPhENat0VBedGt7LHKR8P/sokeOA8FklbG3Wa9tXP/jUWwnTv29syQIrNzWSRmFlJwC1b6qW4CMULAI/Gj5NpMkB7TRhLOkxzkKxUDeRlj6Q9z6wvPdeenKLKUJiHitQmMVTBO1VDS5RHP7ueAaa3SqPybFFm/zDefM4RFWbiAXV7lS8CbvI4ouY+HGIg2GcNW3wZI65wFoOFhjvD1Btia0ZCwx7bf6oKKwLYASpcILUHgyEGJ8c1c7zTH9TqVkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SMFBCHJO/AQeaDgMmBmo1z2OjBWS5f1/GB2KN465xlM=;
 b=b/BbihnHr9psdFRJ88WD98rKsAwWO/XOsvsUSgmZVZaLdgwaGbK+twk/lcZctRx3elMe33tuK2s0M0wtlWTp6QjFRShqosdkYs+hyx9LQfMVDG0lohljpjOtIFpm/xt4b0BYGFHg6KKHjwnEkOU1flbm6XbIYX+XHLC20/15mTfx1QaNw+3YkujcjXDFz9eemxFRCopGjTQfB7M3GCXY1fCkZSVbV95scNzzAr12Uyrw2pGpPKB8SslHjdtNIAKx9NESAHUAGnpq3LsqjhEsHsEykWiRXHHz05ONHxVMsxX76PUeP3sU4YbsklzRTN7woYNKXssxsdxlSx9ZvkBvyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN8PR11MB3779.namprd11.prod.outlook.com (2603:10b6:408:8a::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15; Wed, 22 Jun 2022 18:16:52 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%6]) with mapi id 15.20.5373.016; Wed, 22 Jun 2022
 18:16:52 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 14/15] drm/i915/huc: define gsc-compatible HuC fw for DG2
Thread-Index: AQHYfFef8ys0d9FjO06HimV8H0UXq61bz/+A
Date: Wed, 22 Jun 2022 18:16:52 +0000
Message-ID: <e798c27a7a476f6b4def5cd21352af858a444a93.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-15-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-15-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1df637ac-459d-4934-4375-08da547b6204
x-ms-traffictypediagnostic: BN8PR11MB3779:EE_
x-microsoft-antispam-prvs: <BN8PR11MB37791D4BE78093DA82255E878AB29@BN8PR11MB3779.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g36iF/P5o16gI0jIsY4q8bYy6wj+IvmTOkSK6pmetRcte3sMGjWQiD7LWbHhYkjj3pVBSLygJf/snJGoHzXL/wq4dDFWicVXtwkeJ2gWdvCCyC+xyh94aqGihlltXmuoWG7beNxThdxkChB0f6y21GxSKnKPagtYyGhRrS/gIeHMPp2XUEuXJ0EkOtaPqgBloGQzBBxSFkMsQOIFthZ9J4g7n3s8ytPgUyGv/RCD/AjYR3LT7avXLaFhfc5eOx81rIU3VsLibCEqW5mCrzf6YBH/u9fGtERs1bgIZxerPEItzr3psHvvN7za7t4VQqjYqxyEEY1yf3cBNQodX1tWlmAj5FYpojpQbdVGFeTOEhIXlNfC/zqE1LcY1wvGlhGbD+757FjJJd9NIIDGIXacVAJQ1Wef95u9NOqdCx8Drt/rcXeAZg8dkTh8MKlAJJNTHU5bhNSULE4Wic1CGiicLSMIGJVZkSxh9EdyZq7onZT4WilMHtaNjw+bA2A7q5MWdUKnd9AEMfjYmlPL7y5IkoboD0XHUsRg1zpouwtM7NSAdWJdyLWReUsU5bzdcVRpZT1I/p5ser6xFDh0w0g5wgMbDmZobUTMZUF+dUoGDxOPwjRwCi7NXmR84LF+Wv+8HoTxxKdaHYwsSDUO4jALb8SysroopE/UHc8fypTFOTLdjPmqRtMFLYXKkPpjRIQjhrjKpEP0VFzxNs5NPi4bcSuCpQc8dYc7ozbqwG8T4CXyQTKC4s087tLMHI/QqpQVehqEJFH4FwpvNe3hGlb56g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(396003)(376002)(39860400002)(186003)(316002)(71200400001)(107886003)(86362001)(38100700002)(91956017)(4326008)(66476007)(64756008)(66556008)(66946007)(76116006)(36756003)(38070700005)(110136005)(8676002)(2616005)(66446008)(8936002)(26005)(5660300002)(122000001)(6486002)(6506007)(478600001)(4744005)(6512007)(83380400001)(41300700001)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cUtGY25MUkdqQ21pcitwaHo4S0RvdTlDR0Z0U0VKNWZLMXFJSlBYUjVYYnZJ?=
 =?utf-8?B?Zm5nZWNXNTVYcVk4REZBQmg2c1B3ZkpYaXQ5WEVsSk1pUGlwRnQvYzRjdDRZ?=
 =?utf-8?B?a1JYQmd4ZlgzbDZtRFB3cWR0dDFJZnZOeGNxVFpIRzY2cVdyQWVvYy9SakVi?=
 =?utf-8?B?TWxCYXhieDd4Tm1udExnYXl3NW1Cd05pUTkvNlB0RVVsaG5qdjhJL3RQN2pT?=
 =?utf-8?B?UlVQN3V6Y2oxcWtmdkhtaXd3Z3Q5NGYreVdqd1BkVW53SHZ3WWNvWENjcFZL?=
 =?utf-8?B?eVYydlhiZHZrekRjYzFrcE9jOHA4SlJKUzYxUHdtWXJSN3hJcUdhcGtGMTF0?=
 =?utf-8?B?WGVJNG5qYWY5TTNpTE9lV1BkZ0hrTExTcGJvZXB5NE5DUXFjTTJ6d0tLbkky?=
 =?utf-8?B?ZWZLeWZKK0hYejVWZzVkSWVzSkcxRzlEZ1R3di91WGlGRG9RZHhpeWtDRllD?=
 =?utf-8?B?ZnFTRmRTUkIxb21SOEdtQTNWN0s1MkxTN1dZbVhVdUJmRDBla3VBZUtrWUhH?=
 =?utf-8?B?WU0rM0d0bUNWb1hwZEdQbVJzK2VKS2RlNG1zUWJyTDRxYXIwTlJSVlloNThK?=
 =?utf-8?B?K2NvMTArc2lreHNsbU9La3g1dHZGbUxycmx6cHQ3UVlRZWdhZFRZZCt5NExj?=
 =?utf-8?B?cWZkaldXMTVvcWJUUktqUVNwYnBhT3BhbkMzSlhjeTM0KzZVWC9yTGNvcy93?=
 =?utf-8?B?WUZ6VGtEcEpQaEF2QkFnTXdSUjFpR0lxWUlQL0JzT1R1NEcwaCt2bTA5ZlZC?=
 =?utf-8?B?VFo3cm9Dak9LTG9RaGpkMlFnaGVtTDgrUlFpSWZCQ0xoc0VDejVGQjcwZUdZ?=
 =?utf-8?B?WmJNdk1wZlBJN0dvNnpramI4YmlIMTlOMk1rVXBYbDVPR2tMU0VqWEZLcEdq?=
 =?utf-8?B?S25udjlTaHpNN1lNNXlpTWhCMWc4c2xYNC9kOVFxZFBXZDlseFdCTVBUelBn?=
 =?utf-8?B?RWxna1dxTnZjSlppSnE4UlFvbnBadWpWbjhlcDlWWW9PU1IvV0REa2doVExW?=
 =?utf-8?B?dFFLNDAvK0NuMldmM0hJU1huWVYva0dOZEp6YzNCcGIxR2pHdFpOM2cxU1p4?=
 =?utf-8?B?V2hybytSK3BjVXp2Z3FWL0hYSTMvZWFscVlyMGZCRWJkbTFCZzhRa0ZJMWVq?=
 =?utf-8?B?YktUMXRHWWFiVWNOQU5jVmJnbXc1MFpPaFdDalRYZXlubEN6c3oxenRBbjNM?=
 =?utf-8?B?L0krVmZKRGV0MHh2cWFyN0oxUlhINjVBOGNDS2JON1JnSG93aVIxeERnWU5u?=
 =?utf-8?B?ZWlta3FiSXRUTzlMWDh0Q2NYVDRueE1IRDNzV1NmclM0Q3Nwd2NvcnpqTjh4?=
 =?utf-8?B?QjUvSGl4QXdtdUxPc2xib2Vwc1Y0OXc4RjJpMXFuaHhSVGx1UDdBdFFBRDA5?=
 =?utf-8?B?clRaNHR4bThvQWd0N2RhVm1TaXpDQlNyMkNDQjVZeElwWCtldndIRWEzamVy?=
 =?utf-8?B?VnAwWHBoOVgySm4zT01xdndlcVNON2JZcm51WGwxVUtaQUdtamhJTHhOSERa?=
 =?utf-8?B?RjMzNGhNbTFsckhCNFVTTktTZHRZMWhiQWJlQUVkRmlrS1JYV2RxZ2w4RUpW?=
 =?utf-8?B?TlhhY1p6VFZ0OTNGSUdqUWpicndrRkVlMFpZTUhacEE3aUNsd1dGbWdsUEtT?=
 =?utf-8?B?NlRlUnBoSEFkWnF3K2FUM2RJWXh6c3R2aThrK2I3YStDTVExb201WFc3NVJw?=
 =?utf-8?B?cTZwNWk4MlBqbUEvSlBwcGszUGlhOTR6SC9uN3VPaWZEd3REdm9RSGoxMHN2?=
 =?utf-8?B?L3NiTFl4M3pZWXJ3N3h3NmN5bVRicWowcngyMTF1dVlmZnV6M0tkT1lUc3dF?=
 =?utf-8?B?WmhtdW9qblVxWmRFa0RWUUQ1cGJWL3B6dUs1VW5iTmh0NGE2dVNXdTVRZ2JF?=
 =?utf-8?B?RHAxUnVKYWFBd0pIZlNYRVF4dGQ0aDNTYXdTcEd1bE9QRVBsdTFWR1hpbHVr?=
 =?utf-8?B?RTFUNDNJd0cvUitENHpkWjlpd01GSDZpQ0tuK0pEWnNHMlFuWGtKQ0NpZkZP?=
 =?utf-8?B?N3J1VjhzRUkrV1dRaFVNMjBFYW9UK0RyQ1lTUGsxR05McDFnaGF3OGhPdTJo?=
 =?utf-8?B?dTUwUG1zcUk2aFdsdkxkYUpKViswa2xyMVU1V1E3MEtNS1dwYTIvS3lPbGlH?=
 =?utf-8?B?YndUVEdxOURPSEVPbzlRKytDQmVaR2VsZzd6eEs4NHZzYzh3VjZOWURUa3Er?=
 =?utf-8?B?M0tBRVN3a1ljYlA0VmRBd25DdlV0Z3psVGJvRXBQYko5M2lJdGNOYS9KWU5h?=
 =?utf-8?B?OXl5bSs5a0p5Vk9IMldpVFZBUW5XT2RHQlplbHFKV2o4MVlZSEdvMUdMTG5S?=
 =?utf-8?B?L2paQnZhdjduLzliQTRIR3RIUFNsYS9xRy9NRU9FWm10cllQZGlhY24yOHRi?=
 =?utf-8?Q?kLZRv99aYjWf/Du1vkPAhdB64hp9PIN4E1aLW+A16Q4Qe?=
x-ms-exchange-antispam-messagedata-1: cvbAgqNpYcvidQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <8406831469C5E645BA9ACB6AE36DC615@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df637ac-459d-4934-4375-08da547b6204
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 18:16:52.7878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hPdKDmhFksAbBxcqNufhqtJSENXnWnxguehCYUBzeA8+YLlP2QiGQg6bSN0kmraIVMxXKtxHZgOMNPRk8v6sXEzFX0936MFD5lKFxNb4j2vTisXZuEs/XwDIvQVKvsDm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 14/15] drm/i915/huc: define gsc-compatible
 HuC fw for DG2
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

UmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KDQpPbiBUaHUsIDIwMjItMDYtMDkgYXQgMTY6MTkgLTA3MDAsIENlcmFvbG8gU3B1cmlv
LCBEYW5pZWxlIHdyb3RlOg0KPiBUaGUgZncgbmFtZSBpcyBkaWZmZXJlbnQgYW5kIHdlIG5lZWQg
dG8gcmVjb3JkIHRoZSBmYWN0IHRoYXQgdGhlIGJsb2IgaXMNCj4gZ3NjLWxvYWRlZCwgc28gYWRk
IGEgbmV3IG1hY3JvIHRvIGhlbHAuDQo+IA0KPiBOb3RlOiBBLXN0ZXAgREcyIEcxMCBkb2VzIG5v
dCBzdXBwb3J0IEh1QyBsb2FkaW5nIHZpYSBHU0MgYW5kIHdvdWxkDQo+IHJlcXVpcmUgYSBzZXBh
cmF0ZSBmaXJtd2FyZSB0byBiZSBsb2FkZWQgdGhlIGxlZ2FjeSB3YXksIGJ1dCB0aGF0J3MNCj4g
bm90IGEgcHJvZHVjdGlvbiBzdGVwcGluZyBzbyB3ZSdyZSBub3QgZ29pbmcgdG8gYm90aGVyLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4NCj4gQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCA2NCAr
KysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25z
KCspLCAyNyBkZWxldGlvbnMoLSkNCj4gDQo=
