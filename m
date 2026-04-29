Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N1QBg488mlypAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:12:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC54980C6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 19:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CAD10F0CE;
	Wed, 29 Apr 2026 17:12:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWaUx2lg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DBC589358;
 Wed, 29 Apr 2026 17:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777482758; x=1809018758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=01PUSn+pEMLDBgkWoCrWnOppn1q6VPfbFsbJ31c196k=;
 b=EWaUx2lgn74yVh3LpWCECS0GHfN3Rx4YiZjXSY5W/cV2JUkM4wvAwsIk
 gtShHzCgeWGJv81PqswOpL3aCkyYKeAx5CZqNnv8ToHNi9T3rAOmJY/h3
 xMIjjqbPkyCvFIfxawgt4MzXCimKcPaZJO2x6Cx+2lK8/RioY0soCcgZg
 yC7vtNdSp+WAI+VFnyRgyHTUUxmL4oKH/2cAQW572rh+KJ1aiiNRpeKdC
 XhTi5blurfYqEsg1tCaxJKUfQLQ/N6yKOyZo0mhSB+9DT3gT7HWzHd2Gb
 z6cTS2xTNHYgAG7lWC3uhLfGWYyukpgNOoVRAYTbNRst4Yuc3DQZnpJ0X A==;
X-CSE-ConnectionGUID: SmhLU9BOQyWR7jLlMf3HrQ==
X-CSE-MsgGUID: Y99OFCV0Qp+2ZUZHi8LKeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="95983279"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="95983279"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:12:38 -0700
X-CSE-ConnectionGUID: tAeN0wkDTPyy6H1wk6FNcg==
X-CSE-MsgGUID: 8rUuccGTTWOfipXc0YFsrQ==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 10:12:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:12:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 10:12:33 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 10:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=doYYfx02ctcu2HtzdrQOTarTp2mEsBjXJnNaS4CFOK+kab8XiJPlzujBa/EFaPdJmV5F+33Wr69OPnTQ8fORlvPWAMyPXCvKWKhSKtwkd7+XMRz4XOLgVepwRfT7o66UoM98+2vkKLgLADr2f28vISKgeK5EcQEJ1zG2x2qHKv1bT3b+xABjZyeIF12eoR9DgUUdQ1lj8YOIdZZv6oZ2UjQP1h8FyuTyU8o6JmhkPeb5H2aAJne0sN086utQPydKRoYKTLPm1Dq0tHgULc/skGc2gF8jnPeg2XxZbejfOV3YXp8+eDK38BADBpyL+mrQs2QzwGGbwEXlejPSN2szvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IGBYzeyf7LYQc9GoiPpCgcOB7he1DH/x0Cx9wX7qE3E=;
 b=PrSOkQUuihAjjP7oUpREaexLlSlLIgXWE1VIKiyFUJSztQTPBuO3wzp+Ca8Y9zBa4cdnTHPoYct+xNZJVdn/5WmMZ7rNCReUEJttq34m9ADrOxAIkVAi+Cu+CuDv2T6oTKeuikJvybPe4i1Z47qRZrzjzsOKZPtGR1ZuLrFtxHjYdHQD/vSiVybXGrwu/lbmhdfYiZzriH2RAqcGRQFPXDk8HCeoYpQOO0AVeQ4u4ll0Dp33/CAgveCrWNqIrK+2Ftw17gF2MIFQnlzYeKoLWsTinuv3chMMfnhW2iir70AHVI74ejy9E2ZBvbw6CXD+sPBAZXltVxHDlZng3Y+EfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8)
 by DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.20; Wed, 29 Apr 2026 17:12:30 +0000
Received: from BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4]) by BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4%3]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 17:12:29 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Topic: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
 crtc_enable
Thread-Index: AQHc15B/+byiPZCep0OuclP28IqYfLX2RkVg
Date: Wed, 29 Apr 2026 17:12:29 +0000
Message-ID: <BL1PR11MB6050830351318309AFDA45C8E7342@BL1PR11MB6050.namprd11.prod.outlook.com>
References: <20260429042650.3335718-1-suraj.kandpal@intel.com>
In-Reply-To: <20260429042650.3335718-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB6050:EE_|DS7PR11MB7807:EE_
x-ms-office365-filtering-correlation-id: bcc18955-98bf-4e76-d128-08dea6127eac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: rQeiBX3GF6vW2q8Jth+8PrMvIGdzdJW4ajI1lY3CIoBhrWA920wl9cZ22brVExC8NDLO3pnvdZzGEWwd3Wo3OVJfbKiPZmu+DlB2KoUulNUOWGnvT/V+5o0e4e6PgV+LZKA/5I+xfg+uxZWWlbb5RdcrChzUIwD3Zu30dW94oyHKbUfushcmFicYIHCYx6bDWTN3+GPWOaQeZ7Lgw7Rw9O+D33tWzDEQqz+xlk4HO6jvnDFXZvAtgfsrKLZK/jqQQSLRYf7ueTHodaSTUOGYpLaK966VQjcDEFjTMfHUPEOsqAPxdnSeO2KaX5l02RQa8UR2u4XhpO6h+CC8ENPHr13Kd5YGCUDCebqW05BwJGpYebsgvNt4P+30JhYMDi2cOAtLz/h7wAt36A9tMeahiwt4PS5Oc6d2VD8ytExyvUVwgR6oZ7STeD5Pc9oTFb1vFDdwkHLRDKxbP51g4qRi1jdLoZZ8E8EU2lZ6pmxkiMU93SYTis1MzPSIgsCk5WbChhaiIhIJEfjrnkBi130/xtMUtF6OufaF2Y9nbB4RTwg+NVZ9yBfVJyE2pcCSE/XTGPkY0Udi0Wny/YjiBdOsLs/vw1VoLZdSdMgMc8Vuc/Fo+FunzgSxtYO1zutF4NgMDfwyq6+W36b4HZGECneyzDO4+IHbBhVCZHJ1us49tlb+yVsM6A7MJP6bBNNkTh95+TCVoGl07AzAQ07EoQ9xPDkS6/qsg3ZpV3/3iUEDBX++TLS0wN7PPvq711xz9RzUe+siobzOYRt/6jUW3YZR0iJFuqaWk3s+k44iNkeptkU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6050.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l39VeB+6BYtGgo1KvkMPeiDxwTp2DcWt1Ci4uvXsfPTXMABVvhitc+00nEsW?=
 =?us-ascii?Q?+K7ILNvjESjrDcM3cOijly/AxhfDM76CpTkktIRR2OUsw4J0XLXe3TuIh3Mh?=
 =?us-ascii?Q?t2H+iCiZRcUskmyIHO9W2J7wT7PZk3QQMpL/hDf1h5ky0Vpvrzgw8PsA3MbJ?=
 =?us-ascii?Q?ulbY7R1TjwXvfiCXakS0e7oERoa1gw9bYE59i85712ebcP36P1FSLZk9zNVY?=
 =?us-ascii?Q?tx5qPY+dqHW8+0+9bEjZsNhpMWGaOl8dpgLnjScWMke2Jvlq9GMmZBqWTrR1?=
 =?us-ascii?Q?GCTWqNlT9iioBuVAWkWHiATLa4p9NoGWiL9CyPNd/r41IexRfyU1jqWIIZ6m?=
 =?us-ascii?Q?LOT3+dX66Dwo2EvPnR6CC5LT7ndw6NOulQ1+hiPCJ2pmCTAgcqZzrwwFWerc?=
 =?us-ascii?Q?CigQJ3h86XaDA/3tbjICoGLQcQDxa2ww5jZeAr8ablESOb4c2kqm2a788ljG?=
 =?us-ascii?Q?BOddGGDO3ju86DhC4yTGNPbpvRJ91Hc/N6Q1xjc5ouvyAOdRZSabOgmurjr+?=
 =?us-ascii?Q?Xtw3zooolbYTTH19hDpRKZOC8SzXTBILEXIGARXGLhUT6GpHZbqCRADJ3iig?=
 =?us-ascii?Q?il5fbV7lvqmK/0h2w/Ra8I3DJXi/wHxRyyRogszt+yXiZjeCpkfWb3i2KngL?=
 =?us-ascii?Q?Toh1cLGAeT+NnwPsDhC0Q0Q0ecxbwm7WGjTrvre/hodIRlfK0LMRhp9W2ziM?=
 =?us-ascii?Q?RuxU62gPwhQo3GOUbGU30NvuUK+5FluQ6FJxTb4fRBgu9B0dOKZfhwXfVBUW?=
 =?us-ascii?Q?k9HII4nlJaGtaWiL6eransfk+k+a8XIi7nb8+ODsM2kwkhSsQ0ACs7FuJ0xH?=
 =?us-ascii?Q?NC+2+b7mw5AcCCPWlmut7TCV1r2XsTRnfTz1ZieZosXq7REuPeMn8F+x/nKm?=
 =?us-ascii?Q?CD3PI0I03/aYfwtBubZK7NEq8mj//sXoWYRA5m9AGZFp/oUo+G0RAQNgk+tW?=
 =?us-ascii?Q?gpKBEE5Ixw38yI6+Cg3G5ul+bji0Dmio0bOXbak4/8KL2lK8OtE/KXW3oZP6?=
 =?us-ascii?Q?1faotJgPrHmHRnmIBTynQ9BnDd2zlaK36SJvZ1qD5ulQ5pWwwy+mjI47nc9y?=
 =?us-ascii?Q?GkeMp199OYN78yZHZ9+CBqn4fyezNHIY2aHSnQevCyLTsT5lEgRoBxJjUAts?=
 =?us-ascii?Q?yO2YQ8n97zjpTI0jisyeRUXoYiLJzJ14RFgyAieGa7H3iK+nRRzgZp0v8eom?=
 =?us-ascii?Q?WJKlbAsAbgCM15LCNjkqBxKetHF1Nd/dJG2s75txGKf0UQ7L4Ms2qQTuehxw?=
 =?us-ascii?Q?XoRr7/GQdATFO63z3Co8IMc08RRi0fAxI2xBr66JN8On3dRAB4sIkxk4cTHF?=
 =?us-ascii?Q?2C7c1oXVxrKVtljCVaFW8XI6uvD+PwtqvwEtpqnDmaoT54cgAvp02z72iCTm?=
 =?us-ascii?Q?KtH+6v7dS3Mh+1W+1vrz2hxJoh0lrWYjvuGKyZ8bQbd/+De7acPtkq1FLgCm?=
 =?us-ascii?Q?iciS62Tng96BKd/xjyNJTD0f5D5+jzD5upOf7x1vUwpvvfuAy2JDi5lpiX44?=
 =?us-ascii?Q?r2DRtzwwEOs7EyKAZaUYjwv9/+BTnjAQI6wAizrmAYf6rEge50UEw8c/MWtE?=
 =?us-ascii?Q?5Wm3/z3/0SrKwFWFqzTb+/z4SkOAvArYhl9XL3L76yxRn5r5mQn1mJ/9kVur?=
 =?us-ascii?Q?JG4tw2iU6ULkDDfTost6ez+QDGsPqP9TlMjCGdcrMX3jgeUpski/lJlQrMPt?=
 =?us-ascii?Q?9wV3xd7TvIcFZskH8ZJnZ4gw9vgq7tqWmbd6bQGp1eWNw83qc9d/04bWlCBs?=
 =?us-ascii?Q?f/IzB6APoA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ls/hlZIHywgSbh6Vm24F4eZSD/MEVWGH//eIQQpvaTto86urQ4Ijt8P2Af8vh3yXDlCCjBeamtFxaVw+d+HWwOX/iqnk/+/+V0rh+so7qrKHSAhtLOylpfvzVsFFuGoe50wN+S6nxW9aPVn0udrgFoC5Ntz7Wm7BFWbNS5A/FvLeINc9iF4c8sbh00nICF5kbDS/dqC1AQMcyQyranKZ6MtodiNqkKWLw5Lv7dJuzr+FoItA7bXKtKaLnJgNu1nTcIjTcZqQ73+czXX4WQYSKO3Rz3cXGOC82DiIYt85TdMDM4597xHChU9qYKqN7K+utDe8tGF5K7/IOXptzN72QQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6050.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc18955-98bf-4e76-d128-08dea6127eac
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 17:12:29.7152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5dJo820w2U079IeAoUbdxT3B4Y5XCeJaoQFflVFrFTw70rU6XqQuHyHNg88oOCYwTJhaTwkxaGOFebrlUENh/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
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
X-Rspamd-Queue-Id: 8EEC54980C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kms_rotation_crc:email,lists.freedesktop.org:email,BL1PR11MB6050.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Suraj,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Wednesday, April 29, 2026 9:57 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/display: Avoid stale PIPE_SCANLINE values after
> crtc_enable
>=20
> When a CRTC is moved to a different transcoder (e.g. on DP-MST stream
> allocation), PIPE_SCANLINE and PIPE_FRMCNT can return values latched from
> the previous transcoder/mode for up to one vblank period after the new
> pipe is enabled. The vblank evasion code in
> intel_pipe_update_start()/end() then samples a stale or boundary scanline
> and the frame counter ticks during the critical section, producing diagno=
stic
> errors of the form:

The stale PIPE_SCANLINE issue happens only when the transcoder changes,=20
but the vblank wait is added for every crtc_enable. Since intel_enable_crtc=
()=20
already has access to the old and new states, can we add the wait only when=
=20
the transcoder changes? This would avoid an extra frame delay in normal cas=
es.

Regards,
Pranay

>=20
>   [243.348405] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
> pipe B (start=3D300 end=3D301) time 61 us, min 2128, max 2161, scanline s=
tart
> 1200, end 2165
>   [248.536260] xe 0000:00:02.0: [drm] *ERROR* Atomic update failure on
> pipe B (start=3D561 end=3D562) time 61 us, min 2128, max 2161, scanline s=
tart
> 2162, end 2167
>=20
> Here "scanline start 1200" is the vblank_start of a previously programmed
> mode on a different transcoder, while "2162" is the current mode's
> vblank_start sampled before any real frame has been emitted.
> Both indicate a stale read rather than a real evasion miss.
>=20
> Wait for one vblank after crtc_enable() to give the new transcoder a chan=
ce
> to start producing live PIPE_SCANLINE/FRMCNT values before any
> subsequent atomic commit enters the vblank evasion section. This adds at
> most one frame of latency on modeset, which is invisible to users.
>=20
> Reproduced with igt@kms_rotation_crc@sprite-rotation-180 on a DP-MST
> sink; with this patch the failures no longer occur.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 674a4ece6d0f..8ebd0df25c11 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6741,6 +6741,8 @@ static void intel_enable_crtc(struct
> intel_atomic_state *state,
>=20
>  	display->funcs.display->crtc_enable(state, crtc);
>=20
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
>  	/* vblanks work again, re-enable pipe CRC. */
>  	intel_crtc_enable_pipe_crc(crtc);
>  }
> --
> 2.34.1

