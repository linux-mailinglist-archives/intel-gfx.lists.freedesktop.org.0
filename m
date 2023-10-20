Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF71F7D16BA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 22:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCE510E5E6;
	Fri, 20 Oct 2023 20:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AAD10E5E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 20:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697832217; x=1729368217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zRPmZnZh31gfENI4SQGTGn4JjSANL7nd+8X2pvsPg5o=;
 b=k9w4iTFBgWsL4WHBZ6kOdTnL/z+zLggzgmnKfiu6X2tSv9Flmf4oQYW6
 jojIoIHRpKWhiWmiv92bRgI/mp2VMK/U8wgncq3IGqjt0DkC3luL5UfUB
 NxZgh/fdLAZ4jPGpOPgK0V4P3op4/uHikUBjVgwXV2OeQUcgqm15Es1bK
 3YG75hV4qA29B3QiqaR3ssL5QjumqpAU81N66898Dk6hxI/DOWuco0ksj
 aOW+uP5tgG9yHQLtQL1GCEQfdrSF1wuDRuq2lTI5ZuNnaCfwRmg0Gm8/L
 GRUtIkGQmxFt+GvhI0Q4QQ2H6lApgRy0u4rrf2UHi61N4KsVIopyRrozQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="383777247"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="383777247"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 13:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="786885668"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="786885668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 13:03:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 13:03:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 13:03:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 13:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cC3CgMK10H0GHlZcibEgax00J4vr3tdwo1yOWL3Eh/Qd63b2KvDjay/ZYi1tWnCGJa3DSYZLW1g774x2ugkKkrE0HtAhDvxkAfwtoESfVKl9b1Ro+xMTibPoEk5ZGEt3hcsQUVqs+OqDYHn4rjXFfrAJapINeFr4gw+cP+z5z//OWjpaYZF1v+grpiUKFgtFZ98Nxw8z0oob5PQKW7km/grdwokM6nRKW9GTXP5BpDLfzvNrzYFkmUxeKumWZSIY1Kwrl9+4FL/PT0ln8ekDjdaMnFEzOt0aX/2tY305MbW2y+gqQ13GjzPuU3kfu8FYpKGFOefjzCkmcJ345O3rkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0VZlthdad8kOxYHJMmYxpYG1vK5Qdu+jmeGLOIQagMc=;
 b=oXv5yLnU1BE3ebRLPLPrwssrv7/qsR0W19dmZsGiMuyUulM/o5ue4/XNe9PEO0edPDQqaHU4E6RjR3Rzy1aXGG1RsW0C4h7uydLC1wisNzJLnr99jg6EixWEZdi/O3i/ehzG0vmzYS2jFkJH+VqOEqfHvQbahxQ/R50lKEkhQSqHaUWOuLiczpt0C2SOpQbiaOT+xM0nVE4gkIzKkfkR1ij12fvtngFkLst0qBbON0AWyNt7IjLlG4a1piv3c/hrrLtzpmt9fXb0y72yuTuWPEDWhHmqG4f8NL9sjhM4hDiN12cZqP/9Aj4c6U6fMMu0zKkxW8g7SCGPwtysxp6HNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by IA0PR11MB7379.namprd11.prod.outlook.com (2603:10b6:208:431::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.43; Fri, 20 Oct
 2023 20:03:30 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 20:03:30 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 3/4] drm/i915: Add WABB blit for Wa_16018031267 /
 Wa_16018063123
Thread-Index: AQHaA05QPldxTKTU80OJ0lT5eGkQK7BTGZyQ
Date: Fri, 20 Oct 2023 20:03:29 +0000
Message-ID: <BL1PR11MB5445532C85C87D47AF8BA4A5E5DBA@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
 <20231020120912.1888023-4-andrzej.hajda@intel.com>
In-Reply-To: <20231020120912.1888023-4-andrzej.hajda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|IA0PR11MB7379:EE_
x-ms-office365-filtering-correlation-id: afdd3abb-0a94-45e2-8fca-08dbd1a7a161
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5gK+vE4rlC2ve6xfyeUHmHcv2rOYYAbVKZLGfz08zQqw8XKwkiN7ZI4Q6yCXFJhG/NYHazfEX3OVW0uNRHdr207p2dn3KeZlCGdvu+AyeJEFr13DpYqGXjInh/I92/q1rHfBiB+U+1mHq6GizLbiYmxWIxKdXGxvhpQAFCByFnFRBdp/Nq8OUJftdYPWtolhV3DLQgohNzUZCCstEZMZyB08d80JjiEGh0D5lYfCnRO+dGLbxQwARMQ9eSW28Keog2BBN/OhFiQ9vhU+Zaf0unFkTHwCEROueNSMPkM18Bj5QdoKFIBdSevhhW1Raba6chrCMwwalbOF/CSXmhptEHpclQLHWVV236gSbRfJnxAdUYW+bql4hUeGJyMLFl61nPPgtuq2dngDFXHVty0wAXhjq1Wz3iNEMVPTzbz9HI3fh2JkfsCbDbVCDsYPizqFU8gsNp4oLAt+UTOVpw8MY4mJCBgNJRHnkW7KN7Ir0be2m3CULCYtRptSM2W7yUFAb9KOBikEJEcQDrhFCzqDR13U60khnB/5SPObiakMq+rb2HWMxfJnuVuz8ZQd8xKLqgGn9De7K1hRY8uoMcQtPeyUXhZ1u/V0RBV7qGFSnK8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(38070700009)(478600001)(9686003)(53546011)(7696005)(6506007)(316002)(26005)(71200400001)(83380400001)(5660300002)(110136005)(66556008)(41300700001)(8676002)(54906003)(4326008)(66946007)(76116006)(8936002)(52536014)(64756008)(66446008)(66476007)(82960400001)(33656002)(38100700002)(86362001)(30864003)(122000001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XBplDXQnmzOkb+mCbt8GkSPx8uLVahEDlnB5KqQiBDAr98ncQnxeXyXeVoxJ?=
 =?us-ascii?Q?8WRnmS2VVjFJHRRuA23BLHtqjDIoVbqhP2lJLHkDkOyEUyipImek1ygpdhaS?=
 =?us-ascii?Q?ijzpCIuH5xKyn3xnu0nzfcldL0GpBsEYdA/saR+OkRJBKsN7pOqiRsyC1eOM?=
 =?us-ascii?Q?c1lKplpDwsFM8Td43GizevUKrrIYuR9Fva0wKdxnPIk9krPCAyy8gYAJCsPv?=
 =?us-ascii?Q?Y7vrMI31dVfa1RK+Oe32K/ONBRSDFBoSw1sMdFe99cvnbFUK50IMVlnTOX/B?=
 =?us-ascii?Q?6YWB6J9NRXPBwY/1RhMsk9rya/5JXU6Q0/lStdZ3VzRJ+ya3EjfmHh6VRWSb?=
 =?us-ascii?Q?nN2HWkv8OWT1S5KiPnNfmXonmLnvuOYav3F72pJ2BtdFOi5+KRGTn2v8JRKu?=
 =?us-ascii?Q?hxWY4/+Df0ovtjc0omi9cObpkf2sHSM7r3Xg5x5a64CRCPAFxhRDznewkrmf?=
 =?us-ascii?Q?OBTFp+FiEeSudP1NEq60yVgSDHsvSm5xz3J8fCr2BZcwHS8PSLd9f2EocObu?=
 =?us-ascii?Q?P255+3SWbcvK57mXO9882sVaYyzYT9g5vFrBjpczKAt1RDcS18pmmpAplSKt?=
 =?us-ascii?Q?94xNHZWkX314Z/2qJSTRDyyOKWgK0aT6gefi5+aCoQQMCDwCa0JdlrPcP/yP?=
 =?us-ascii?Q?b7hBTSe6tc1T07fCvwfnjH7dIMzpO+v1Cl8iNZ3o3wwtPL9xg8G7Lt8PyqGc?=
 =?us-ascii?Q?O1TDa0YSPErIupa4QKyL9cE0Aw/kMQneQmY32nkx9vxxqx+0JTmD9Juo3R3E?=
 =?us-ascii?Q?FbbLsldLsR30KsFqERcbXW1HUpjvZ85dxPTrH1HIlIO7hj9dz/zmKbTGKIxw?=
 =?us-ascii?Q?AZwWlczdkxsZEruWfAwLmkytR268ZyaCCELOkt8xYm5yHxkCEnlJkTYmHKYJ?=
 =?us-ascii?Q?X7+n4WR1aBRa7TWsit8JVaAAzuiyQ7b5LG2NGr/f8T+KurROOYq4HoeZERRf?=
 =?us-ascii?Q?wXDlOUZeJVZ3WfEkfC6rXKvOCZnWTHxzK35+4Uy/1g+Ma6I/f1L0bARZTty9?=
 =?us-ascii?Q?4tYfBpj3o5sJNPLQZdaVhVPW0Q77Bd1cWbHSRsdz7tkT6HYOzmu9FJSY6FZb?=
 =?us-ascii?Q?+Yz47ZCl+rxEcti8eiR6rGo1DR3vxyFmqVtZEfEhzrvZlmvJWOaxHFqAlgmy?=
 =?us-ascii?Q?3vTtONi9oFytKbzO1YHAkrgEEX1XHwKu3CUg+i69hZeQM2U+X70nINeYumg0?=
 =?us-ascii?Q?YK6G0Go4f1AUze20uwNtlfYXVlJsbO0z0xtErd8CpZ8vklk+GX7RfwACNr2h?=
 =?us-ascii?Q?I2byB1I0rvLpynYbk9tDJQbIpRE1K9W/I158H/XYMLb0h2lk/McvvgZKTUNp?=
 =?us-ascii?Q?eu8nDKzv9/MCWcRDcI91TE7vfPZiRJ1/UNDHzR6k/5NJQTTeE4Q3ZWDNiWED?=
 =?us-ascii?Q?PNcRsZxER5TQB8Dx67EuplX5AbVWVBNAK89McxwBzpcTYCwlFJAeCzLNCGRN?=
 =?us-ascii?Q?w0nO+LmJdlADlOqCS4GGz34OpvKWaKInAEYdwS3RQ81Tlm4LzoPMKkMINIgr?=
 =?us-ascii?Q?5mO5FmGFmXYFphZdNAyM1+SzYqkMn2QBYMO4M05RtJuobQmHDdMhyjaYi1xL?=
 =?us-ascii?Q?Kfr0wfBW9t6iI30LuqQtXtzSjKcO2cGSMGgu9IJ2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afdd3abb-0a94-45e2-8fca-08dbd1a7a161
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 20:03:29.9935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gUmIwnMZKJzM1D099LIjAvZJPAA2n075nC3cUzc8/tTJFxQQ2bCS9NSlG6/SUft311T/9nc69LNrGaGbTrJbQTIhM1i/c6xEA2D0xHAofno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7379
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Add WABB blit for
 Wa_16018031267 / Wa_16018063123
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Hajda, Andrzej <andrzej.hajda@intel.com>=20
Sent: Friday, October 20, 2023 5:09 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>; Shyti, Andi <andi.shyti@intel.=
com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Das, Nirmoy <nirmoy.das=
@intel.com>; Hajda, Andrzej <andrzej.hajda@intel.com>
Subject: [PATCH v2 3/4] drm/i915: Add WABB blit for Wa_16018031267 / Wa_160=
18063123
>=20
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> Apply WABB blit for Wa_16018031267 / Wa_16018063123.
> Additionally, update the lrc selftest to exercise the new
> WABB changes.
>=20
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_gt.h          |   4 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h    |   2 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++----
>  5 files changed, 153 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/dr=
m/i915/gt/intel_engine_regs.h
> index fdd4ddd3a978a2..b8618ee3e3041a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -118,6 +118,9 @@
>  #define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
>  #define   CCID_EXTENDED_STATE_SAVE		BIT(3)
>  #define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
> +#define   PER_CTX_BB_FORCE			BIT(2)
> +#define   PER_CTX_BB_VALID			BIT(0)
> +
>  #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
>  #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ *=
/
>  #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt=
/intel_gt.h
> index 970bedf6b78a7b..50989fc2b6debe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -82,6 +82,10 @@ struct drm_printer;
>  		  ##__VA_ARGS__);					\
>  } while (0)
> =20
> +#define NEEDS_FASTCOLOR_BLT_WABB(engine) ( \
> +	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 55), IP_VER(12, 71)) && \
> +	engine->class =3D=3D COPY_ENGINE_CLASS)
> +
>  static inline bool gt_is_root(struct intel_gt *gt)
>  {
>  	return !gt->info.id;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i=
915/gt/intel_gt_types.h
> index def7dd0eb6f196..4917633f299dd5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -307,6 +307,8 @@ enum intel_gt_scratch_field {
> =20
>  	/* 8 bytes */
>  	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA =3D 256,
> +
> +	INTEL_GT_SCRATCH_FIELD_DUMMY_BLIT =3D 384,


This was an artifact from an older version of the patch when I was original=
ly revising it.
I think it can safely be removed: It's not used anywhere in the patch serie=
s and is missing
a comment denoting the field size anyways.
Otherwise:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt


>  };
> =20
>  #define intel_gt_support_legacy_fencing(gt) ((gt)->ggtt->num_fences > 0)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/g=
t/intel_lrc.c
> index eaf66d90316655..96ef901113eae9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -828,6 +828,18 @@ lrc_ring_indirect_offset_default(const struct intel_=
engine_cs *engine)
>  	return 0;
>  }
> =20
> +static void
> +lrc_setup_bb_per_ctx(u32 *regs,
> +		     const struct intel_engine_cs *engine,
> +		     u32 ctx_bb_ggtt_addr)
> +{
> +	GEM_BUG_ON(lrc_ring_wa_bb_per_ctx(engine) =3D=3D -1);
> +	regs[lrc_ring_wa_bb_per_ctx(engine) + 1] =3D
> +		ctx_bb_ggtt_addr |
> +		PER_CTX_BB_FORCE |
> +		PER_CTX_BB_VALID;
> +}
> +
>  static void
>  lrc_setup_indirect_ctx(u32 *regs,
>  		       const struct intel_engine_cs *engine,
> @@ -1020,7 +1032,13 @@ static u32 context_wa_bb_offset(const struct intel=
_context *ce)
>  	return PAGE_SIZE * ce->wa_bb_page;
>  }
> =20
> -static u32 *context_indirect_bb(const struct intel_context *ce)
> +/*
> + * per_ctx below determines which WABB section is used.
> + * When true, the function returns the location of the
> + * PER_CTX_BB.  When false, the function returns the
> + * location of the INDIRECT_CTX.
> + */
> +static u32 *context_wabb(const struct intel_context *ce, bool per_ctx)
>  {
>  	void *ptr;
> =20
> @@ -1029,6 +1047,7 @@ static u32 *context_indirect_bb(const struct intel_=
context *ce)
>  	ptr =3D ce->lrc_reg_state;
>  	ptr -=3D LRC_STATE_OFFSET; /* back to start of context image */
>  	ptr +=3D context_wa_bb_offset(ce);
> +	ptr +=3D per_ctx ? PAGE_SIZE : 0;
> =20
>  	return ptr;
>  }
> @@ -1105,7 +1124,8 @@ __lrc_alloc_state(struct intel_context *ce, struct =
intel_engine_cs *engine)
> =20
>  	if (GRAPHICS_VER(engine->i915) >=3D 12) {
>  		ce->wa_bb_page =3D context_size / PAGE_SIZE;
> -		context_size +=3D PAGE_SIZE;
> +		/* INDIRECT_CTX and PER_CTX_BB need separate pages. */
> +		context_size +=3D PAGE_SIZE * 2;
>  	}
> =20
>  	if (intel_context_is_parent(ce) && intel_engine_uses_guc(engine)) {
> @@ -1407,12 +1427,85 @@ gen12_emit_indirect_ctx_xcs(const struct intel_co=
ntext *ce, u32 *cs)
>  	return gen12_emit_aux_table_inv(ce->engine, cs);
>  }
> =20
> +static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce,=
 u32 *cs)
> +{
> +	struct intel_gt *gt =3D ce->engine->gt;
> +	int mocs =3D gt->mocs.uc_index << 1;
> +
> +	/**
> +	 * Wa_16018031267 / Wa_16018063123 requires that SW forces the
> +	 * main copy engine arbitration into round robin mode.  We
> +	 * additionally need to submit the following WABB blt command
> +	 * to produce 4 subblits with each subblit generating 0 byte
> +	 * write requests as WABB:
> +	 *
> +	 * XY_FASTCOLOR_BLT
> +	 *  BG0    -> 5100000E
> +	 *  BG1    -> 0000003F (Dest pitch)
> +	 *  BG2    -> 00000000 (X1, Y1) =3D (0, 0)
> +	 *  BG3    -> 00040001 (X2, Y2) =3D (1, 4)
> +	 *  BG4    -> scratch
> +	 *  BG5    -> scratch
> +	 *  BG6-12 -> 00000000
> +	 *  BG13   -> 20004004 (Surf. Width=3D 2,Surf. Height =3D 5 )
> +	 *  BG14   -> 00000010 (Qpitch =3D 4)
> +	 *  BG15   -> 00000000
> +	 */
> +	*cs++ =3D XY_FAST_COLOR_BLT_CMD | (16 - 2);
> +	*cs++ =3D FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) | 0x3f;
> +	*cs++ =3D 0;
> +	*cs++ =3D 4 << 16 | 1;
> +	*cs++ =3D lower_32_bits(i915_vma_offset(ce->vm->rsvd));
> +	*cs++ =3D upper_32_bits(i915_vma_offset(ce->vm->rsvd));
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0;
> +	*cs++ =3D 0x20004004;
> +	*cs++ =3D 0x10;
> +	*cs++ =3D 0;
> +
> +	return cs;
> +}
> +
> +static u32 *
> +xehp_emit_per_ctx_bb(const struct intel_context *ce, u32 *cs)
> +{
> +	/* Wa_16018031267, Wa_16018063123 */
> +	if (NEEDS_FASTCOLOR_BLT_WABB(ce->engine))
> +		cs =3D xehp_emit_fastcolor_blt_wabb(ce, cs);
> +
> +	return cs;
> +}
> +
> +static void
> +setup_per_ctx_bb(const struct intel_context *ce,
> +		 const struct intel_engine_cs *engine,
> +		 u32 *(*emit)(const struct intel_context *, u32 *))
> +{
> +	/* Place PER_CTX_BB on next page after INDIRECT_CTX */
> +	u32 * const start =3D context_wabb(ce, true);
> +	u32 *cs;
> +
> +	cs =3D emit(ce, start);
> +
> +	/* PER_CTX_BB must manually terminate */
> +	*cs++ =3D MI_BATCH_BUFFER_END;
> +
> +	GEM_BUG_ON(cs - start > I915_GTT_PAGE_SIZE / sizeof(*cs));
> +	lrc_setup_bb_per_ctx(ce->lrc_reg_state, engine,
> +			     lrc_indirect_bb(ce) + PAGE_SIZE);
> +}
> +
>  static void
>  setup_indirect_ctx_bb(const struct intel_context *ce,
>  		      const struct intel_engine_cs *engine,
>  		      u32 *(*emit)(const struct intel_context *, u32 *))
>  {
> -	u32 * const start =3D context_indirect_bb(ce);
> +	u32 * const start =3D context_wabb(ce, false);
>  	u32 *cs;
> =20
>  	cs =3D emit(ce, start);
> @@ -1511,6 +1604,7 @@ u32 lrc_update_regs(const struct intel_context *ce,
>  		/* Mutually exclusive wrt to global indirect bb */
>  		GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
>  		setup_indirect_ctx_bb(ce, engine, fn);
> +		setup_per_ctx_bb(ce, engine, xehp_emit_per_ctx_bb);
>  	}
> =20
>  	return lrc_descriptor(ce) | CTX_DESC_FORCE_RESTORE;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index 5f826b6dcf5d6f..e17b8777d21dc9 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1555,7 +1555,7 @@ static int live_lrc_isolation(void *arg)
>  	return err;
>  }
> =20
> -static int indirect_ctx_submit_req(struct intel_context *ce)
> +static int wabb_ctx_submit_req(struct intel_context *ce)
>  {
>  	struct i915_request *rq;
>  	int err =3D 0;
> @@ -1579,7 +1579,8 @@ static int indirect_ctx_submit_req(struct intel_con=
text *ce)
>  #define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET / sizeof(u32))
> =20
>  static u32 *
> -emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +emit_wabb_ctx_canary(const struct intel_context *ce,
> +		     u32 *cs, bool per_ctx)
>  {
>  	*cs++ =3D MI_STORE_REGISTER_MEM_GEN8 |
>  		MI_SRM_LRM_GLOBAL_GTT |
> @@ -1587,26 +1588,43 @@ emit_indirect_ctx_bb_canary(const struct intel_co=
ntext *ce, u32 *cs)
>  	*cs++ =3D i915_mmio_reg_offset(RING_START(0));
>  	*cs++ =3D i915_ggtt_offset(ce->state) +
>  		context_wa_bb_offset(ce) +
> -		CTX_BB_CANARY_OFFSET;
> +		CTX_BB_CANARY_OFFSET +
> +		(per_ctx ? PAGE_SIZE : 0);
>  	*cs++ =3D 0;
> =20
>  	return cs;
>  }
> =20
> +static u32 *
> +emit_indirect_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +	return emit_wabb_ctx_canary(ce, cs, false);
> +}
> +
> +static u32 *
> +emit_per_ctx_bb_canary(const struct intel_context *ce, u32 *cs)
> +{
> +	return emit_wabb_ctx_canary(ce, cs, true);
> +}
> +
>  static void
> -indirect_ctx_bb_setup(struct intel_context *ce)
> +wabb_ctx_setup(struct intel_context *ce, bool per_ctx)
>  {
> -	u32 *cs =3D context_indirect_bb(ce);
> +	u32 *cs =3D context_wabb(ce, per_ctx);
> =20
>  	cs[CTX_BB_CANARY_INDEX] =3D 0xdeadf00d;
> =20
> -	setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
> +	if (per_ctx)
> +		setup_per_ctx_bb(ce, ce->engine, emit_per_ctx_bb_canary);
> +	else
> +		setup_indirect_ctx_bb(ce, ce->engine, emit_indirect_ctx_bb_canary);
>  }
> =20
> -static bool check_ring_start(struct intel_context *ce)
> +static bool check_ring_start(struct intel_context *ce, bool per_ctx)
>  {
>  	const u32 * const ctx_bb =3D (void *)(ce->lrc_reg_state) -
> -		LRC_STATE_OFFSET + context_wa_bb_offset(ce);
> +		LRC_STATE_OFFSET + context_wa_bb_offset(ce) +
> +		(per_ctx ? PAGE_SIZE : 0);
> =20
>  	if (ctx_bb[CTX_BB_CANARY_INDEX] =3D=3D ce->lrc_reg_state[CTX_RING_START=
])
>  		return true;
> @@ -1618,21 +1636,21 @@ static bool check_ring_start(struct intel_context=
 *ce)
>  	return false;
>  }
> =20
> -static int indirect_ctx_bb_check(struct intel_context *ce)
> +static int wabb_ctx_check(struct intel_context *ce, bool per_ctx)
>  {
>  	int err;
> =20
> -	err =3D indirect_ctx_submit_req(ce);
> +	err =3D wabb_ctx_submit_req(ce);
>  	if (err)
>  		return err;
> =20
> -	if (!check_ring_start(ce))
> +	if (!check_ring_start(ce, per_ctx))
>  		return -EINVAL;
> =20
>  	return 0;
>  }
> =20
> -static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
> +static int __lrc_wabb_ctx(struct intel_engine_cs *engine, bool per_ctx)
>  {
>  	struct intel_context *a, *b;
>  	int err;
> @@ -1667,14 +1685,14 @@ static int __live_lrc_indirect_ctx_bb(struct inte=
l_engine_cs *engine)
>  	 * As ring start is restored apriori of starting the indirect ctx bb an=
d
>  	 * as it will be different for each context, it fits to this purpose.
>  	 */
> -	indirect_ctx_bb_setup(a);
> -	indirect_ctx_bb_setup(b);
> +	wabb_ctx_setup(a, per_ctx);
> +	wabb_ctx_setup(b, per_ctx);
> =20
> -	err =3D indirect_ctx_bb_check(a);
> +	err =3D wabb_ctx_check(a, per_ctx);
>  	if (err)
>  		goto unpin_b;
> =20
> -	err =3D indirect_ctx_bb_check(b);
> +	err =3D wabb_ctx_check(b, per_ctx);
> =20
>  unpin_b:
>  	intel_context_unpin(b);
> @@ -1688,7 +1706,7 @@ static int __live_lrc_indirect_ctx_bb(struct intel_=
engine_cs *engine)
>  	return err;
>  }
> =20
> -static int live_lrc_indirect_ctx_bb(void *arg)
> +static int lrc_wabb_ctx(void *arg, bool per_ctx)
>  {
>  	struct intel_gt *gt =3D arg;
>  	struct intel_engine_cs *engine;
> @@ -1697,7 +1715,7 @@ static int live_lrc_indirect_ctx_bb(void *arg)
> =20
>  	for_each_engine(engine, gt, id) {
>  		intel_engine_pm_get(engine);
> -		err =3D __live_lrc_indirect_ctx_bb(engine);
> +		err =3D __lrc_wabb_ctx(engine, per_ctx);
>  		intel_engine_pm_put(engine);
> =20
>  		if (igt_flush_test(gt->i915))
> @@ -1710,6 +1728,16 @@ static int live_lrc_indirect_ctx_bb(void *arg)
>  	return err;
>  }
> =20
> +static int live_lrc_indirect_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, false);
> +}
> +
> +static int live_lrc_per_ctx_bb(void *arg)
> +{
> +	return lrc_wabb_ctx(arg, true);
> +}
> +
>  static void garbage_reset(struct intel_engine_cs *engine,
>  			  struct i915_request *rq)
>  {
> @@ -1947,6 +1975,7 @@ int intel_lrc_live_selftests(struct drm_i915_privat=
e *i915)
>  		SUBTEST(live_lrc_garbage),
>  		SUBTEST(live_pphwsp_runtime),
>  		SUBTEST(live_lrc_indirect_ctx_bb),
> +		SUBTEST(live_lrc_per_ctx_bb),
>  	};
> =20
>  	if (!HAS_LOGICAL_RING_CONTEXTS(i915))
> --=20
> 2.34.1
>=20
>=20
