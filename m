Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3809EB12D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 13:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512F910E5C6;
	Tue, 10 Dec 2024 12:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kEPjFjwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CB110E076;
 Tue, 10 Dec 2024 12:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733834933; x=1765370933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kKxKjrLwyX+mwfvDTWhQgq6hfIQh4MRnJaclULV+2Mw=;
 b=kEPjFjwFrIY3hhSoLzm/g46u8aA+LpjwMxtsC3OdVfUhXzxh/PTmtV7X
 vzAVGxXM9Eanmf+VMPW23i2zPFdGrLdnq2Lc+4CCGvFVZNCpykq7psQBI
 vFIVSQBCDmnC9rgrV9hSDpoje+BzM/enpyXE7seh39v8OtmGX3wvT9OpE
 YWw88ZOnSV2d7qQnHNMgfzy9eqayNQxHMKUq3oo9HGK6FBEpqppv8UImk
 RIJqXfd7ERMnRobs3KfvON8ZuoEZ2gGHXH/XSzs0Tv1kMN8hEjbsJEh+7
 1uDdtczs5JkHd6iL8gPQh23tT8WZbnJ0d3rKHueD4PIylOYy/FJ51vGNx Q==;
X-CSE-ConnectionGUID: g2oYmN/UTSqdJ/gt7leQUw==
X-CSE-MsgGUID: MUXCT+1ZTYu2tlQ6EYwCQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34293464"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="34293464"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 04:48:52 -0800
X-CSE-ConnectionGUID: SSiyIVp4Q0+MNFxIHs/bcA==
X-CSE-MsgGUID: 8chPUm1+RfizBjBeudiO/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="100352940"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 04:48:52 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 04:48:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 04:48:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 04:48:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s/bvjc1ZjynJclRB4vmQd00OnzMQwvSW2eDJNtG00QY+Nc5UUWp1nQhtvsVdOCuR0iIw+jyKwqX/bXsrJdJ5qpPL0ckbEgZAkYj0KdAzA6/1vyDEw26CUJcpzzcYoL3QmBC9tYYWEZy4dmpyehyoC17AxzmNf37I+U/WqK2zrHMhODapa2j9+h2ZhDpNa6CLINn/PEPv9EgtsmLxESRAFd4ptZI5efFOU0FteMo0vVSVgICHMMLotAstV7ZF7qo07Gz0f/2irP3wxKhyGU4fbSTHq9E7Y1miDb8EFOVfKw+XKb7BnF5XqJjsJxbg5V3EOli05vGh0/9oXz6CIx2G5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47n8PwC7L7NHaxRb7FgDtWRO+uIaR/3KnBAZlD94DXI=;
 b=IkpfTqsiWcqvdT+M+I0moSI7qbN0u+YxJrqumInFJDaWEjxWlWh04hZhfY+rFdOExPjxHL8Rd+015TaM0vwA6Xn046nW4hnyc1gH4VTaLZKHES1IwfyIuPUIMeAJFOH/6WLdHCZouyu+CEFg0iRORnud1NV/8zPH5+ctFMM1YCDW6Uy9rRaq7OqWhH9JUgD34v6r2/sgIjtLg5GYMDUJyCVcRGPrigHi/IiRw9lMwXCaYH9CQQZ5SVew2ftjG9vXkGxEPwRyErk5mjmjZsOQaCyokwH/gGZBkRCrqW2iLqV3debKqY0OQW9eu8pZYuJu9YBIIz3Q1I/6DSScrXje1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS0PR11MB7213.namprd11.prod.outlook.com (2603:10b6:8:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Tue, 10 Dec
 2024 12:48:42 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8230.016; Tue, 10 Dec 2024
 12:48:42 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
 mismatch logging
Thread-Topic: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
 mismatch logging
Thread-Index: AQHbRvh400EgyaH0KEeKHacCk3qOp7LfdAnw
Date: Tue, 10 Dec 2024 12:48:42 +0000
Message-ID: <IA1PR11MB6348052818546C6E313CAD60B23D2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241205093042.3028608-1-jani.nikula@intel.com>
In-Reply-To: <20241205093042.3028608-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS0PR11MB7213:EE_
x-ms-office365-filtering-correlation-id: 36da1aae-51c2-421e-2d04-08dd1918fa1c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vLgJiTegTdgYkjQrh0+d6kwaYMEwH8bE+Ig1hsH/kuPcHR8C0Uab5DhaM1oj?=
 =?us-ascii?Q?PYsyw+a+gR+pEk6eDeq0jndGJS29x+VErcRrYCE4Q/r/xU8PjDhq5S21oRsp?=
 =?us-ascii?Q?S6GeCt4+gRudgTFD9C1OG5HnAisiSBaBon66wPsW1jQoQ6hpc9X0cq44eXgx?=
 =?us-ascii?Q?yDKQlUtpr3ci3a4zaPOFE/5W5TZP41BpKwYkgVXjIWXoRB3F1x9fcjYYeoLe?=
 =?us-ascii?Q?XLhnTO/0B1SXk9bqtbtTqqrd3bhG0f3X2ZP0elPztqiggp/g13j+n5KNu36w?=
 =?us-ascii?Q?kO6WRBggA+bKhNU0w5b7xZmzO1ApFc0IfNsBZ9C4X2mZhdC3WOz5dKom0vFK?=
 =?us-ascii?Q?QXjkkeBIlCQVCJzNX5+HgYeSportu30P0fURKyAUJKSXoi6wxv+Yxy6Y0IKY?=
 =?us-ascii?Q?ZdBdHz7yFWuBw0NfEutNS6pNuGHQoiihEZjkOT6WIsMTah0yaCzR7kKfYnBo?=
 =?us-ascii?Q?xvxbuGAZoJJlrGH0O06jbYfxmKggw6yRggfPBQZ7I9pM5ujnj0NaVadJ0YPQ?=
 =?us-ascii?Q?NGFmpS3/rrB2eYe5W/UYTgYuvZD20/+VkPrAIjtDhy9PYwtjKE3asPRmg5/L?=
 =?us-ascii?Q?lv1vKSaJtFNSrME99xBHlVgA/WQR12HDy/2eanGnmpgzxoJmRGTogWyHrX1/?=
 =?us-ascii?Q?mmVwemmaLRPHFv1uCcBTaXn2gW0thp4yFsLK85pZK77Fp7H4CmUyiPu3J0Dl?=
 =?us-ascii?Q?V03rqLzsugi2DAvrsC3TxQcf1ntEPqpUqkiN06BODJypYMB9ocxTCl/SQgHn?=
 =?us-ascii?Q?wRfU3rgYHn2ttdn1x2rgdMu2VH2ZdpAe5TYZw/ALYOBEbPf5rVEPa33tEeU3?=
 =?us-ascii?Q?rF14STQYgjpdOvvkYPqrG94TzYD0gTOX5yTGGzqFDhXK2J9SUpHQkzrxDlA7?=
 =?us-ascii?Q?0oQP76pjkBiIXiJV+/6EZgp/QseCUAPKnHtg1+V1BSiy/p6RYa1oTY72LNas?=
 =?us-ascii?Q?Ymxogn2N+ltSUAxLMwz6G9NOiA9ANW6YH/sR8nPe7do3sZjnIRbIBLgBOeap?=
 =?us-ascii?Q?FumK+6mXGuvF41y/mMfAmh1rEdvAE0Ue8T31nuW4x66d9iTPj9iIP9aToAdV?=
 =?us-ascii?Q?4sejFOsUvqWCFHhS/1YenR10m0PKtPIPWhAg8H0G1ZOoFPPHczNo/dPMu2cd?=
 =?us-ascii?Q?FFdgfaD5+PFIEW5kxV1DLA/+8EH1OOEEs791FeN2vRQlzQa8OZQPjxA1j2rk?=
 =?us-ascii?Q?QAJGAuMZfb5yVLfHadfw8H2gFJNm0kvI3ON7kmJ/mSR6C/p0uNlVO4pNHbOl?=
 =?us-ascii?Q?p02QElePSeQ181OPx15QecemwsdPqsdNlZ48e5c8tEhl0RoE51dx5QUwpGgI?=
 =?us-ascii?Q?q0VFhOYY94haXX1pNkE8bnFvsBcFoukqUPuQeNTw1NRfLdbb/j71nunDmGKq?=
 =?us-ascii?Q?x1RkXs35pHJRVgnIt++tkk2zFw64+/42/sClhUNb2QftU2oPAA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ian2DlQb1o/DUIAIW4T1bLXkeLzyfDw2bc9UQ044G7A0/c0zwnm+6fS76bpd?=
 =?us-ascii?Q?Zpe3Tlll+fxXi5Yc+wcDZu4t0kQ/IQ7htnxCBNn8iblQZ5DK1FOYkm4rNdB0?=
 =?us-ascii?Q?7XlsgMeMFAFbb4FvlFVcir2ZwZqhNtzr9SpvoLbinLBFEt+aRJJnpHx8qkTn?=
 =?us-ascii?Q?oY1bY9qM3WFVgQacdbQi2SR8W0fj2DLloSzoltmD1mj1E9+h3vEWRSz9LB+u?=
 =?us-ascii?Q?cRaRDKFKEmgl6zFrgY9V4y08YQAheGPua3pu7oZSuWrWek+rO7lx1pwJ5t6f?=
 =?us-ascii?Q?z8twpBKTNRiYDWyrMwEoA7cN5XeVvxDP4vRmM0k0WH4vmQDGqezKZKI2DrY4?=
 =?us-ascii?Q?a8GqRE1lMRgt5x1iqqEOBsEg69VlszywMVQqVCNvPooYMrsn3Ou7BrZRYKEk?=
 =?us-ascii?Q?pGoAgB6WF2zSqbkBdlMStFc9i4poQx9cFBdVrh/eyb1izGJ28vuG1SNnIbQ6?=
 =?us-ascii?Q?tehewPSFUBw4KkWsfaWOStXAuDB+EEsmpu8cAL2B4Qox2yvMWbpmBYDxxfhb?=
 =?us-ascii?Q?yab1lGuWEPIRnLEwnkOc26F3m8l6Z4S12oeXj7jqOcwFjleJ7G9dQ9DU3cGM?=
 =?us-ascii?Q?Yds0xOCqGfbYM1WeHZylCWkexmqYql7IxZdJ0on1/tJsAjVJFkib7cwoCFaK?=
 =?us-ascii?Q?ldl76NI3MBjtmydJXO1MHZIBA44RnFbATiSrUXCtmp+FxRQS43uqshzzf7BB?=
 =?us-ascii?Q?4bptEOmfWLZFcx+Zvgr6LPJq8M6QAChylXStK7zlqDrox0oo6vlVmbXosUJU?=
 =?us-ascii?Q?dFlf+YL2KSx/YKfTm9/8/rqpwWt3h7e8cVocy2m4NKLFKXPuJNKMU0ODn4nx?=
 =?us-ascii?Q?X2sdDSzTtHpyA+d25MW+yQE3yI9+28WYP7l6tgS6cPSuOvWTHFkFipQgCLge?=
 =?us-ascii?Q?gpMYkR/ENKsXMVHNL8a63GyIpuNX9EmuchTnf6Ok4oLk/mEbh+W0qj+Sbm/O?=
 =?us-ascii?Q?SsMYnWW7IwCCKSzKsLg0vwVWdFRivp5XQ9A7JAgppB56DTlF4PDnHLHv7tWx?=
 =?us-ascii?Q?+H5P96flOCzWpzyN70Am620jH2RWW+LI/4luCiwmPicVIPyvCfCjYn2uGRz4?=
 =?us-ascii?Q?Y/QKzyhCbvWKkHpwao7Ee+p/6XbQ4WbJIZoPrzckdwh7dVMbqdBtjASduI05?=
 =?us-ascii?Q?u/g6qsQCYSSN2TSKNHvV/2pjmqDnCyik0ud+IcHts9c66OCtDyd46nDbBHTN?=
 =?us-ascii?Q?CdhGnZCg5KpOxHXWQXkT9/oNULzmAbCRbfXxdXnJIwcR2Vge4fCtdmgGAqOp?=
 =?us-ascii?Q?9vAbd69Nem2SQnNM0Xg/XM2jV1tpIlI3zbsw4aOxvuQLFZHFj2tCjRnYPn/X?=
 =?us-ascii?Q?U4aaXpS2P4pkOLSBL34fszrgtzJo6CKyhSeQqeLtPj07dFSD2qc6YTl8ac5u?=
 =?us-ascii?Q?Wt8IypLONwYYlqyUIhQkPN/Y4mfvL8Ll5AIdCAAhQ50fhnCDdgTYpumuA7j7?=
 =?us-ascii?Q?hQB/Fklw2uW+rWlUenNzYIUKsK0LE4KlFIz6CiSUC/SMIrFOEc/aIgYFdV4n?=
 =?us-ascii?Q?kCAz+gUUnuZNbk5HFFtTowA19fB3q8PLT6NwF4WmnUsJ+cxNmO+gefiRhPkK?=
 =?us-ascii?Q?hOT7ETnANB23sW9ruxu95Djwity1A5RQJT+v/GISjcsTsSqTSr+ib4lAScKY?=
 =?us-ascii?Q?4kVTY1wzkylztAsaSizCsmg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36da1aae-51c2-421e-2d04-08dd1918fa1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 12:48:42.1932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RCmDxW+QqDmbckduuuu88gbGLS4S2kOiSOPZKwDar9eMxHc2g6dzFlVBEPYXewRJvLhisSxHOULWkO6Z0XqTiDT/NSa5SwlULC5FoSX3u7pOQna3gQDhlU/SRbUN3Wna
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7213
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: 05 December 2024 15:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
> mismatch logging
>=20
> Pass the drm_printer from intel_pipe_config_compare(), and use it for
> logging, along with pipe_config_mismatch(), to simplify and unify.
>=20
> While at it, differentiate the VSC and AS SDP log texts from each other.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 29 +++++++-------------
>  1 file changed, 10 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 28c1b372cc95..1159f8c3d206 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5216,7 +5216,7 @@ pipe_config_dp_vsc_sdp_mismatch(struct
> drm_printer *p, bool fastset,
>  				const struct drm_dp_vsc_sdp *a,
>  				const struct drm_dp_vsc_sdp *b)
>  {
> -	pipe_config_mismatch(p, fastset, crtc, name, "dp sdp");
> +	pipe_config_mismatch(p, fastset, crtc, name, "dp vsc sdp");
>=20
>  	drm_printf(p, "expected:\n");
>  	drm_dp_vsc_sdp_log(p, a);
> @@ -5225,27 +5225,18 @@ pipe_config_dp_vsc_sdp_mismatch(struct
> drm_printer *p, bool fastset,  }
>=20
>  static void
> -pipe_config_dp_as_sdp_mismatch(struct drm_i915_private *i915,
> -			       bool fastset, const char *name,
> +pipe_config_dp_as_sdp_mismatch(struct drm_printer *p, bool fastset,
> +			       const struct intel_crtc *crtc,
> +			       const char *name,
>  			       const struct drm_dp_as_sdp *a,
>  			       const struct drm_dp_as_sdp *b)  {
> -	struct drm_printer p;
> +	pipe_config_mismatch(p, fastset, crtc, name, "dp as sdp");
>=20
> -	if (fastset) {
> -		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> -
> -		drm_printf(&p, "fastset requirement not met in %s dp
> sdp\n", name);
> -	} else {
> -		p =3D drm_err_printer(&i915->drm, NULL);
> -
> -		drm_printf(&p, "mismatch in %s dp sdp\n", name);
> -	}
> -
> -	drm_printf(&p, "expected:\n");
> -	drm_dp_as_sdp_log(&p, a);
> -	drm_printf(&p, "found:\n");
> -	drm_dp_as_sdp_log(&p, b);
> +	drm_printf(p, "expected:\n");
> +	drm_dp_as_sdp_log(p, a);
> +	drm_printf(p, "found:\n");
> +	drm_dp_as_sdp_log(p, b);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>  }
>=20
>  /* Returns the length up to and including the last differing byte */ @@ =
-
> 5507,7 +5498,7 @@ intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,  #define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
>  	if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
>  				      &pipe_config->infoframes.name)) { \
> -		pipe_config_dp_as_sdp_mismatch(dev_priv, fastset,
> __stringify(name), \
> +		pipe_config_dp_as_sdp_mismatch(&p, fastset, crtc,
> __stringify(name),
> +\
>  						&current_config-
> >infoframes.name, \
>  						&pipe_config-
> >infoframes.name); \
>  		ret =3D false; \
> --
> 2.39.5

