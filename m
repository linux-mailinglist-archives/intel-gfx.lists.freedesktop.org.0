Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DF477F958
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 16:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A2A10E4B7;
	Thu, 17 Aug 2023 14:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F5810E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 14:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692283160; x=1723819160;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XywVjN9Fr/kHw1t7lGkCCu1im5G23Gu29mRR+gUaFCQ=;
 b=bkaLeZwfTJpBtdBSKfLGKIQMVD6F5Py21SiRbILmhcvmZV5nibFyieTl
 Mq9tusnM7Gl/TLPRCd2j+pFVJHMF5EcBjNdS7DG01jHKAaMbPY5Og2E+w
 22ZrVXsNOwwAlEzlW8bH3y+0oDAdHuQJR6q/qIG4yLlbdXngHSV9rKnlL
 tzJGFv8NlHXGo9vQi1UbRqoagZLHhura5qlis4EcncHcIHG+vqbChLz2F
 g1itHLeNZc5NzoOtjZa9jQpwnxQK3AlLbWZKpm3fG8JAi8MrHMqWJyuyk
 8fabIUe3KxU1pn1Gyce9jy+Xt0s8jG7ztxZdxFY2G/IRH3m2A0d1oqMCg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357800203"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357800203"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711580020"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711580020"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2023 07:39:19 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 07:39:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 07:39:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 07:39:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UB6Uom8rhcmhM7eWTGKBxqoteir00Rad2MBqhmGxPxj8pXBLVpWbo2rwzNMwUwF/0Rf720ga341a4rQfd004eDEVLkKg2cZz9OxgsSTDZ6gOaw77PKfFtEolUMQ4NJIY6hnIUWqqNMUOVIyAG75r4zV5LUIeuuH+Ra6C+9KRYH+O+E3GvR2HJJIw+tMkJSlM+fo+h4wuU/j5TE96b/x6XM5GfZTfshQhVw2FYnw+HLjKs3sVU2aaZeczO3Qclss+if1vW2Uqe8em9pQeL5Ty++lSIBMJnsZy/xRLNOqrvCc1T5eHOSzr59QRJZowZM4PuDKbUyR9ZuhyU6/DkBPDOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAo3guzw4IekAoza2E0x33+yOBseXQSMCsIJ4D6jucI=;
 b=hL1N2hXQZgfBvQylEj0qayDkInzng0mORNFfAq+EddCBidzQYJRgPstRgYbU91Ff4nhpoaIuXS3+MayYS/S6cV4XpDBQZ1avvz94BHjspkWuyGvO+AFeEbIAWpypK/tiBIiDBka71Ebq/sNJEQYZpap1hFji1sE+h2Wm203/AfK7XuSVm7pIQyJKTxZmEh0pQolgbp0Qk+p/gxqGMj5sINqBxwTmi4PqUBdSLz1/5CrRd09YXUt63zIwM66rK50finPG4J/xYv18FFHBRDSpyjZXcfXwEFRoCHVNKNwTG1xhB0g1lRu/B0MTs7WBUxsq51v3uYqx6ZnrQE+jThAVdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17)
 by PH0PR11MB4918.namprd11.prod.outlook.com (2603:10b6:510:31::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 14:39:17 +0000
Received: from CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::afe6:1e86:52cc:f71d]) by CY8PR11MB7134.namprd11.prod.outlook.com
 ([fe80::afe6:1e86:52cc:f71d%4]) with mapi id 15.20.6652.029; Thu, 17 Aug 2023
 14:39:17 +0000
From: "Yu, Jianshui" <jianshui.yu@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
Thread-Index: AQHZ0ECSko+7UmO4MUmsdJM36Osfj6/ukEgg
Date: Thu, 17 Aug 2023 14:39:16 +0000
Message-ID: <CY8PR11MB71341DBE139DE3F6F7B84639E61AA@CY8PR11MB7134.namprd11.prod.outlook.com>
References: <20230816125216.1722002-1-anshuman.gupta@intel.com>
In-Reply-To: <20230816125216.1722002-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7134:EE_|PH0PR11MB4918:EE_
x-ms-office365-filtering-correlation-id: cf55f746-f3dd-4bf6-af50-08db9f2fbc09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OmovtGWQYHmxdmaCj7huShJFh6+VkDagJQ7qf8XSCJ/nLo+HoL3dmI8htb+yXEAoTuZybuqGnEXkRIOBxfdRJg9/TAwk3JbcGPBFS741gmY1RJbrnpsy5hSW2s6J1Akq9c01InchFi9gUiRV3S8lm0YggnR3xOvBgxCkayUmGXgpFxIOQVZHUFmk6211XSUUbHGJASC9uuy7c9DzhhX0SM2SY4p/MngMwvAotJJlE1HmHyrdc7fcw5RrTAZHtGFBAAMpUgmcJAMHiMSb/y4z8o1fnr0E3ZaVuEGuirrX76nysZLMpDLxPy911upnagy1o0hlt3CUjkeWH8c9vtal8DrGZaMpOM7wNIU0iyFNUISbD2/lo8eWzZKS+vu1HA2x8EpB36lqteqOmdCmCjHOoDx/iDj0cWaESpyXvwwY6+2uC++FH5yIX227q559frpACA7o1PbDuPzwbaUdXtMMn4/a0vtAfmH9bVWxNDeJdpwBqpHGqQJe8qMdy8rxgicXpY0EJO9puG0S7wwX1lLMQ6h8dztHAYKP3n15zxvz4i/mtafwyJRN+t4DXHwt1Pon6A9uQ7GQ7r5J0YQlOY4sx/eg6/DqtDxPha18N1woKvwYTPSXFJvU04ac4I0kNOzu83v9pN6x4Bdr/gL0iBN6rg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7134.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199024)(1800799009)(186009)(86362001)(33656002)(122000001)(38100700002)(38070700005)(82960400001)(55016003)(478600001)(52536014)(7696005)(5660300002)(966005)(76116006)(66446008)(66556008)(66476007)(66946007)(64756008)(71200400001)(316002)(53546011)(54906003)(6506007)(110136005)(9686003)(26005)(41300700001)(8936002)(4326008)(8676002)(2906002)(83380400001)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PTjjvhqgffdvSZTCpfzMmu4Av6cM0LhkDKFA4+bQGlREgq5XYtsHiapWRDxv?=
 =?us-ascii?Q?Q1MjcgG6dSNrBPtq3GXnkEv+m+iRPTS/bNbFm2YSducUINihddb+FOBSjDIJ?=
 =?us-ascii?Q?l4KTgsWkBFqq7jMxFPbw+KGgZGmVD3k/y15t/Z5QihY0yX8rUadqnjqEjNH4?=
 =?us-ascii?Q?WpVkyl9hTffYtn0NPjcCzR0vTqm/AwmKXn/apOjgaZaszgRVcRELw2wAEM1+?=
 =?us-ascii?Q?RMl96WYNZkEfInW1YRSXHqkLKs8/ETnmbhAXtrZJaKKYMBCxpW/sClpxquCD?=
 =?us-ascii?Q?0aglH8IY7Uwjyqt1276l5DtPmWAqyo2yDXwhdQThkP1nPQFJdnEGxe1Yp6zS?=
 =?us-ascii?Q?YjDmUE7NOBbrq0/X1ijTEXaFF4c17OcN8N2nwV/0Ea6zqKnS8FtCIRVnQR5e?=
 =?us-ascii?Q?fmv5XWsrcRQAuEZyzqwlkw/LwlJFTla3o8L/hG+k2Sw1DpV9P5nmy6QInP6u?=
 =?us-ascii?Q?RifONsDp3hPAXQVkgTB6Gvek/qBEIpWXzeK03ubdGOkDcWVhDM2CPfWIjPFy?=
 =?us-ascii?Q?Cyc2FAaPzODhG8u3XBVQV73DuqhYdW41DdPRhoFEweHhUF4jzboHd6oS4T2M?=
 =?us-ascii?Q?oxEFX4eM531vWFVLSinfRfcCjHzB7ms+JuqNDztYJPMcAwMqV2/DkQZgPtEt?=
 =?us-ascii?Q?vAmJ1EfsDbkSE/3DoAn04mG5uRMZrD/SNk+g1vPA9sp3mJDYcueE14v+zn9i?=
 =?us-ascii?Q?0UfMEiaVdA/LR2fADx46gZbwGP1qIkaBWP16w1l3i1KYkxL7VaexDTrV9tB/?=
 =?us-ascii?Q?wTMrBI/j+T01Mv9KlrON+/g/pSFO1hEvak+Ld+ReO3EbJvU0+DkMnWwSUmEt?=
 =?us-ascii?Q?visHSvF59eWekB4yTJYjC77+vZLR8sOdegnV+udp+ICzjQQAVFLczbRdFzK9?=
 =?us-ascii?Q?vUzy4YoLRz4aMLquGpzNH72v7c9rD0apTQPxK9ys8AKjOEX/Wx7XYmj5IfQ7?=
 =?us-ascii?Q?+d5rrShSn4l/mPqZscOfHRBpwRhTLxNCfOq3ur8ycrGOE7qCU8TyfxCWoucC?=
 =?us-ascii?Q?zECPtWvbBoqr3lp66FnQegjRhbzU5lIW1Gi3sVK+vFWxy0UZujaO+J0dcLZ6?=
 =?us-ascii?Q?qDvILo/8xUH+0DW+RqINjyCls/7VIiiozkjZmEAkUI6DNPzY03C1BLZq+Peb?=
 =?us-ascii?Q?aMXVt731Pie1HvQej1Uk6dDtYfpBiQEwfJCXKryR9Z89dmmmXxn4d5fLsxxx?=
 =?us-ascii?Q?kXH351uF0aMO8Psx4+QmyA7yCz+hwjgYNSCsWioYSXLPvF92fi4tkBuzgmj5?=
 =?us-ascii?Q?/qZ/uMJ4WWaZ3hJNwxQIyXYb382mInzKirZdBWN0L89MODOuBQjAo4CTvD8C?=
 =?us-ascii?Q?xgN14V57d98QacoNxMVWDkPO+fEPMBcmJoMDcJcQbs2XA7yKcIPkjTyrGmMa?=
 =?us-ascii?Q?yuhduM80a7dn+7cSWvFFUAEIHK3+9Kc3ZmPoksw3KS0hkYOVFoIPRMiraTlM?=
 =?us-ascii?Q?zKV1HjX9gw3rmCxBVm6T1ueyawoej/EzfInhvHG8fv6XcQBs1odFfwW8zEH7?=
 =?us-ascii?Q?E8O+6DSR3MADH7M7IlUbJZjmguaIjBCiyt8feYrLXvS8Mm0lbEdfKB7RNgTQ?=
 =?us-ascii?Q?pXOyZ5uGwSdZbQWyFdesU0Rveh5L6HXNvaAzlQg7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7134.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf55f746-f3dd-4bf6-af50-08db9f2fbc09
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 14:39:16.9899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QsOH2arsQfymfM+uubueut6vnIj6SaeffdGV/i3KI0gOlTT/WzGjC/a48soqN4ofyKAzzF0zVWJp/CTKuLq1hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4918
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Wang,
 Lidong" <lidong.wang@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tested-By: Jianshui Yu <Jianshui.yu@intel.com>

-----Original Message-----
From: Gupta, Anshuman <anshuman.gupta@intel.com>=20
Sent: Wednesday, August 16, 2023 8:52 PM
To: intel-gfx@lists.freedesktop.org
Cc: Nilawar, Badal <badal.nilawar@intel.com>; Tauro, Riana <riana.tauro@int=
el.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Yu, Jianshui <jianshui.yu@=
intel.com>; Wang, Lidong <lidong.wang@intel.com>; Gupta, Anshuman <anshuman=
.gupta@intel.com>; stable@vger.kernel.org
Subject: [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle

System wide suspend already has support for lmem save/restore during suspen=
d therefore enabling d3cold for s2idle and keepng it disable for runtime PM=
.(Refer below commit for d3cold runtime PM disable justification) 'commit 6=
6eb93e71a7a ("drm/i915/dgfx: Keep PCI autosuspend control 'on' by default o=
n all dGPU")'

It will reduce the DG2 Card power consumption to ~0 Watt for s2idle power K=
PI.

v2:
- Added "Cc: stable@vger.kernel.org".

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
Cc: stable@vger.kernel.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 33 ++++++++++++++++--------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915=
_driver.c
index b870c0df081a..ec4d26b3c17c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -443,7 +443,6 @@ static int i915_pcode_init(struct drm_i915_private *i91=
5)  static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)  {
 	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
-	struct pci_dev *root_pdev;
 	int ret;
=20
 	if (i915_inject_probe_failure(dev_priv))
@@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct drm_i915_privat=
e *dev_priv)
=20
 	intel_bw_init_hw(dev_priv);
=20
-	/*
-	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
-	 * This should be totally removed when we handle the pci states properly
-	 * on runtime PM and on s2idle cases.
-	 */
-	root_pdev =3D pcie_find_root_port(pdev);
-	if (root_pdev)
-		pci_d3cold_disable(root_pdev);
-
 	return 0;
=20
 err_opregion:
@@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct drm_i915_private=
 *dev_priv)  static void i915_driver_hw_remove(struct drm_i915_private *dev=
_priv)  {
 	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
-	struct pci_dev *root_pdev;
=20
 	i915_perf_fini(dev_priv);
=20
@@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct drm_i915_priv=
ate *dev_priv)
=20
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
-
-	root_pdev =3D pcie_find_root_port(pdev);
-	if (root_pdev)
-		pci_d3cold_enable(root_pdev);
 }
=20
 /**
@@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct device *kdev)=
  {
 	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
+	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *root_pdev;
 	struct intel_gt *gt;
 	int ret, i;
=20
@@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct device *kdev=
)
 		drm_err(&dev_priv->drm,
 			"Unclaimed access detected prior to suspending\n");
=20
+	/*
+	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
+	 * This should be totally removed when we handle the pci states properly
+	 * on runtime PM.
+	 */
+	root_pdev =3D pcie_find_root_port(pdev);
+	if (root_pdev)
+		pci_d3cold_disable(root_pdev);
+
 	rpm->suspended =3D true;
=20
 	/*
@@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct device *kdev) =
 {
 	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
+	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *root_pdev;
 	struct intel_gt *gt;
 	int ret, i;
=20
@@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct device *kdev)
=20
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
 	rpm->suspended =3D false;
+
+	root_pdev =3D pcie_find_root_port(pdev);
+	if (root_pdev)
+		pci_d3cold_enable(root_pdev);
+
 	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
--
2.25.1

