Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9837C6A27DD
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Feb 2023 09:15:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBF410E10B;
	Sat, 25 Feb 2023 08:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A3A10E10B
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Feb 2023 08:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677312896; x=1708848896;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VPJrNkdf5bxRHq0ewHnTFKxuBG0/3lYPMSndsnC7mhU=;
 b=ZWJex6lNx/3KQoHhYnQLk7pYM/Rd9zWN2hJtizBRPPfWsJl0egDlej6f
 v0LqFwtDOAH0ypOlsTFfPyMquJO3LLog423PWiGp8b7Dfb2T4pa5cV3Rg
 LusFIUSer2hCm6RY9NXG8UAe5+z0xP2vSgOP1JdHls+tjhqErJs24xIpi
 vIasNYOdct3b+/qPByVVJUCKXm01fpP4VbohpQI1kjfybPSLmUf3feHLQ
 6IZluGYh7iSBv3yTaUHvdj8GvyIWLKyYsYePxBv+DMlfkQUvdARNEmq02
 Sum7Ayhox1pTXtDIMbcPaG3Db2pBlvQYNFsrNyaFl8tPF9POcHR3A5pH9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="419876881"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="419876881"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 00:14:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="622977487"
X-IronPort-AV: E=Sophos;i="5.97,327,1669104000"; d="scan'208";a="622977487"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 25 Feb 2023 00:14:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sat, 25 Feb 2023 00:14:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sat, 25 Feb 2023 00:14:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sat, 25 Feb 2023 00:14:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cN8e5oNgxVZkI9uKqEYx05d7eM9UhhL5xqmovhrBzbwwqn5JhBTc/YhI2dSIy+UtuWH4ntLACm+/TdZqtYM9fQR4HsOvXSqBgFdyN0knZZbVALALQ0xd546TRgcRuBTs9t+dGa/GwPIPlgrviTGZ6xITNQ/+YTdP6XY2O3gNGbdDnSrAlo77Fd7Le2ApB56dMFYPeKcpaUVXVaydS6oBW6rt67/LaacnjXjsX05v0UIFqFa84evD565YXlL5pqRYTd25MRbUZr7My3yM5xuwHb/N107xzLGNw97MbEdKPOYozrlx3EefEwHcPuqz+NJKBVDphPVNYvcQrGu4sSUioA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y6lJxERw5B4KF929uzTiTtxkA7Pxy+WC+zUX/D83exw=;
 b=SozmT1sx9qhJxYe9O5ZKWP5oDyXxMFj/mx1sJ/A0AMBsnY6EeynBddpj3JTqLuxtQL3fbmN2i+BrrJJOhfANoq1QHyyEo1u9Dn4qM8isWu8R8hIROR9HrhBL34lhhi9jkxwI+sW/MUhUD1dahIpRxvcqsRZosJ+Eg7LwtE0Kp8nu5mMh+KqkSVlhKzFe5uPJuMyyjIhHsDJTKZhBhsPfnbBw7GevQ2/ShPI+5IynzsUjcmMxgjEW2J3R/aC2ekhN3Hlt73LRv/CiNatgbc4my5fTAHzKVatg3dDuPMpzN/Eotl3/l3zbCO8AZmeBInnF/001i53iGVnq9culgBDbGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB6799.namprd11.prod.outlook.com (2603:10b6:806:261::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Sat, 25 Feb
 2023 08:14:17 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::53d6:17ce:f612:ba23]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::53d6:17ce:f612:ba23%6]) with mapi id 15.20.6134.025; Sat, 25 Feb 2023
 08:14:17 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/adlp: Restoring ADL-P/RPL-U IDs.
Thread-Index: AQHZSG3qMVCJhKQVV0+k1DIEg6UBiq7fUE8g
Date: Sat, 25 Feb 2023 08:14:16 +0000
Message-ID: <SJ1PR11MB612930FB5FBE789AB275909CB9A99@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230224163444.818286-1-rodrigo.vivi@intel.com>
In-Reply-To: <20230224163444.818286-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SN7PR11MB6799:EE_
x-ms-office365-filtering-correlation-id: 256c827a-ce71-479e-14a4-08db170849e2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z75/6fAvC36jIpSh2Tk7WiSzYGpPtVrNChTd3subZNKzZPANv2uomnEPq4vmhPRluRrbQxJ0zpytuYz7P/n65Je8exv0PoDYQLN86XlALGFltpLzFzocn/jcIl00QEIWcbOZ+WH9vBkeyvWYF96/qCcS16Acv11iIQAnfiHJzhdTW1uQLomDkqGg9y4eGDDc8Lcpuu7u/CWGiYs6Y96z3DG27Gkk2WRnDmSV40jCorKoA9sqZVkyGmfLF71UeoTVl8hzA3BAN4t0XFH3BjN+2UBv9P0ghi2gaHzdSWeLZsZyQ5O7CBTR07eX6Hn/1/7K5mV6L4Wo83MagMQgHsr3Xsh2Caf9twPc3FzwH4CN2JJWLE8lHFvAkAd5LM6LgZu74PT+ATPKC6WrU/mK2nYmidrAVR02UJHGj8BTwnlPGznTmFlGXd/LB46SsEM2r4XIh9RHLRZFkIX3YSV/LFf7AmiC00AsahZjnF+BxOAI5armt3/rfDKH1dJLVwy6lsQTMrGTDjVpMoVZN+BvmT6A3ExpKqVSJs2hI0x5xP4M0qU+fcXVWHGsHAY1jk3KTJcIBJ0mPpFhvDDz4x4cruvM4olYRZsg3r12W21OGi1ToyP5rXL6frkOg9kRyfZnn6yITBEHDULLupfzninhQa2iS2m8MH/izzLFaojvKnvDUFot8YQF+wRpD5h47GuJoopwUJ4f/FpxA0fgcZeLz8vYqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199018)(33656002)(71200400001)(83380400001)(316002)(110136005)(122000001)(107886003)(478600001)(52536014)(53546011)(7696005)(41300700001)(6506007)(26005)(9686003)(186003)(8936002)(86362001)(2906002)(38070700005)(76116006)(55016003)(4326008)(66446008)(8676002)(66476007)(82960400001)(5660300002)(66556008)(66946007)(64756008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o5kqILGBFDLQPCPTazIVCaX+Fo2nWrhB6AOGy9chm6kR1XCQtQeXFqIml9eI?=
 =?us-ascii?Q?alt/NBD20pFjwJCd46JpDyM0KPMZTd27vUxnT6UUstwSTD0RPKqBRcttb0Lr?=
 =?us-ascii?Q?vTPN7qngUWOg8jolNABt98uxbbJxePnAIODoSL/yZGYW8rl6OPOiQAkkIcus?=
 =?us-ascii?Q?yws92pH59kl7o+g+LVGnFC2Dn9SuzCg0q9OP2neQ49XHkwN2wZVUWh3N+xF9?=
 =?us-ascii?Q?HHy9U3UbnucptmuT8icO5CeL2856m9a6Vv5Phb6kVFXWFe0TBM5BuFxVaBMt?=
 =?us-ascii?Q?Wfc9qSr5dyw6DFZR7O3yzr18D4x+FZdevAaABp60maUISWs0wvxoIDwQm87J?=
 =?us-ascii?Q?tI/vxZ1XFH6OxjOUdeosouj0uYcCUJVuCdKFwrM3j6F8Oq1TxWfyh2GmHCPE?=
 =?us-ascii?Q?9V0fbAySfD4x7DejTQLNKv6LiOQVae8IEjtatSioD+8aKt6ZhFKSJf0v5LSj?=
 =?us-ascii?Q?TM8sUQ4aEXSC8E/kdkPPDm+oq0JDUuWDe+vuWd7Xy6tp6j729o15ETteX174?=
 =?us-ascii?Q?qfQQZhT/Qta5UvENelUHIbqDiujFjuryGia9FAJ6iKq+8Ire8473eytBPwXe?=
 =?us-ascii?Q?E2ecVeOztjNevf3bM1jt++W6Hh18jEz0vxufH4YZFl8+J0VG9dp3IHh1Az2D?=
 =?us-ascii?Q?V515RSQ9htu1hCUFS/k+78VVNaE+puMb5s5sjsVmeluQJAI/IKdtPvAkEnWc?=
 =?us-ascii?Q?SVX/5DUx3RdwqnjAySx2flj3FxJqn4mAumgKLcHLuhInCTkbBQ+J4E6Hze4c?=
 =?us-ascii?Q?AcdI83NsLdRGTVKL2FrpEdurQl+d+c9aH5fFKWnGdaQHrQNE4YT0ZqIt9I/V?=
 =?us-ascii?Q?5M1CYax8U53SYFwspwp5LiiQwHl9D4lrfq7yG1JxaheH9KtiuZV9y/fKKrgA?=
 =?us-ascii?Q?7mommk5P8TkFbk2iqCqnycObPrbHBhKS1JsUWXWuRlpbrzgMcurww5mCF7pc?=
 =?us-ascii?Q?XDcHvVk2ydZa/3zeQMbc4l7laOXsryWNO5f+jJ/tZ0akyF6EaKKplQYU80YI?=
 =?us-ascii?Q?7bAxsxxEIKER4rGXEBms7ufcTFp2mLVeSUcI3+7T6VZmkYWF/SGwSz01jjUF?=
 =?us-ascii?Q?4G0F34JxhNhbs6F9ldUmXWtyKR8//GVAZjV//9jopPlQg/URAWqm00Z+DZjq?=
 =?us-ascii?Q?iyAgjCnUFIsu8lOcXwQA+BhI4BMsl7R5I0C2tHCYJAUyC0laucVSA3uctaIq?=
 =?us-ascii?Q?3dxZaSgf0YnPsqURWCvSlHJKAkxF8VzXHox3pbjrv4VF+E4uCbe1QWcOF4ZL?=
 =?us-ascii?Q?ainri97IcT+ybW+S+YO6vluEtMaDPXsWbmRlcAkvOKccAOI+RPhs3DEz1/Q+?=
 =?us-ascii?Q?unE5M07z2ZznHSmjxVOz9v1ceCTSSzfY+GaG6pPzfpGd9UyU8FQPrMz27Kq7?=
 =?us-ascii?Q?uV1mZKtun/sPvOQbiFOgS8v7xPJhMY4aemydZFICCrspW2NxZvfnYYa4+ynK?=
 =?us-ascii?Q?GdQH9EjsiWgY8aQ8OvKNeWfnj2IfHuXC6gsSCDlH3+UzNVfgNns7O9ezRUcV?=
 =?us-ascii?Q?mXo2QK20uCmSmtMwRDy2C4PdUefclksZVFWIkZk/p+jEW9AebbFihDhThUvW?=
 =?us-ascii?Q?hfTnFV5MxQoaYNZE8qPEOvxqo+Nl/E1MSX9D4I3bKN2vcAZLyMiGKV+3aQ0w?=
 =?us-ascii?Q?4g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 256c827a-ce71-479e-14a4-08db170849e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2023 08:14:16.9631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYUVKHnIUB54hGsvBr725QSR3RC8nkQ+UGuighwT+dErniwiZ5ro5Nr5hR651NbOYTN6+sB4h7gqv/iKu5RHosqi420VO2ANKNodeeYT3hI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6799
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Restoring ADL-P/RPL-U IDs.
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Rodrigo,

> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, February 24, 2023 10:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/adlp: Restoring ADL-P/RPL-U IDs.
>=20
> Some PCI IDs got accidentally removed when subplatform was added.
>=20
> Fixes: 61b795a9c352 ("drm/i915: Add RPL-U sub platform")
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c index a8d942b16223..d2dc81848e3b
> 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1235,6 +1235,7 @@ static const struct pci_device_id pciidlist[] =3D {
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_RPLP_IDS(&adl_p_info),
> +	INTEL_RPLU_IDS(&adl_p_info),

In "drm/i915: Add RPL-U sub platform", the RPLU IDs were added to INTEL_RPL=
P_IDS. This should make sure that RPL-U IDs were included under RPL-P platf=
orm. Is this change really required?

+/* RPL-U */
+#define INTEL_RPLU_IDS(info) \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)
+
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
+	INTEL_RPLU_IDS(info), \
 	INTEL_VGA_DEVICE(0xA720, info), \
-	INTEL_VGA_DEVICE(0xA721, info), \
 	INTEL_VGA_DEVICE(0xA7A0, info), \
-	INTEL_VGA_DEVICE(0xA7A1, info), \
-	INTEL_VGA_DEVICE(0xA7A8, info), \
-	INTEL_VGA_DEVICE(0xA7A9, info)
+	INTEL_VGA_DEVICE(0xA7A8, info)

Regards

Chaitanya

>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
>  	INTEL_MTL_IDS(&mtl_info),
> --
> 2.39.1

