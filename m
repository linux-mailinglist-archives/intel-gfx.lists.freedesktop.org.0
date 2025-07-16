Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3926B0773B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 15:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAD010E7BE;
	Wed, 16 Jul 2025 13:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="morhRxnn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9BB910E399;
 Wed, 16 Jul 2025 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752673559; x=1784209559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H7DPT3nDublr1/btwF1BZ6fWPbkkPInX9Xl7wFlXpDE=;
 b=morhRxnnU76zjXpEpYWOGgpE0ls0n6kUh86nKCBiVCLj09j6w/9Rs+06
 xHYqNr45f2Ctxb5Mwenx4d63p+oyz3EPO3Z2VU8noiiDzbfXHr+SKRfFS
 q+pBvtHEV+KbfA3sy2BG19lPv/Fu6AhjWye/nLWM/BEW8724TgdQf+jP3
 Gui/oRSQjcc4iFekT86WDMMoTrEWU8wdizBvhd4voWeWTCKFtP2istNEA
 fUui9mDlJQtEw9BDhR2EAaeDgSrfXHYhoPMNOyHjMrNG0eVzaAVE6FMUY
 eUgn81/+eIJvRrenVdnNrU5vDdZWUwRbl1RRkcl02v9GZq2iQL2/hRAxP g==;
X-CSE-ConnectionGUID: 4D7U92goSGWI3fSpaKCkBg==
X-CSE-MsgGUID: n+SIQua9QqSlhFO5e7HEVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="80371558"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="80371558"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:45:59 -0700
X-CSE-ConnectionGUID: TcwJXE4gSgScmunAOt0q1Q==
X-CSE-MsgGUID: O0qcAzajQ6iLui9H6EfdBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="158063270"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 06:45:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 06:45:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 06:45:58 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.82)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 06:45:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XthjhFn2CiXta87/6WVecv/sdbUiXZTBhKS6XRb4P+xqJqSIHFHWwbCSIkxpd/Q639SSwkbiwY63Gpvm686d9sruRPoavue5zGJmyVquD8nYpmVt/s89ztzoa3FgrIYiaSpbCNbs4r3iebr1//aftgtywgmdz+S0a38t13rnsZNS3TvwwlyvSEI7L0vvHQ06o5nqq5g2lQCOAA4p90XuSwIyfsGX9W7mt88tqSgoeDsXe6+5p4BAhQowivY+CMipbU/+h42TJR0HS22bg9v44dWR+y2jSBuZdUA1RQOg5vfZyezzE+9v2OIPAoppu3B2mRcZnrcD6ZrtQrML86ofGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btPENuqhQh6HFEPo74IMClzhtyD2ZevhB06C6LZj0+k=;
 b=RVKWY7GxNk6bBcc6QN1Sao2sSqbGaqWcZhj7fW7AMToxgIPir2HYDiwaW7W4SCkvv/3V0JQeQUCpk8DCigcmisjZs8akLW2UJle9Aqddy9Qoy5ignKlo5p9cOvixrL9+VX4moKzagbsIsbyIJlsueMP4F+8Hsklweox7tOaiuIWSgLNM++PbeuJwFphS8sSngxLLSenXoEFx3rWVW7CdlnmsS2oP2xdYSiM/OUFyjNuHOCdI66+DmdXvH0/ScgOrrx0ddpkg9oP0ZkSF87dxGPXJQktDGcrdp92xy2vwvXkbUpxnz54xTzjQpZWM+HIX9Y9VkF6kklM91o462tS9+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB8494.namprd11.prod.outlook.com (2603:10b6:610:1ae::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.33; Wed, 16 Jul
 2025 13:45:56 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 13:45:56 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 3/4] drm/i915/vrr: Set vrr.vmin to min Vtotal
Thread-Topic: [PATCH 3/4] drm/i915/vrr: Set vrr.vmin to min Vtotal
Thread-Index: AQHb7vnOrrXK9X2UaESdONY3xbOvWbQ00HDQ
Date: Wed, 16 Jul 2025 13:45:56 +0000
Message-ID: <IA1PR11MB63481D27B8D264CB61D64184B256A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
 <20250707043321.97343-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250707043321.97343-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB8494:EE_
x-ms-office365-filtering-correlation-id: b59d00a5-9bb4-4848-d9f1-08ddc46f16f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JVDcQDCvNsDvs48zmYqKNky3tO5kzhCKHKs5lWDe0n2QiS98R/OY79mU5Ooc?=
 =?us-ascii?Q?e8I6Orrb2NFan3Nt96j+X6pT3c75PN572OROzh6xZLS2lGNdaJnjmogBLs1N?=
 =?us-ascii?Q?gr40iGEIYxjlryHd7mlzOgi5tkUYyizy9SjSiXKkysbNJtURwOJVIgheRZ1L?=
 =?us-ascii?Q?pLWGpmJBszLcBN8Mt8+OwIkFr6dbRjtbB3EOM9Y6lVg7Hly11kdfCbHU+8mh?=
 =?us-ascii?Q?nbdRhNq9o0gp1TCQxRvOPa+cx7IV6YVIqggs6R+I7t/LesfRr5eYUmAgFVDD?=
 =?us-ascii?Q?jq+h5llrHjjvbuD25t+3Z+F47Q1j0PNP3Kip7PhOlqjTpAjj3Fh1AHw3keVd?=
 =?us-ascii?Q?BIRc3hPGO9exZU0nRneTuIA83PYJcBBGcKb0AV+ckBV497+Q/WGFUm/t6cps?=
 =?us-ascii?Q?IMJvt6KU/C19/kbtv9xxyLGkjaiha67IlhO/lajkfBxcDl9fQ7uSOjsMxu8D?=
 =?us-ascii?Q?Y0uUEGiuhBxIobjBKx8PpnyQrjmjGjLdQhE+4ZsteMRhFDCfEovP9ZgeM6oq?=
 =?us-ascii?Q?eNWVtJ38pcT857OeaBgmgURJaHDjJw3/C4kRBxHgU8O9TrPwkRHZWO+o+A8i?=
 =?us-ascii?Q?L1LNVvrLNzfzO/EO463hXKyJmjGw5sy9vaG0DP81tIres89mZFxQtNp9QnVk?=
 =?us-ascii?Q?MZ2XbjMPSL+yxiyh6r5aQsB6t58qJBPlQUNoSja+jYkOKNLlVrtaEAMPqSP+?=
 =?us-ascii?Q?PJXWTUHUuK/xl15aKsqtg+zxzpqsphE+9IlrBEsKZmRaCwI05SgZEd2BUpsY?=
 =?us-ascii?Q?9l3/U8c1pbWl3puy4fGBc8NgS+c4bdED4/hG7yA/iFRtIhVx7kgNARDJ7Sx0?=
 =?us-ascii?Q?BBq0jqPiJRevEv6+FLy3lkzimKKWqiDVe90d2zyO9CE3KEG6IhGayM+SUQXz?=
 =?us-ascii?Q?IrlFbSt/mD5j9t0Yvdu7KudxctxZX9ap61fXAW9vtFdNQNxFuNsFjDGjQ+Hr?=
 =?us-ascii?Q?djJB1Mokk0DoA2fV5rtcVNZqUiynhWFtNWUhJaLEYwbrhS3Ut+VTPrhOohoG?=
 =?us-ascii?Q?rm8drk3IgUSv6a5lCyBrEJmXvljVr/tGf5TUbwJ+aMqb4t6vZWgHY17n77mM?=
 =?us-ascii?Q?JNbY/u9GlmEFVd8YlYQ9aKWt+IkZj8j7zdm4acIIVZPdCEVP6tRfkdd7m4dM?=
 =?us-ascii?Q?sHqBYjSVfgsD6k+clJukACu5MBtC6EvkFLruMEzYa90V5NgX9sKM5ufN90tk?=
 =?us-ascii?Q?d9Xt/T4191trwLDwwiIOjl+uyoEMhQspg8KmpVGCKrjEU/xiR00FqW96qUud?=
 =?us-ascii?Q?hu3gNHvHyI3XrJ83Ib/xjXnfkjHwNGYZpQMi56CxuxeHAKtF+yhi75ZrrQGf?=
 =?us-ascii?Q?muubpVbGGAJsNrbvmDrpK/5xVAPf6Q3ZZ4PRvJs9xoUqUUrfwHJ1+7j7bmAn?=
 =?us-ascii?Q?iQTlpcIOnEaF1zFme7tI/X6M9P9EzPa517pgZDo0nxaemn0X+cadkw/ZOSzf?=
 =?us-ascii?Q?9XU0BqWZYDoTc4G6gw62/NDxL11fLP0FjkZZxWKyr0V/gp9pay8ydA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?en7Em84IbZ+nB3+mKzTT6Rx51a5WhxghgIk6vk0WHC9ZYqoJ9aJQ/4dzM+qn?=
 =?us-ascii?Q?HJKpqfS8imvRyH2+fGG3u0i54OlMuYKDJHVWWKki4pdLYCTTRVHEVxHVA3lp?=
 =?us-ascii?Q?BuLX03ieHtfgNA/3nW84PRf6kw5B5cu74ccFodN2R3xYtQzmdNRh2c/tfVwk?=
 =?us-ascii?Q?VsffDa0J7/7AnYfMus0sUHeXam7p/ZP11ZM6DSi9drizbDAbudanRHOwePIo?=
 =?us-ascii?Q?HBwUFx5j1OhmlH3etphU5r0EDjRJE2U3DPaoVIxr6DmTuD4aegPotKrNck/x?=
 =?us-ascii?Q?iJYjdy0SPsF2WjCQ3U8oFvclLc3cF41jozmjdcwqVV4NZOocxYh15E3IKWxg?=
 =?us-ascii?Q?D+/vX84ALiB7VVD7qNQFmsSxFAPazKxTir/tndrsVr7Q/FqvfQ0J9rfPIPjh?=
 =?us-ascii?Q?zmWDdd2wvJYD+F8Pp8WPynmvS7U2pF8ROV83tX3SLUyEIJPAZPkWsjXC8xC8?=
 =?us-ascii?Q?cbgN2bd8B0WMIKE42VxGqFZo7TOTGu3yYDIkNsJGM0WK8UYJ7s9W0U38E72P?=
 =?us-ascii?Q?Vvo5sD/KvhKCeJxg9EwjiTQ/CkIuYzhEBlYDRTs45I41klErksXvTLbrQd+0?=
 =?us-ascii?Q?dqLaSKfV1YRLTwUDVHII54YEIPfv4EiLumPNB+RYoTBAzVidZ04gphOV8siW?=
 =?us-ascii?Q?2wIK0HFskeajMAq3zCVObclP2QvratVDposbPLRfIbvvg0XU0JNzxeyZAjwi?=
 =?us-ascii?Q?eU3FFn5r6lq/mhRKkyQMkA10DhYAB3ewquXW+Fbt7csW8/S6u+C7Zk6TEwTO?=
 =?us-ascii?Q?vrRSm4tBv8K7gFilfLJQnOTbMb9i25vER9OKgCm7yldLpilhG58DXAZtQsU2?=
 =?us-ascii?Q?zf0QJH/BUfoKKVtNZLpOFd/EG/y2jiRSzfN+ruErZJPSsS1+yIa8uTOVMWsk?=
 =?us-ascii?Q?GhRJWgugAziY9B6QUg3xi3p8jxDyPuPZ0/MAOqF0t2GMqsJpgldXP8ITbi7b?=
 =?us-ascii?Q?cyztfCFg8l7OZN/ouDm+2rmxyfxp3cKUAxTTv7k091doSROwenHmKz/xRPsz?=
 =?us-ascii?Q?nqruGejTgfWIlShZpMKeUwcIWmKoDB+UFK2NbPcYzZ4WUZ5kjMpyDqGG3koQ?=
 =?us-ascii?Q?p1+hXKEHfizEC1yOpDVtabKO491Ck7se/z53Cc8xkqBaI24SOuGciJLyXXpc?=
 =?us-ascii?Q?U3rL8KFXB8brbqUvTCtgOAMPbshI7F2MxNEx3Ig4KlpIQROJS4QzNljKExIQ?=
 =?us-ascii?Q?PPK9VNj/YfI7jNnB3RFWK9EBlRbYP3WtFjg41lbzI3c0ueNMr8HuvCknws0N?=
 =?us-ascii?Q?awcKeY827NKs8SixBPFApSfK6zuPuqvXFwomHrqJhDbDtpUEv+YCMIKWdGLR?=
 =?us-ascii?Q?K+1mkwq0gEb1T7Ezgx22hqYuZaen7lBg219LvZeklay7dORRNbKjiO0OoUL1?=
 =?us-ascii?Q?L5irQFsrh8gTxwXyCW1DxJ40LY73FvXQ/8j3/vn/4+TsErsbHkll0rRUV/wx?=
 =?us-ascii?Q?or9KNUq5fnPP9LjG9rAdmAvzkkFGNHD91lNNXY0TkcNvkaXubxbku4awTlCg?=
 =?us-ascii?Q?fpxmv8Cam4aNtEpGCxdyPCQVBHm6EvivAlShrdGoCBDR+ccj+iA5j6XOcNSS?=
 =?us-ascii?Q?4klMrhg4HXNQm+9M8Uw++DoveCJoebMy6KT+EYZbqnvZsDEZq0QBMtFXduPO?=
 =?us-ascii?Q?PiizUBUwVYQWeKCtXYxUMkM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b59d00a5-9bb4-4848-d9f1-08ddc46f16f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2025 13:45:56.1835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o0j6qdaYW3q+pJV7in5mEbzF3XeErywH4BarT+PBoZCJt46bJDAC7EJl6mRtfqUtxI6/OQBJ01o09WeQoF6Ub0Gin8IkLDPWLGUf7+ChOnp8vHT71wIcx4oERxireLwu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8494
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 07 July 2025 11:33
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 3/4] drm/i915/vrr: Set vrr.vmin to min Vtotal
>=20
> Previously, when vrr.guardband was matched to vblank length, vrr.vmin was=
 set
> to crtc_vtotal for all cases to avoid having vrr.vmin changed when we swi=
tch
> from fixed refresh rate timings to variable refresh rate timings.
>=20
> Now that we are using an optimized vrr.guardband, we can simply set the
> vrr.vmin to the lowest Vtotal (for highest refresh rate supported by the
> panel) .
>=20
> For non-vrr panels, the vrr.vmin stays the same i.e. crtc_vtotal.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 37 ++++++++++++++++--------
>  1 file changed, 25 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b73d99877ce3..780f91db3bc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -280,6 +280,9 @@ int intel_vrr_fixed_rr_vmin(const struct intel_crtc_s=
tate
> *crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>=20
> +	if (crtc_state->vrr.in_range)
> +		return crtc_state->vrr.vmin;

This looses the purpose of this function which goes by its name, "fixed_rr_=
vmin".

How about adding a separate static function in intel_set_transcoder_timings=
_lrr ?

> +
>  	return intel_vrr_fixed_rr_vtotal(crtc_state) -
>  		intel_vrr_flipline_offset(display);
>  }
> @@ -310,26 +313,37 @@ static
>  void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_st=
ate)  {
>  	/*
> -	 * For fixed rr,  vmin =3D vmax =3D flipline.
> -	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
> +	 * For fixed rr vmax =3D flipline.
> +	 * set vmax and flipline same as vtotal.
>  	 */
>  	crtc_state->vrr.vmax =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
>  	crtc_state->vrr.flipline =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
>  }
>=20
>  static
> -int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
> +int intel_vrr_compute_fixed_vmin(struct intel_crtc_state *crtc_state)
>  {
>  	/*
> -	 * To make fixed rr and vrr work seamless the guardband/pipeline full
> -	 * should be set such that it satisfies both the fixed and variable
> -	 * timings.
> -	 * For this set the vmin as crtc_vtotal. With this we never need to
> -	 * change anything to do with the guardband.
> +	 * For non VRR supporting panels/config, set the vmin to crtc_vtotal.
> +	 * This will help the case where VRR TG is used even for non-vrr
> panels/config.
>  	 */
>  	return crtc_state->hw.adjusted_mode.crtc_vtotal;
>  }
>=20
> +static
> +int intel_vrr_compute_vmin(struct intel_connector *connector,
> +			   const struct drm_display_mode *adjusted_mode) {
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	int vmin;
> +
> +	vmin =3D adjusted_mode->crtc_clock * 1000 /
> +		(adjusted_mode->crtc_htotal * info-
> >monitor_range.max_vfreq);
> +	vmin =3D min_t(int, vmin, adjusted_mode->crtc_vtotal);
> +
> +	return vmin;
> +}
> +
>  static
>  int intel_vrr_compute_vmax(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode)
> @@ -376,13 +390,13 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  	if (crtc_state->joiner_pipes)
>  		crtc_state->vrr.in_range =3D false;
>=20
> -	vmin =3D intel_vrr_compute_vmin(crtc_state);
> -
>  	if (crtc_state->vrr.in_range) {
>  		if (HAS_LRR(display))
>  			crtc_state->update_lrr =3D true;
>  		vmax =3D intel_vrr_compute_vmax(connector, adjusted_mode);
> +		vmin =3D intel_vrr_compute_vmin(connector, adjusted_mode);
>  	} else {
> +		vmin =3D intel_vrr_compute_fixed_vmin(crtc_state);
>  		vmax =3D vmin;
>  	}
>=20
> @@ -769,8 +783,7 @@ void intel_vrr_transcoder_disable(const struct
> intel_crtc_state *crtc_state)  bool intel_vrr_is_fixed_rr(const struct
> intel_crtc_state *crtc_state)  {
>  	return crtc_state->vrr.flipline &&
> -	       crtc_state->vrr.flipline =3D=3D crtc_state->vrr.vmax &&
> -	       crtc_state->vrr.flipline =3D=3D intel_vrr_vmin_flipline(crtc_sta=
te);
> +	       crtc_state->vrr.flipline =3D=3D crtc_state->vrr.vmax;
>  }
>=20
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> --
> 2.45.2

