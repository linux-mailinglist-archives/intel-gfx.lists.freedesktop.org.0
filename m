Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDSHD0jun2nYewQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 07:55:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBDB1A1785
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 07:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D189110E869;
	Thu, 26 Feb 2026 06:55:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QyIyb6Yg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3537B10E0F1;
 Thu, 26 Feb 2026 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772088899; x=1803624899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kM6R6O8DQw7xIeh6fiY4vxp+DkxpnnERP2uA6YMC7co=;
 b=QyIyb6Yg4gYnibg0AG1G0KkSk+Ux1MhkLT26DaXOixdhEVlJgYuFEXe9
 +rL0DkILIbMtpvAsAZBtw7JYz3UWpSS/JsIksCZQ/zsePN1lcblUkPiHX
 yxdm4VUqBWMLIyMlGzmAregF+V++TDbOWO/jB1bCOQQlw3FEn7az2a+oB
 0uky7ipVBFuHlsFMaUndCkZtmidl4ldGnfkcAk0a/9c9GfGEqKb4tOPgU
 FzKPme8HMbcTqdhoyxHTWpzmalovLYXqYONHr/RznnKfmFTx0Mu7sP+lK
 MgJ/8xAWFwEgGJxUZJL7s63ZC0fvw6DIpESgBueYEP+EjGBC1ckEp+Qfp w==;
X-CSE-ConnectionGUID: 7nMZYIRySVK9WX8v4Pf0DQ==
X-CSE-MsgGUID: AisaoVVmRQiZ3o21bC7KjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73184640"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="73184640"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 22:54:59 -0800
X-CSE-ConnectionGUID: eJhyMjD4R92yndl4NRWOyw==
X-CSE-MsgGUID: cV4gr+r0QBmdjouLDraTWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="216365025"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 22:54:59 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Feb 2026 22:54:58 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Feb 2026 22:54:58 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 22:54:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cVtQ9ysZFxuI+CrWLx4kDCHVxszlMeEI1VIFaKLUEUPMawdwbQaueY2Rz4wSg01R2RSRjajfcgy7vK5J140ssn7tGJfYeU8gKN1NZ1QY6d2YtjA/zk3sl/bWJddJGZu8m26NV7xm3nPa673qpAx9pJFAdBUsDArDTEzZ9FqEbZSiFLaSvxCAd0vSYdqPiX3+0KkjR7y2oBFUiG6N4g0tzCim9ctc1bHgv/oUNmRF4zMTyKjj0Aw2C+9DsOsrvO8z+6vsEIt99ffAyEEW15RA4MR7L2H8XDVEAKWvHl8Cqp1p6Zyyd4JnggZPfJbtdLrAIMUCbF0HtdqRok22kKIMRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kM6R6O8DQw7xIeh6fiY4vxp+DkxpnnERP2uA6YMC7co=;
 b=xzK1Q5Pvig/frh1u7qt+6i3Jn9ni8v7dOqK7a7PJLsJPj4zfhpD4/S/ZsQ9XqmpOD483S3fmNua4EOvgR/Qum1mXQ3AxX3T1JHp3PdK762Pd10LGQWM1ZBCtPxqL2y9tjK79sgJJUb9KX3CCOKu/NtDUWvKRshXlFPaH4DJLlaE7J8+N1k0WHyC+KReCYnoyrUByvTmCrzFRVqaPnCNx0KkGVXK6b0Ce1lDc8avXHb5NMd/o13LNehZTn1PxF7/ckdF8+qfWCyJDzMyGXBU0kkeY6unHQA26zvutercCdXgxgU/N+jBq1O1zSAAqQHWRQtJ8wKcHGOU68Yq1icS/cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB6865.namprd11.prod.outlook.com (2603:10b6:930:5f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.17; Thu, 26 Feb 2026 06:54:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 06:54:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?=
 <thomas.hellstrom@linux.intel.com>, "Brost, Matthew"
 <matthew.brost@intel.com>
Subject: RE: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Thread-Topic: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat
 header
Thread-Index: AQHcpOT9aGG/xRBbykOdLs98QvwxbbWR0ziAgAHNNTCAABIuAIAAB/eAgADTWhA=
Date: Thu, 26 Feb 2026 06:54:55 +0000
Message-ID: <DM4PR11MB63609181C06EA2208BD6B33CF472A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260223171015.1035550-1-uma.shankar@intel.com>
 <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
 <DM4PR11MB6360D3D5EFB752BC46B8D02BF475A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <20260225174306.GQ4694@mdroper-desk1.amr.corp.intel.com>
 <09eb82885835ecea2f60c9eaba15bf58c13fb32e@intel.com>
In-Reply-To: <09eb82885835ecea2f60c9eaba15bf58c13fb32e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB6865:EE_
x-ms-office365-filtering-correlation-id: d52bd9df-12fd-42a2-6579-08de7503f348
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: 3UMmqJTBPO0S9ZvzJVaDEjyO1JqZbsx30YabBULReZb+NjfzNCtdjxw3JtwTIcN+dDCQ0Eyh78lQskjCStW8MhT3wAaxjz6E1uQGJNiG4UbODooGA8H3g+AIa/mECYvxhbPpT/BtBMwNZt7jvTuW5i9H1D95qxcnUcMcNdZUF/huzLF/0xtcPWVJnrklFuy4IvQ0Bc+eCEMtKICf9lrRjR/BAqj7XDfYvLDEOOd2fylAu51XZsmH4WEeJXahOHxId+GdtPmH4P/Llqjnenjv7hoRGAGJfbjyJBqfScPtX1/PJ/mwNh7CT6E3ix6O/6SOBC7+UhDSpxCXJgGIzhxdnJZnZNuuTK/DpCAF/ARSl0N7LQXbt66ozFCYpo5x79oqf2hiikZgvNPiH8PXaZ7G/z9qU5rXf2bwF6Mmi9uBCEK+oiPFeV9KN0ozXOaDiRd2U5dtZXGBleWVpjev7FLHh2cryAw1jEG5rFEtEzYgChY4dWInfcfZlaaCAirNGHt9QSdhTKEYiL6NPL0mENSCV99WLG59vjCDLtZWXtuY59xvHTQ7sA3IcYYRWiWeBSXbwZmiGlUsv8TYyHD9Q0WbM9rdWrYCz99IElHOhwpq5W8dYpi9HQJzhnbYsMQvJIvp9q7a5PDt2RG3uZp3Wq7jEwAfNclQSQNUv0tUtnZhvwwtj5HWuRBII4RD+C/YVunGQa1j/Lv3O+PgFO6akDiiYP6ClOBMsd+j75JHNOn3GTluq/GON2TXn3tuaPqhUb5Ca+0t7WMXAlCWUV0GDntN9oc3wzJcaZOLVRua0FmjRQc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWYxeXFxaWtLQVhMaHRKcnJwR1VpYzIyZEQwcmh5Z3hXODVNT3piSklkbWdU?=
 =?utf-8?B?M0dXWTFsaUxQYmxRTkt0QzFWR1JrUG9TQUVhQVBZQk4vdDhPbmYrTWg5R0N1?=
 =?utf-8?B?OE8wa0hHaitOcGxNbkN2Z0U4MkpxaXpXeENacEpTZk9LZW9rVlZDRkZJV3h2?=
 =?utf-8?B?V25RaFpvd0crR0tPSC9VRUlsT3VLSlo1Q2hDbjJwV1BFNTJnVzhaL2ZuRG5J?=
 =?utf-8?B?OTExY1ZYVmJQaUZEZUZ5WUxpWndVdDhaSzYrZFh2Y09BSjZHdDN6R1lOeERx?=
 =?utf-8?B?N1hKajR4Sys1eDRNbzg3SjhIa0N6LzBqOCtTTUxjdTN4dWljMUhEeldrU0x5?=
 =?utf-8?B?NVRVbHJxT242QjNNSlJqMHUwK0pJS1hUZCtQbFdwc3V1M0FIaEU1VFVlaTFU?=
 =?utf-8?B?YXFTdWR2VjRacUsyblBjTjdaZ2JnQUw3Tm56ZlR6aVRLVFU3RVhLWjc3cDFw?=
 =?utf-8?B?SUhhNUJXZDQ5R2RCOWNlVHRSemV0aXIybUZTK09YOHdXSXgvM0Q5aDVORzI0?=
 =?utf-8?B?aUtrYS9LMVRFbVRQSU1vZi9idjNUUWJmNjJqZ3dpWmpid2RiNnRWdkxWTHVi?=
 =?utf-8?B?eXJFTlovNFp0UmhlQWRkYUN0V3ZsMVQ4NWtXcmxZSWprVFVzL21KUHpVZUNC?=
 =?utf-8?B?SWJuaUVBeTYxZTVnMEpHRWI1d0tkbWtqcjVHSjc4QVU3NVJIdkxIL3hQQ2Zj?=
 =?utf-8?B?ckVWODNaa243Nm9oWHVWZldxVFNMZjdkcnhxYWNsVW5zMk9GcVYzalBpYi9J?=
 =?utf-8?B?dzRrcVBoU25hN0RBdjcxZmRPNC9IYmFZQk5FMktyUHYrN0NlZll1Tk9XWmFT?=
 =?utf-8?B?elZQeTNlWDI4OEp1d2Jqa29waHdVcHpsazh5M0lXMG12azM0RDhPVUFJSmZ3?=
 =?utf-8?B?eWM4K3E1RER0VzZpMWJPb3pVd0JDQkV0cEdqaVk2ZFRsY05iRHFyMGZvZUh2?=
 =?utf-8?B?OWJkdnZ4T2JXUmFBWU5sQXJvdDNYU1R0bjlla0hWbGY3a1pxZ1IvMVdtSEQx?=
 =?utf-8?B?WDBQTy9JTTh2Qk5iL2IzeENKTHFFbXI2a3VieWpSMnlFamtPODJMZ0tKVkJL?=
 =?utf-8?B?T3hOZ2tNd0VjbDEyMjRFOGdLRkRPalpTMmJnemxzK3N3VHFvby9lemE1RUN2?=
 =?utf-8?B?MStsWjFZWE90dGVERlYzK1R0WkNlVFBzd1pabkJ3UXN0Q3ZDb053REZsR0tL?=
 =?utf-8?B?VC9NRFNNNVZvVTRtNXF1UFFBbFB6MVhGbEw2WTdic2llNnlXT001N0FtRDVL?=
 =?utf-8?B?cHJaQStETHVLTDhXTHQrUFQ2UG45c1Ayd2hyZUt4dVdienNZbHVSZDB4NGc2?=
 =?utf-8?B?MzhBbGdEWG9LdnRUUTEwVmE3RUorZ3lna2QxQkltRVNiVjVjK1J6UjdoRkJr?=
 =?utf-8?B?V2p5WVBOTE5wbGFseUhUYUZ5eFV6LzByRzBzMkQ2UFNqRmMra050QndYSnJT?=
 =?utf-8?B?cUpxTHU1Nm5HalY1THVTTlJvS3dDbEF4RHByUE9mdmJEaFFrRTlGeDBFYzUx?=
 =?utf-8?B?SFQ2MFNuem1YY2RhVGRDblViQjEvKy9iMDVjVTFvT3lQcmRaZ3B4aWFxU3BR?=
 =?utf-8?B?azN6dzZPNFkvelVIQ2xtaEowNjMwcVczSE80TEFLN0xjWUlXSVlRc1hKZkc3?=
 =?utf-8?B?N2tiM1pyOEtSOE9YUFM3VU1QUk1uTzNpOERvUmZNaVlMUjBhNDZZOU9GWHFM?=
 =?utf-8?B?L2tXRUVnZHdXMllLS084S3pKV091UGxuOStTRnVwMFlEc0xjeVhQR2VCY3Jo?=
 =?utf-8?B?L2lzeEV4MFo0OUZ6SVExRFdPOTlYZUd2UGtzemNhT1RrN1NQMEl0QXd2M29t?=
 =?utf-8?B?bzhXNU12Z09KTWhaMS9vRkhvSENhQ0FGOEticVV2ZGFKcHpUbWRBc09pR0JT?=
 =?utf-8?B?M1FsOERwYzk4dTNEWndyaDJZVnRxYys2ZDB0UkxnUU1WT3IwQ3lZUHIram0v?=
 =?utf-8?B?c1owMHFRNnVKOXlYYkpVT1NBRzNWVFlOOXRiMGd4RkdpencxdWw0S3FaeDAz?=
 =?utf-8?B?Qmp3SE10aDFRTUpOdTlyLzNucVRHRGV5NTgySWthM0RKelFBR0phTldCSkhD?=
 =?utf-8?B?bTNQQ0JLNzV6cTFmNERkRW84RXZqTWVwM3pVZWMrdzhKb3FOUE1Sbzg5N2NR?=
 =?utf-8?B?V2ZiMk1GY2VBLzRpMFYwa3dob0p2UkRrTEloK1g0YjhLcE1pU2JvdGJtQXBC?=
 =?utf-8?B?ZlJFSXMyQlluemJPalJmNHJOMFVZcWJ4KzJOMTEvRDF3SlJoN2FsL0hKeDNR?=
 =?utf-8?B?Yld4TXM1ZmhIVEliV0NZM0VRSFFpVnRBMlBaZFJJYXgvQncvcklxV2hjTXFo?=
 =?utf-8?B?bE14WGZVczFlSFBtOHgyODY0b3dRa0JTVSs1NGd1UDd5b1lETFR2UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d52bd9df-12fd-42a2-6579-08de7503f348
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 06:54:55.9626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4zMp4RRo5+PglSetIjLAXa6fa2QVTQIg2iAUb2OBu105tMueFlz56IWDpzvLGMUp72YN8/Wr8IfiynhqBg4XOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6865
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1FBDB1A1785
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMjUsIDIw
MjYgMTE6NDIgUE0NCj4gVG86IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+OyBTaGFua2FyLCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gQ2M6IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IFZpdmksIFJvZHJpZ28gPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+OyBUaG9tYXMNCj4gSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+OyBCcm9zdCwgTWF0dGhldw0KPiA8bWF0dGhldy5icm9zdEBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS94ZS9jb21wYXQ6IFJlbW92ZSB1
bnVzZWQgaTkxNV9yZWcuaCBmcm9tIGNvbXBhdA0KPiBoZWFkZXINCj4gDQo+IE9uIFdlZCwgMjUg
RmViIDIwMjYsIE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+IHdyb3RlOg0K
PiA+IE9uIFdlZCwgRmViIDI1LCAyMDI2IGF0IDA0OjQwOjIzUE0gKzAwMDAsIFNoYW5rYXIsIFVt
YSB3cm90ZToNCj4gPj4gUHVzaGVkIHRvIGRybS14ZS1uZXh0LiBUaGFua3MgZm9yIHRoZSByZXZp
ZXcuDQo+ID4NCj4gPiBFdmVuIHRob3VnaCB0aGlzIGlzIGFuIFhlIHBhdGNoIGl0IG1pZ2h0IGhh
dmUgYmVlbiBiZXR0ZXIgdG8gc2VuZCB0aGlzDQo+ID4gb25lIHRocm91Z2ggZHJtLWludGVsLW5l
eHQgcmF0aGVyIHRoYW4gZHJtLXhlLW5leHQgc2luY2UgZHJtLXhlLW5leHQNCj4gPiBkb2Vzbid0
IGhhdmUgdGhlIHByZXJlcXVpc2l0ZSBkaXNwbGF5IHBhdGNoZXMgeWV0IHRvIG1ha2UgdGhpcyBo
ZWFkZXINCj4gPiByZW1vdmFsIHBvc3NpYmxlLiAgU28gYXQgdGhlIG1vbWVudCB0aGUgYnVpbGQg
b2YgZHJtLXhlLW5leHQgaXMgYnJva2VuLg0KPiA+IE5vdCBhIGh1Z2UgaXNzdWUgc2luY2UgZHJt
LXRpcCBpcyBmaW5lLCBhbmQgZHJtLXhlLW5leHQgd2lsbCBsaWtlbHkgYmUNCj4gPiBmaXhlZCBz
b29uIHdoZW5ldmVyIGEgYmFja21lcmdlIGhhcHBlbnMsIGJ1dCBJIGZpZ3VyZWQgSSBzaG91bGQg
cG9pbnQNCj4gPiBpdCBvdXQuDQoNCkkgZGlkIGNvbXBpbGUgY2hlY2sgYmVmb3JlIG1lcmdlIGJ1
dCBzb21laG93IGhhZCBhIGNvbmZpZyB3aXRoIHhlIGJ1aWxkIGRpc2FibGVkIChmYWNlIHBhbG0g
4pi5KS4NClRoYW5rcyBNYXR0IGZvciBwb2ludGluZyB0aGlzIG91dC4NCg0KPiBPbiB0aGUgY29u
dHJhcnksIEkgdGhpbmsgaXQgaXMgYW4gaXNzdWUgdGhhdCB3YXJyYW50cyBhIHJldmVydC4NCj4g
DQo+IEl0J3MgYSBoYXJkIHJlcXVpcmVtZW50IHRoYXQgY29tbWl0dGVycyAqYWx3YXlzKiBidWls
ZCB0aGUgYnJhbmNoIHRoZXkgYXBwbHkNCj4gcGF0Y2hlcyB0byBiZWZvcmUgcHVzaGluZywgbm8g
ZXhjZXB0aW9ucy4gQ0kgZG9lc24ndCBndWFyYW50ZWUgdGhhdCBhdCBhbGwuDQo+IA0KPiBXaXRo
IHRoZSBidWlsZCBhbHJlYWR5IGJyb2tlbiwgeW91IGNhbid0IGRvIHRoYXQsIGFuZCBtb3JlIGJy
ZWFrYWdlIGNhbiBzbGlwIGluDQo+IHVudGlsIGl0J3MgZml4ZWQuDQo+IA0KPiBJdCdsbCB0YWtl
IGEgZHJtLWludGVsLW5leHQgcHVsbCByZXF1ZXN0IHRvIGRybS1uZXh0LCBhbmQgdGhlbiBhIGRy
bS1uZXh0IGJhY2ttZXJnZQ0KPiB0byBkcm0teGUtbmV4dCB0byBmaXggdGhpcywgYW5kIHdlIGRv
bid0IGdlbmVyYWxseSB3YW50IHRvIHJ1c2ggdGhhdCB0byBob3RmaXggYnVpbGQNCj4gaXNzdWVz
IGxpa2UgdGhpcy4gVGhlIGJ1aWxkIGZhaWx1cmUNCj4gKmJlZm9yZSogcHVzaGluZyBpcyBhbiBp
bmRpY2F0aW9uIGEgYmFja21lcmdlIG1pZ2h0IGJlIG5lZWRlZCwgYW5kIHRoYXQncyB0aGUNCj4g
bm9ybWFsIG9yZGVyIG9mIHRoaW5ncy4NCg0KVGhhbmtzIEphbmksIHNoYWxsIEkgc2VuZCBhIHJl
dmVydCBvbiBkcm0teGUtbmV4dCBhbmQgcHVzaCB0aHJvdWdoIGRybS1pbnRlbC1uZXh0IGluc3Rl
YWQgPw0KQXBvbG9naWVzIGZvciB0aGUgbm9pc2Ugb24gdGhpcy4NCg0KUmVnYXJkcywNClVtYSBT
aGFua2FyDQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxh
LCBJbnRlbA0K
