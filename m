Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNn0GgUmn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:40:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB64C19ACE4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC0810E7FC;
	Wed, 25 Feb 2026 16:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4Woa/KH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D94D610E7F9;
 Wed, 25 Feb 2026 16:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772037634; x=1803573634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9LXr6LPaNwR+evbP7dhFgY+3cfUkYqbMy8tFJSkficA=;
 b=K4Woa/KH9YDeeGlGadmuRaYTCgOpt7F3z/KgPrb5bChvEBcwf+lhlCjX
 tdp/pimzkARc9DlHc7Xehyuv3A3iK7x/NZcL9G/RKcY8Z/ewQSevuh+eY
 rgApvgawi5W8wecsnI/QOXdGrdPUd81omx6eaZ9/b4H2JC1q7VJDlKzHZ
 6cVDaGrCMTO8A69U653/xkQgDaafJOt6n4RTZsBgmfdTgjxXZEdJ4D58e
 UBdu+jBkNlvQ0STVPXQdXlLWaeAwB/hUa4/5+otuPFm1dnAGI73NSOSm4
 s2vM94bLp1/IywqdIqeaX2If0Z7mHot52BJm8QV8ww3ky5hkIQhB/LZpn w==;
X-CSE-ConnectionGUID: e8Vb6zHLTGaf7LviQuf/Wg==
X-CSE-MsgGUID: QVr3/YU4QLCisl2SvAvSeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73059534"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73059534"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:40:33 -0800
X-CSE-ConnectionGUID: C8Msa5N7Rqm0AuaAcbgjhw==
X-CSE-MsgGUID: y8nsWx4uQbmQFHigcxAA+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="239295310"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:40:32 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:40:31 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:40:31 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:40:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IV38w1c22FSH3qpb9+p7Hwtj0OZFWgdQt2StD5TH+GdwAYf7985okVYKtrMvlmJb7y/c5y9zyhuJKdbeS5wr/Az9/yw32ejj/fhctDaU12ORYjr3zpWNtUqnTPf9jTICoDgA6DO3hLcyxabOou+zG3d75EpK4pg9LGw01HZWnOCHS0eRlvFQ8piNSqzfUYDo7mV2bQWgChOTaHFXUpt/IV/+s5DUtcgH2JmWK1zVv5x+9fCpFPq/VQ2X3kiJhgThb/noqjh2eBugmrKGQqBf8SeqLhEsSFdu5QYbNn89xd4Oze2CgBYvjgh8jIMT5EO2royo8+x0LOco7itoplvarw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9LXr6LPaNwR+evbP7dhFgY+3cfUkYqbMy8tFJSkficA=;
 b=gOvFLvUckkJVetAKkrTfn9evE3CsMRzqr1R1Us+fqM5921W/3gOhM+2Gi86DDpm3bX9Z9nsDYd2WipMHpe2P9xc3GPCK/0mKzl4kuJ5uaeTH1mNF0y2bFqYwSAcrPS1FGW8cwWI0RRiNf9hk6NQ+Jr/o4PvqCTw/n4f0Av9M0Qjgjby8VIKnbfBYVsdWtIUGvAyliPKufTnG/L9iNCWE1wmYlpeCdbcLUyWDnct9vkV6/QoW53kuyPI2nQDWRaCILo1tYaRPt0ki9v23sRMV7T2a0QGkNTaQlGmnV7gs6jKuPHedebAP8DE6j0/EE1Nscq9dgr4mKLsxNrZHn9s/tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 16:40:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:40:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Thread-Topic: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat
 header
Thread-Index: AQHcpOT9aGG/xRBbykOdLs98QvwxbbWR0ziAgAHNNTA=
Date: Wed, 25 Feb 2026 16:40:23 +0000
Message-ID: <DM4PR11MB6360D3D5EFB752BC46B8D02BF475A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260223171015.1035550-1-uma.shankar@intel.com>
 <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
In-Reply-To: <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7307:EE_
x-ms-office365-filtering-correlation-id: 6129a84f-a104-4f80-9cd7-08de748c926f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: gwGacdVz+sCh9+jHYHEkjwKPao7SXVeYKzIx0Z6RDYC/yd/EcS8dX7oexknP9nTonVBE0QDgr1PmmK1aV32nL/Utuik+NFEnRgxUIAakv5Nm99HLeG5MHgyDik5CnlrH9DGrrw/sC05HWpz9wz5hxXvNfz+7+D/mD1rnetC96yj+PyvHtZj82AnD4jDnQuAPH1p1lXyG/Ih2H/HDv1NlK004cqjZihkjIJLxKucCPK/ztzNeGfyPlQ6VzbMCgFlqglEMN+FsvL7Xho9QG1uRNB1//1iYn2enQhKxrbID9PqxVIMN0FCbCjbhZRayeUaQpl+Cd+o0RShGJKgk2sEBNbe2/6u5dSKEXS7wqkU0M5dlE0XJVwewOxwp/L1Mwau2/8ysjYJjpWa3pbvCkTL00Yf/Ppiohn9ig4Rv7Zd4ebq+NwshM51+iX/Ip04Hj6QztVsLPJeVlo88VRrxwtRZwhsJGjahEhctiV/V01Ivz2OEfHkvOeBkky+DJtUmaSaQFZ9/xld8bwt/esSTrSzNldG7iGyr8/IFo8gU6nTDbhVaQ6/lzcIzrhnOlKsl00lPvH6MSD2WI7set3NK9jZuhpCgOOXl6qpBRsot+/OFB7boqbaTRkHPwEwWoVVN3pRm+qWASAmTM7ySc2R2jPk7xG+ivW+6tczpVz54h39BADteyl5tfza4hWNmXm9z8Kj0To707zaKx0eal8UEChO0VZ3mlKvqng45bMXs5fc0Rap0YKUl0P66i0IFJ7zlWj3GPI413WXIJGvlo2doOboIhBkDwUya7FuEIEyxdWxveeI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0x1SXZtZVYzY0dEeFFjNnpPZjk3a2FlRlhhYm95NTliTjRUczdHcitHcHEr?=
 =?utf-8?B?Vys2ejZpSVVLakh5T3d2aEhINU9EQVllSG9wdFJWU2MzWFZBVzU2Y0tNaCsw?=
 =?utf-8?B?SmVQZ2o4SDcyclRCWDVsSklsZlV2WWFLcDZuRUxPcE9tM2c0RVc0bWc5L1pn?=
 =?utf-8?B?cy93bmMwTklkOFEzNi9LZG1MbXpseTVGeFVrTWthelZURllwcER3NEhmWUtT?=
 =?utf-8?B?TnpvaEhPTG4vRkNneVBrajdpRG5oaHkxUHI4UVBkQ2xpSGU3VHllSHJFNFVZ?=
 =?utf-8?B?WCtCemovMVRtOTd0VmVRZHZta1FYRXFqQWUxcEZUOUtkcnV1aUViZE9CdkR5?=
 =?utf-8?B?RzRhSkFnYms0UmZ6cDJmSm84WHFqTEx0azNlUVRMaGZzUlZEVWpQdmxVa3lt?=
 =?utf-8?B?ZnNQN2NJTExxeFk0WVdDU2cxWFhxS1ZxSlZoRW1WOHpUR0FaN0dqaGFGV1BU?=
 =?utf-8?B?WHQ5TzFsYjErUXROSWZBay9OM0lNaHZtMkIzRnI5VTJycFJMNDYzMUtURzl5?=
 =?utf-8?B?dVR3Rlk4VFJLMmhVMkJoVVM3V1I1VkZHU2FQeFczL0dhbjNKcDUzR3owSllR?=
 =?utf-8?B?WnFVMzltY1Q4dHpCMmMwR3ZzNmhIUExzOVVLNjZSM2oxdEdYdUVCNEhGR1pB?=
 =?utf-8?B?Vy9iVldtZTRkNy9NQ29sNmI4eTFnZmVjdW04SEJHdDNrSjBqMnJqTDk4eUMy?=
 =?utf-8?B?cm1vdUl6a041cElsVG5ZbldaRUxVTHRxQndQTVA1bExPT0VDMGFBdkRHZ0xN?=
 =?utf-8?B?eXFzemlIRk92WWpUSm1BcGlvRFpqYzB1RnZVd2NEZHdvbUxLaU9GaTR5ZDkz?=
 =?utf-8?B?WmIzRUlScGVrUjF0dUNTcFNwN25CR0svTXZuL2N3b2l1TFVGY05obzBodm9w?=
 =?utf-8?B?UmgrOWtxWUVvQnRKUzhUOWFPZlYyc2pCLytkMTVyZDdjUmNyeHFSRWl5UjNm?=
 =?utf-8?B?S2ZXMmRrRlFPaElUeTFhQysyQUg1eWt4cTU4OWRDNFVDMUxZbkRTaUNaODh6?=
 =?utf-8?B?SWJvU2xCUGVmRTJOSDh5Zm9qTGFNa2tLN1NOU1hnZkM1OXZsK0JDeGluL3hp?=
 =?utf-8?B?S09oT0srekgyWElOWDhSbW95bkI3SW5qOTU0cFdmSStKZkZ2bFZjZUZ2VzRR?=
 =?utf-8?B?bU90ZDhMalVjYnNWbmhNSllGdDlEQmZNL1k3MUkya2E0NnpFYy9BTXYyS3lI?=
 =?utf-8?B?L2xvMGJ0MWNSbjNQUHpMZmpMRm1TVmxUTC9CS3hPeEtrNytWVWd0WlUwZExn?=
 =?utf-8?B?SG5DdlVINHVIUjJkL3pxS0t1UUN4MW5IMDg4T01vLzluOSt4K2NENi92U2Jy?=
 =?utf-8?B?TEFzREFWZ3R3WWtDYjcvRHg1VHM3aFJyVDRwa0ZlaXY3NzFsUU1nOHFtbXpy?=
 =?utf-8?B?TFhNTDdQdE0zU2dGUkFwL0FoSVVoTUFJL0ZvVkk1c25rcE9rRm9GdzRwcWJP?=
 =?utf-8?B?R05Rb1QxK2ZwZkdOTk5odGFDYWNvRFNyakxjSnhFRk9lVjlFTnVTTTRaSytZ?=
 =?utf-8?B?U2xuZUI3dlltWTduSEtKaVJIRG5hM3pwelh3d1lyYmh1ejRndkNQOEFpSGxa?=
 =?utf-8?B?K3BUbVFCL0tVa2hGZnBTNy9wTVkvS0FTQllaaXh2MjdndC9YaWJjUXZzTnNh?=
 =?utf-8?B?UXE1WjF6aS83QmVGTVVhNkZ1UEh1QnNiWUtvNWZXUE8vcXlyRjJHbHZCU0dX?=
 =?utf-8?B?WEtVRzhiTHFudDRkN292bmFZd1ZXS1ZCZnU1WVFDT1lIYlJVNXdwWWFyY0h5?=
 =?utf-8?B?cGdHTW00M1NkY3h5eUQ3TnUwUVc5eHZIUWtZMVlVcXVib29DVm9GNGJaclhO?=
 =?utf-8?B?aktaTE1va3UxN0lMYnpndzVNUXVLUXltcHIxSGdNVGJnMDd5b1BtSUVoZjdT?=
 =?utf-8?B?U3Ivd2k3ZnllV0Y1d0Ftd295a3BGejY4aHRYdmJnV2xzL2VIRDIzcVBZY0Q2?=
 =?utf-8?B?Ty9NbkluUE9wampWb3pnbWFNeVRkQXc4cktzdCtOSVhJY1FuU0hJMnljS1ZR?=
 =?utf-8?B?TG56VkVTS1BQcW1iV2NNU0h6bEJLZEM1S1JtS1Y3b1Ruanh5dUFseDJzc2lW?=
 =?utf-8?B?enFLS0FyckJMZlFRT2xOclRWZXVWL1VyQmNMbFQ1YVdjbTZYUzd2UkhoeU5r?=
 =?utf-8?B?L2x4d0Y2VWs1TE9TemlZekt0NXNRU0JMdm5aaG04djg5QjAwVUtVMFVnY1ZN?=
 =?utf-8?B?TVBJNjUvTDhibDdOc3p3d3B2U01rWHloTVpUVzhxYXZTS0J4T05tMzh2WEdN?=
 =?utf-8?B?ODVpZ0JRYUJDQlZpRTIxQUFTNWl5eHA0K2huYlJ0RU03MDRoNldmcHpvTURv?=
 =?utf-8?B?NmNreEorRmwxZEl5ZEkydjVWTTM3VTFQNkdXYmRKcDRzVWkwMGxTdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6129a84f-a104-4f80-9cd7-08de748c926f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 16:40:23.3735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: onPdezJOHvF0sf+7zogSyWs8yrnLpChN9tUJCaPf/VyB+wErfFEww9vl0AEeWgzTFHOVySJhVPD9+h5wzCB7vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7307
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
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB64C19ACE4
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDI0LCAyMDI2
IDY6MzcgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1h
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS94ZS9j
b21wYXQ6IFJlbW92ZSB1bnVzZWQgaTkxNV9yZWcuaCBmcm9tIGNvbXBhdA0KPiBoZWFkZXINCj4g
DQo+IE9uIE1vbiwgMjMgRmViIDIwMjYsIFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+IHdyb3RlOg0KPiA+IERpc3BsYXkgQ29kZSBpcyBtYWRlIGluZGVwZW5kZW50IG9mIGk5MTVf
cmVnLmgsIGhlbmNlIGl0IGNhbiBiZQ0KPiA+IGRyb3BwZWQgZnJvbSBjb21wYXQgaGVhZGVyLg0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCj4gDQo+IEkgYWxyZWFkeSBzZW50IHRoZSBzYW1lIHBhdGNoIGVhcmxpZXIsIGJ1dCAqc2hy
dWcqLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQoNClB1c2hlZCB0byBkcm0teGUtbmV4dC4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQpS
ZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0veGUv
Y29tcGF0LWk5MTUtaGVhZGVycy9pOTE1X3JlZy5oIHwgNiAtLS0tLS0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDYgZGVsZXRpb25zKC0pDQo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pOTE1X3JlZy5oDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9yZWcuaA0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9yZWcuaA0K
PiA+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDg2MTllYzAxNWFkNC4uMDAw
MDAwMDAwMDAwDQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRl
cnMvaTkxNV9yZWcuaA0KPiA+ICsrKyAvZGV2L251bGwNCj4gPiBAQCAtMSw2ICswLDAgQEANCj4g
PiAtLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+IC0vKg0KPiA+IC0gKiBD
b3B5cmlnaHQgwqkgMjAyMyBJbnRlbCBDb3Jwb3JhdGlvbg0KPiA+IC0gKi8NCj4gPiAtDQo+ID4g
LSNpbmNsdWRlICIuLi8uLi9pOTE1L2k5MTVfcmVnLmgiDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3Vs
YSwgSW50ZWwNCg==
