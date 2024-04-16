Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132AC8A6587
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E98112AC9;
	Tue, 16 Apr 2024 07:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bm0ZyeWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D19112ACE
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713254229; x=1744790229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bjY53aXllxIK8rIBrdHy7kbw5xejSbpWLrXRfKgi3Uw=;
 b=Bm0ZyeWQocYhbLCO8z301Bo7LtY5mb70e/xb/yo2AwqgeijHXK5k23Z3
 p20ZMB23nb22nthWwkfar6mRa6MTnwRVBqm5h+89w1MVrwj3kbCI5SAyv
 hGrqDB7DoGL1YXToyRN9uZRZBbfNtUrHYM0TkkUuRw3njG1riQ35ujj7q
 FuXnnGckpTqvOuIx5PNK8CRrqz86/bqg5rq1JCBibNTP5FekE4sHt4Bqf
 7uvsG8tgkRPaK43SrdIvo+pL5ml8TWL3Txp3FwitkxfU0e76JszWakKDi
 1RQ93AxMJ+JBqV5vPybN8irdZQ8l2KOkxP+3Enqcsf3YDfK2yB0jgV+ni g==;
X-CSE-ConnectionGUID: pQQbqFf9TiSa1fR/fQDwdA==
X-CSE-MsgGUID: dxfxaVFRROe9rlvGpn4t5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8538723"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; 
   d="scan'208";a="8538723"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:57:08 -0700
X-CSE-ConnectionGUID: 3V5PsXezQo+lcXwcUbz2yw==
X-CSE-MsgGUID: gnXruxyITRC7fYZkK//OVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22262374"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 00:57:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 00:57:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 00:57:07 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 00:57:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HtXlf9BRhDjkyCHBUQ3NnqCpUUh/9Hb8sgD5HIjGB45IWrmMpRnk2r5YAGxi3NAICv2m8/H+KDJw8PSaTUDaXKyOMuqhCrNWuhBwl7h0+EeoaXzdK0F3c1ps1TJcE8x4P719uksdH9Hc1VgLatF/KSjN29Ux9r37S5qPyz0CHJHtG2f5nBZUWgU5QLqnezyJnfVq2hcoEujFOGYrikMrfPOnriQLjpN3//r1CyDqyKXgSwjoInYQpxDf+RlDiC1vEZzwWiZSKigQeCqlXlOl4gM5CkEAJPrcU7VY+QLHL3GfaIIP3NuAsmLVaJGIDV8cPBwQQpMHlaXIwKUAuj+nJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ezb3DE827gYn5OyjIBZq07953sPEAGNkYz3m/DThTR8=;
 b=lHrOaeRS25RP/6a/5/6r8VsQKnpp6HHSbuURLOonjA20YkbEdROhdGmFfWNWnH44uhKjGnoy6r+AhJ3pOkwqSX6aVzulmJZQVVwQ+3PrwLRy+3tHgOTRMdhG/2mHmjGukojzdgsRSjzbChw6o3lNXwH6ay1bWUopmZ+ZlhZw1W2WmbasnuXWIX5z773YcjN+W8r3RP53Q9nAdpCyhOhAha5ibYq2Y/hN2dFBFlE4WhvM8DeJfF/uqQm2snB0WumP5EpT8j/oqFx03Ek7rnE7Y0QMNbh6YvbzzFJp6wq0FcQuHA5d2AkQMbeGqe1kDej4PZym0YYijM8hXq1ODhbAFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DS0PR11MB7460.namprd11.prod.outlook.com (2603:10b6:8:142::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.27; Tue, 16 Apr
 2024 07:57:05 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::3e5:27b2:966b:5a2b]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::3e5:27b2:966b:5a2b%4]) with mapi id 15.20.7472.027; Tue, 16 Apr 2024
 07:57:05 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Topic: [PATCH 2/2] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Index: AQHaj8/vXhHRvauAgki5iqi5yH3Kl7FqhthA
Date: Tue, 16 Apr 2024 07:57:05 +0000
Message-ID: <IA1PR11MB626625D31DB82486370D4525E2082@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-4-suraj.kandpal@intel.com>
In-Reply-To: <20240416072733.624048-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|DS0PR11MB7460:EE_
x-ms-office365-filtering-correlation-id: e4ddd5c7-6431-4e2b-1aba-08dc5deaceee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tfhj/ljwXmeG8lwajpKokyXOYOjGEa/LXw1kjcZ+3+hq3pKb100oGSlE5K1Zl2CuafyWvRUezYwtab5Mc+IYCc6IgPel/c6Mzw+tmpqqBi11HEdTNTQiUQ1+1ceoUtGIChn7ff//Ey1fyN6vMDekqi/YDJdal1xIdzHhBYQUonbnUl3vC4Az1q5v5RwzZEYS6j4YqPjdTPL5hdJtHlJe1HP0n4zUvU6JM9c74rxMC4KhVPB8NVhI9r5PZG8vtv5DJ+GR5nFyNsNrog8l2ktoCxA7zs+luTuh5jbG/ouChN1ChKh5aqQgfdRz2D1C3Nu0alncwQVBFMvjE5DGL+PlbvEyVHWukqaqaLPrhPAizQDhzwP85vJDQocaweh2ZkPpzxzZTRVrBH70v15AtGK9OX4Sla1CXBed2Z8JVtt//YtZjdv7q1dW6wv3BxZAgjEBa3eK9hNffI87eYfegFgtk+v2vI3bWsYfxRz+fH+fNN+j2ugX0h4+Nr4I707IlpWBeZjytOVydnK6T5sq1b6Tusl/cJo8ZObjNj8XTtuhIn/y75lyGf2sjKqLuDjPEixjvoVU6hCNAjZeU07XMkITPsxDn4QpBm9GmA6Xkyi8btmd6G+ELSiw1fG4DouxR4KHvXWqo22mUqntr0duV5Dd0Xy6+gsPY0b+xGjmrL1kln0VvGOPDPRPw+EgWrMPc1+qSNuvsizwfy3Vltavi9FFsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3oYKLklIgJOAUfEw0KIMhuNfcEm/Mtl6oFlWChU9MEcI1uGtpseVVx5m2e6e?=
 =?us-ascii?Q?sAefwHyW/5n9N6EhuK2Ri/h/QmSfODjVgFvkTzyuTVQG0y4hNMOtzBfHCl6H?=
 =?us-ascii?Q?kQWVNr2wYt7vnRbyH/CfX77zEImHQHhQVsXT80ti3q+9899+D1ER5zZycn5o?=
 =?us-ascii?Q?CY5SaC5CJTFqdaebr9z5b3fI90zZRgkWWj18kCvT6VdCp1glczDHXDm2n9Op?=
 =?us-ascii?Q?IaR+8G8vh3R2KAyR/CdP6k209Sfq63iF6oiaIPMKhI2F9yrnpSHLgtOWydNx?=
 =?us-ascii?Q?3EuUHnjV7fkRaf7+6bGhUOTrt+D00uofBLDV1Wrh+4H7ZY33IGaQ/84tGMmp?=
 =?us-ascii?Q?D1Rt7DzVD5PiQ2FLU9OPgKHwaDeZOivu1odx5hYz4mr++vmMaU5vORDD7vfY?=
 =?us-ascii?Q?UbDuuPeH83ZBKa6UtCZKmtCC0ASIq7aHPEEScxNS1BCtfirG3Fs5EhBSY4k6?=
 =?us-ascii?Q?mBiNRS5YyUfKktzyVZn7NrRSt++ldOZvM+0mWfJvnMzrrIspTKdQ0A2xbVA/?=
 =?us-ascii?Q?GCVR1vRawwDRyI590kxQof+u55dZe+kl+ilO4xfKjLEDl/yNhBAGnm3Yrj7w?=
 =?us-ascii?Q?DnaRsCNyTZzozrdX67BT7xDBTmFuYftBQhch2CS5KXCZWjoKoDFcNpuJfo5D?=
 =?us-ascii?Q?aMgmYBumQrhCWid+FUe8+Z+t+o5PEH32fCPvAFvXRcNYhN7/LE8TSH+4sVCm?=
 =?us-ascii?Q?B/FLVszodU+oHGdcFoYcGpyxeKPr/ki4qVaZXPzjaDuk4p6Eefq4VIgSRCjW?=
 =?us-ascii?Q?GDnUb5YhEj6zJvspuS7drybukSPZyiw/ZPTc1IIuWj5C18Fn4OelP3AdvL1C?=
 =?us-ascii?Q?Kg36Os6k4Xn10xhHPMYAi4vmkQ+UkCHQbFJJyyuNhR/t6jhEarIRU+05INdV?=
 =?us-ascii?Q?FaQPt3UTsjRSVrMnk1kEGqkmGBGkRlnqSaVkwVnIip2+J1oUfUY51aj01m+s?=
 =?us-ascii?Q?d2VTNDsqrhsj3Pw1OE/Fv6B7oWb/lxZ5Ooylz7zv6VSRkxFltCudlZV8GucM?=
 =?us-ascii?Q?kPdUwhJ4Sj/Dk88nxllulXWEKIK8CiHgNCnGANct/+/7lEh4q/X+suLtA2Y0?=
 =?us-ascii?Q?jON4LOJ0M1/W9XNEaaH+XcyuhOikyoYuouV2elw9Qxl25Cp4UxTMjHYESq46?=
 =?us-ascii?Q?xDdPAYObSO89Lc+eYAMYeHH5bDLy6UbGOKJqc/Cx0TRw1JRVSRogqQch9j0i?=
 =?us-ascii?Q?dg95+mjiY10fWi/a3qCZFusyaF8OyvErjFGsLkT0jktmYiye/L+JhMVnuG4/?=
 =?us-ascii?Q?zzN+fc8AF9IS96fIpiswtfNmxgZQqfZ4MXgk+ziY2GvZ7Fsb46y8iAYHRgk5?=
 =?us-ascii?Q?btD0nuQ1UnO9hwgUXPUa9xG9D9V4OiCGhpz/bTuUzmdzG9p8jyAidoZHBAXj?=
 =?us-ascii?Q?YY4avbzzBSU113rDDujMb5YzNOyhlACNB/llcs87eMDiDOZtGzMsA+bff+C9?=
 =?us-ascii?Q?OQdobm+dYJy/s9KFUDR3CM7kaeiKYBLAQinQSUWbOtIgh/m4RQFwM/xt/3zk?=
 =?us-ascii?Q?d8okPgDEILkr51I5tmZ0idJcSn2BkOUVikCGjsGiqAc/Z2YfKRuwerTo2ikT?=
 =?us-ascii?Q?LomlryWsNmx3XZ/yT9PfQhnUJqbAXbFyXVkPOzPfFfajEj3/Ltr8zZ721OrE?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ddd5c7-6431-4e2b-1aba-08dc5deaceee
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2024 07:57:05.5103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oj3DGbLlt3T7oSdVhepRKecHsTLVoqDhnWIMBuaW5XqzfNGQHx31F78VlLhqbCe2n2aeemGnTPD3IoG2HCpO8w7rG/lfthzM+nvKG0Dn028=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7460
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, April 16, 2024 12:58 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 2/2] drm/i915/pps: Disable DPLS_GATING around pps
> sequence
>=20
> Disable bit 29 of SCLKGATE_DIS register around pps sequence when we turn
> panel power on.
> WA: 16023567976
> Bspec: 49304
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3078dfac7817..a912e712ca63 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -919,6 +919,7 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u32 pp;
>  	i915_reg_t pp_ctrl_reg;
> +	int dis_ver =3D DISPLAY_VER(dev_priv);
>=20
>  	lockdep_assert_held(&dev_priv->display.pps.mutex);
>=20
> @@ -948,6 +949,13 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>=20
> +	/* WA: 16023567976
> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (dis_ver >=3D 12 && dis_ver <=3D 14)
Hi Suraj,
You might want to use IS_DISPLAY_IP_RANGE() as it is fixed IP based range.

Dnyaneshwar
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 1);
> +
>  	pp |=3D PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |=3D PANEL_POWER_RESET;
> @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on =3D jiffies;
>=20
> +	if (dis_ver >=3D 12 && dis_ver <=3D 14)
> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |=3D PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp);
> --
> 2.43.2

