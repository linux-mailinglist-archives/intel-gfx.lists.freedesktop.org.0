Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C95CA717A07
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 10:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB69410E491;
	Wed, 31 May 2023 08:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B3110E491
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 08:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685521575; x=1717057575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aaHspvFT8YJOc5d47TH5JV0tEEdHexTbZvalwwYVObE=;
 b=fy0Tjfhn/Tg7zfhsLeA8Fn3lCO8hwbotTHRj/xTrEKnY40kyMqtnctjF
 8y63yRWIGxzVNucOy9ItPDIAVI/AjnlrhDT5/cyOWUMwurJ1OxXjqRAFd
 pQd4oLAMeBRRIgbUmTYanWC6szlTX8wDzM2dTIx3t2UQfNKWJHnZM+dHa
 O57FBx3nQZ0rYPiyXVoyU/FGEo4VLxP6i3eZaJOB61gn6z/c/0PBEsM0u
 0ZXRQGXiEy0uoz1oFRZ07fS4ExB4HqWKIOOBvxF4KOD0qSX9L5vXTUBkt
 SevalFw1IuxOFHBu7Yd6Yugr+niaxyQi1lMaHjawhJwdGKciWa8uydqkL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="335519767"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="335519767"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 01:26:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="736571799"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="736571799"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 31 May 2023 01:26:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 01:26:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 01:26:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 01:26:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 01:26:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eFac+4PJpFC3X+8uyxLz1Ov/qxnsFzA3K6x5ZVMoUcfPX8sShvQMrYuqiEs981hKKuf0kLf/UW31dcLtrDIXEHSApPwpImmTIptWxyp4a2eAZdq53TQRz67AQx9w+roo/UsphRQyMD9NWFvVyRSsgLHy23uk3sysUpbAbndt52c1kF09r+gZn90GlGGFOY4qWmP6pYCEXefnALTNc9UEwrQ4SxGQn6HpWNQy8pGjgnjwVT89iD/psArI53PHBbhnD/YsZb6Ow6z58yIifMEV9TutmHiZubRp3+/jjM8wg9Ku42JziPeCwKy8JAhlA6063KJ9Mk0hRJlWfVwy1UtmWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vyMYcN0Ye9/rBctm7MPoZa5Um0S9huMuqIYSyxOY/JE=;
 b=kb3b6UaSHyfCnmenkVZZGPTWmignCDVTj2slRskdBoz5uic4iid8dwq7qzGSQYKi/ARnWoZMATQMVvUrZc7fdQi4jukaucG1CBGUu6ZLn7sFedpQlGzqlGWuJKnPsccuwJLaptI4Ddya4EvCPI46mhKycFYtnaz4saPQF3ApM4Sa+IviXICzoreRemEJySllw3BiCdqlDfjS2/CUJhbdIl4TDWm89m+tLSuAFpb///lFwrjDoVxihRlKflYByWEbNTck15X0d2p0/ldz7Vlh6Mt0/nC0oteLwonO2KgTfZ8Qar3897TJ0m7SZx/Ihj8fEJlHP9xvhNcZKMrr+v6TEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 08:26:10 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 08:26:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Allocate a multipage object to
 hdcp_gsc_message
Thread-Index: AQHZkiPMZYyJd5vfp0qOUp1iw/jNN690DqrA
Date: Wed, 31 May 2023 08:26:09 +0000
Message-ID: <SN7PR11MB67500ACF63391EC9049A1057E3489@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230529114902.1528192-1-suraj.kandpal@intel.com>
 <20230529114902.1528192-2-suraj.kandpal@intel.com>
In-Reply-To: <20230529114902.1528192-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW3PR11MB4554:EE_
x-ms-office365-filtering-correlation-id: 5b54622f-8e54-4aaa-264d-08db61b0b01e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E4cO1icQxkp/S17f3zU9uyaJkC+f0LZEp1haXwXKdrSCCI09s267i7cUsAKs0yHUgzZTUzPaVnOYimYsZQM9dLnRP3FmjOvBQsrEIjmHQxOT8NJudAr5V4eE7xFcuzeYQN8rgDvaX1ZyXjxDwYxsCyKVOwEHZvcrhZoGLn9k9uTxrZUL4F+vTNge2EkCGNcFmL7IdAgoaC2U2udLhfYTVEI2NjPFIaDaMxMFcSbDMgNhTziIR3jDnaQOYKS6odigsuGJfLD58tjX2K96GBws2PVx8DFPcRLKvTrN0e3U9cqVSDKpmyrAfR5AnQDY/FJeFd8uKprMB/9JEFJRv7X1eUklH2wOnRyWMDhcYkPpyDmCm5Yog0E2sMn7eZzS2kMChoKgwgBSCrMBQc8CovHkp9C6TVJxotFnJ8cCeFkYRf/L0fvIwrRmwKyzUcuJCT/yrvFUq8XAHvTcbIoEbRP5LYuvfC3tEu/O/WhsKAlz2b1fXqMgUvsodkSwv/kWbrd6H11hvST4nIk9512qdaLRZTNYf1fFaYN/0H5zsx7hqgGNXXdTuZqn+RaLSJjprrcnPUgjlk5eGobY7bKpOnopqO5kpEvN/xzMVd6Rb04eKSLeg8jucGjFEvVuEaalpkkq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199021)(71200400001)(478600001)(54906003)(4326008)(8936002)(8676002)(52536014)(2906002)(86362001)(33656002)(38070700005)(6916009)(82960400001)(76116006)(122000001)(66556008)(66946007)(66476007)(66446008)(5660300002)(316002)(64756008)(55016003)(38100700002)(41300700001)(107886003)(186003)(9686003)(53546011)(26005)(6506007)(7696005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ixVRXskUFnbP90RZo0KWR4vigIlUZus/aNK+HY1cBkVdKuLHH1D0lANt1vgX?=
 =?us-ascii?Q?X+uBUXQHQfmaU9xXPOxF317Viq8I77m4FD4Q2l+8muwJWUE/tZrIwT1tG2+i?=
 =?us-ascii?Q?2DzwMCDGV3RHvbva0mwIgi2RIRAKcKThnNRGE/Ai17+xZXgXsK7tjgMkSAw2?=
 =?us-ascii?Q?tKb+uBJPUZoSbt2kTkHUT1Wb1l9LQ2HKNyGEKukDiRqaEvmleCee//OImjHa?=
 =?us-ascii?Q?XRP45PGuGoNCBQEpB/Uu8JBmgn+4tbey4aF+Tf9LFErQR7f43u6/Z9KnbriF?=
 =?us-ascii?Q?FrsSI4ajUpwTkex6n17khDxYK2OUqW4fGrvVckTQemfKVAVj8BwEegyV2gOA?=
 =?us-ascii?Q?5ImSbLh+73BtKvwQtQ8ItARqV+hGiXRoX36Veig3BTcH+ZcEW0QdIrCFljbC?=
 =?us-ascii?Q?1Sfg1tX++Dy8qmw7qPAIOgO6pLsvAncpWFfcba5GZjEhThoDv5E3Dfkp1Sr/?=
 =?us-ascii?Q?PVyUpOoezRVfq5Yaaji2l4Ob3DFt4vrww5x/ZfwkXpjBAdoiSfw8bDXoo61I?=
 =?us-ascii?Q?sUWh4btTBS1igqC4PrhlFShN1NYjbpW+27PQG9akRBH5r5KKn9lwAfTRgiOS?=
 =?us-ascii?Q?By2vWX3N7bK7xfBSzJf3rNcDgjTx1UByvfJCgHtlziPfspTADW3Q1jPJTNrt?=
 =?us-ascii?Q?lgjOCwsuTP24T+QlpmuoL89JuLa4Yy0vpvfLdCGCex9AtbvxQu7Db1vYyZNI?=
 =?us-ascii?Q?Ybr8q+rTQsAUiP45i7f0etEiLGqWRmHU+3r1BkohBhnGoZVJ3tE6e7lUKUod?=
 =?us-ascii?Q?yRoBFc2Tc/TqNJDGmNrQJ0t2NlK/xTYq843NM8XCztpaOcHVXvUY8KoZuUVe?=
 =?us-ascii?Q?LoXI9HuGJpAF0Wc/zSFFWnDb0QEVt8VqTrDfRezxRrY+c34H1fteTC1IXxCT?=
 =?us-ascii?Q?kd/P29I2+8lArlaj6wQAsOv2ZCCvP9mlW/lbBXnkufdWbe3dagiDBJfwuxNM?=
 =?us-ascii?Q?MZ1IccQxXfSoHrATfOUmjcB+kZ2YtsdFLwyk/qGKeYHyov0d1dQMsjDSWmzB?=
 =?us-ascii?Q?D4ojTRhRb93gsO7GpngpVtTYdLq1s8X3dvZS+Wohk/lzNf5z8N2+KYK82VUE?=
 =?us-ascii?Q?KxRJqCcb1Ld/caWZufd8jcP4I0WSBTNbn654gKc4cE8C8bBeIES0pWXNcty6?=
 =?us-ascii?Q?qnDbSM9iO/hn3Vx27HBGqnmdSn3Lbda5uimGeGlqXllhEt3p7wtKAIaHJvB6?=
 =?us-ascii?Q?yDYn5n4EXiXIKWLNFGT1xXGVAj+j/OyMxE58uBoXMuURAtYW4rUby5qi8/+N?=
 =?us-ascii?Q?hc9vO0OmzshNlNdId0F80cLM+TiJ+5h32i3LgxdjSCxoxzE6NbXVJemtd00e?=
 =?us-ascii?Q?L4A/UmaI7j73KtpDP9LXE4JKHYKUkxLLRuU5ayTZ0NyCbzpDb2qM0MSynwrH?=
 =?us-ascii?Q?PDhile0FN6NLsy2BIi56O9IZwWYAOLV0z/9HPGit69+yBjxqhCst+BeoS5U1?=
 =?us-ascii?Q?idMbKL0c/PVf1fJnN09LkTgbBLLH6+UOAmWiSuo/W2seElecVXiqroCrL0ii?=
 =?us-ascii?Q?6uWOnQDzLV8mIFJCGX6aO3bnrLFIM2Ee4ee+3q2Vsl8UufHmDsHaGZJFDY7F?=
 =?us-ascii?Q?3cBQNo5jKs5IO3ztwl0avG7LieDyw1YF7hkNej/J?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b54622f-8e54-4aaa-264d-08db61b0b01e
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 08:26:09.9575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F/iClI1lxeObA9FJBgiv+gOD7XyQ6OPnALeUs+UEb8OJMAKhgeCrHv2xW44XCsKm9JU+KPHprtuXhH2QnNL4aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4554
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Allocate a multipage
 object to hdcp_gsc_message
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
Cc: "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder!

Regards,
Suraj Kandpal

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, May 29, 2023 5:19 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Teres Alexis, Alan Previn
> <alan.previn.teres.alexis@intel.com>; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>
> Subject: [PATCH 1/2] drm/i915/hdcp: Allocate a multipage object to
> hdcp_gsc_message
>=20
> Allocate a multipage object that can be used for input and output for
> intel_hdcp_gsc_message so that corruption of output message can be
> avoided by the current overwriting method.
>=20
> --v2
> -Change approach from allocating two objects to just one multipage object
> [Daniele]
>=20
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 55 +++++++++++--------
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
>  2 files changed, 34 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 7e52aea6aa17..72d1e261d0a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -621,24 +621,26 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	struct intel_gt *gt =3D i915->media_gt;
>  	struct drm_i915_gem_object *obj =3D NULL;
>  	struct i915_vma *vma =3D NULL;
> -	void *cmd;
> +	void *cmd_in, *cmd_out;
>  	int err;
>=20
> -	/* allocate object of one page for HDCP command memory and store
> it */
> -	obj =3D i915_gem_object_create_shmem(i915, PAGE_SIZE);
> +	/* allocate object of two page for HDCP command memory and store
> it */
> +	obj =3D i915_gem_object_create_shmem(i915, 2 * PAGE_SIZE);
>=20
>  	if (IS_ERR(obj)) {
>  		drm_err(&i915->drm, "Failed to allocate HDCP streaming
> command!\n");
>  		return PTR_ERR(obj);
>  	}
>=20
> -	cmd =3D i915_gem_object_pin_map_unlocked(obj,
> i915_coherent_map_type(i915, obj, true));
> -	if (IS_ERR(cmd)) {
> +	cmd_in =3D i915_gem_object_pin_map_unlocked(obj,
> i915_coherent_map_type(i915, obj, true));
> +	if (IS_ERR(cmd_in)) {
>  		drm_err(&i915->drm, "Failed to map gsc message page!\n");
> -		err =3D PTR_ERR(cmd);
> +		err =3D PTR_ERR(cmd_in);
>  		goto out_unpin;
>  	}
>=20
> +	cmd_out =3D cmd_in + PAGE_SIZE;
> +
>  	vma =3D i915_vma_instance(obj, &gt->ggtt->vm, NULL);
>  	if (IS_ERR(vma)) {
>  		err =3D PTR_ERR(vma);
> @@ -649,9 +651,10 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	if (err)
>  		goto out_unmap;
>=20
> -	memset(cmd, 0, obj->base.size);
> +	memset(cmd_in, 0, obj->base.size);
>=20
> -	hdcp_message->hdcp_cmd =3D cmd;
> +	hdcp_message->hdcp_cmd_in =3D cmd_in;
> +	hdcp_message->hdcp_cmd_out =3D cmd_out;
>  	hdcp_message->vma =3D vma;
>=20
>  	return 0;
> @@ -668,7 +671,7 @@ static int intel_hdcp_gsc_hdcp2_init(struct
> drm_i915_private *i915)
>  	struct intel_hdcp_gsc_message *hdcp_message;
>  	int ret;
>=20
> -	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +	hdcp_message =3D kzalloc(2 * sizeof(*hdcp_message), GFP_KERNEL);
>=20
>  	if (!hdcp_message)
>  		return -ENOMEM;
> @@ -691,6 +694,8 @@ static void intel_hdcp_gsc_free_message(struct
> drm_i915_private *i915)
>  	struct intel_hdcp_gsc_message *hdcp_message =3D
>  					i915->display.hdcp.hdcp_message;
>=20
> +	hdcp_message->hdcp_cmd_in =3D NULL;
> +	hdcp_message->hdcp_cmd_out =3D NULL;
>  	i915_vma_unpin_and_release(&hdcp_message->vma,
> I915_VMA_RELEASE_MAP);
>  	kfree(hdcp_message);
>  }
> @@ -769,11 +774,11 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  				size_t msg_out_len)
>  {
>  	struct intel_gt *gt =3D i915->media_gt;
> -	struct intel_gsc_mtl_header *header;
> -	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header);
> +	struct intel_gsc_mtl_header *header_in, *header_out;
> +	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header_in);
>  	struct intel_hdcp_gsc_message *hdcp_message;
> -	u64 addr, host_session_id;
> -	u32 reply_size, msg_size;
> +	u64 addr_in, addr_out, host_session_id;
> +	u32 reply_size, msg_size_in, msg_size_out;
>  	int ret, tries =3D 0;
>=20
>  	if (!intel_uc_uses_gsc_uc(&gt->uc))
> @@ -782,16 +787,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
>  		return -ENOSPC;
>=20
> +	msg_size_in =3D msg_in_len + sizeof(*header_in);
> +	msg_size_out =3D msg_out_len + sizeof(*header_out);
>  	hdcp_message =3D i915->display.hdcp.hdcp_message;
> -	header =3D hdcp_message->hdcp_cmd;
> -	addr =3D i915_ggtt_offset(hdcp_message->vma);
> +	header_in =3D hdcp_message->hdcp_cmd_in;
> +	header_out =3D hdcp_message->hdcp_cmd_out;
> +	addr_in =3D i915_ggtt_offset(hdcp_message->vma);
> +	addr_out =3D addr_in + PAGE_SIZE;
>=20
> -	msg_size =3D msg_in_len + sizeof(*header);
> -	memset(header, 0, msg_size);
> +	memset(header_in, 0, msg_size_in);
> +	memset(header_out, 0, msg_size_out);
>  	get_random_bytes(&host_session_id, sizeof(u64));
> -	intel_gsc_uc_heci_cmd_emit_mtl_header(header,
> HECI_MEADDRESS_HDCP,
> -					      msg_size, host_session_id);
> -	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in,
> msg_in_len);
> +	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in,
> HECI_MEADDRESS_HDCP,
> +					      msg_size_in, host_session_id);
> +	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in),
> msg_in,
> +msg_in_len);
>=20
>  	/*
>  	 * Keep sending request in case the pending bit is set no need to add
> @@ -800,7 +809,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  	 * 20 times each message 50 ms apart
>  	 */
>  	do {
> -		ret =3D intel_gsc_send_sync(i915, header, addr, msg_out_len);
> +		ret =3D intel_gsc_send_sync(i915, header_in, addr_in,
> msg_out_len);
>=20
>  		/* Only try again if gsc says so */
>  		if (ret !=3D -EAGAIN)
> @@ -814,7 +823,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  		goto err;
>=20
>  	/* we use the same mem for the reply, so header is in the same loc
> */
> -	reply_size =3D header->message_size - sizeof(*header);
> +	reply_size =3D header_out->message_size - sizeof(*header_out);
>  	if (reply_size > msg_out_len) {
>  		drm_warn(&i915->drm, "caller with insufficient HDCP reply
> size %u (%d)\n",
>  			 reply_size, (u32)msg_out_len);
> @@ -824,7 +833,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
>  			    reply_size, (u32)msg_out_len);
>  	}
>=20
> -	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header),
> msg_out_len);
> +	memcpy(msg_out, hdcp_message->hdcp_cmd_out +
> sizeof(*header_out),
> +msg_out_len);
>=20
>  err:
>  	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 5cc9fd2e88f6..cbf96551e534 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -13,7 +13,8 @@ struct drm_i915_private;
>=20
>  struct intel_hdcp_gsc_message {
>  	struct i915_vma *vma;
> -	void *hdcp_cmd;
> +	void *hdcp_cmd_in;
> +	void *hdcp_cmd_out;
>  };
>=20
>  bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
> --
> 2.25.1

