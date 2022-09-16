Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E3F5BB3E9
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 23:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59E810E143;
	Fri, 16 Sep 2022 21:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B25F10E143
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 21:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663363792; x=1694899792;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=GO9toz0UqsqA4oNfvyaSRkBcLTckOL1c66VAN2tpPc0=;
 b=hNXWCYLobfVsDMoGBJrjqzK3eqE2BfcYyXdWiVJTuEjSnKQovVwAjx5n
 I2T6bZigjDPC/0MattQJxAOaYR11lax6kCT/43sM4iVrg8qxLHMhXDqv2
 FTTFz9b1byWc/MqEVKKzkCl7CRDpi5czMmGiaYH//5PYAihbNgoGfRb/A
 iNNm1EVFRRaLnyShbPl9etb8TC4zkf9nHHOFQ8tx2mfuwsD/nTi7CcCmx
 MfmeaE8ZE+egIGNevOck2ehxJO+V+Knfz4zFGrdT1AxnnxntAlh7RB50O
 HslBXWN2WRdkPYzhByo4hgCJf5XhlP082FiLgjclbdE8nkmd8nc6ZHv/2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="278811757"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
 d="scan'208,217";a="278811757"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 14:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
 d="scan'208,217";a="680111845"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2022 14:29:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 14:29:47 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 14:29:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 14:29:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 14:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnVKtDVqtq9RlrwbOkQJBAvqVG5oLwbd/k3iIKPcwSA0iq46Fm+ti6CpRtCN6ShfqoBVI7xFs/IRKys8scXjH/TCqM+ZDDk1owzRCQlffYQNWk7nzjhG7Pv7498B0eHIxxNvDSJCXTJg79mmVy8qU+K74WbcbwozK7kQJHzcKy8U/abGK30u7F7lMZiJqcyVYBo+dYRrigQWcvD2cU59vS0HmpXU6WJwoLlrnmMtn7GcWi+6cZfB4hOilrqr6p5i5jSM6BA97LM/mDa78nc5+9YcWxV6yiIqEGGG+x1IpPjjWykxOLkdlYmx0xeQzWVkMVNLfyfbPUbx9G6FqSPItA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pxer24W8GEelKlwZ/B/VssFHxAaPo3MklIZvRkYUtDg=;
 b=CFF2q7tcTLIv492orYxUZswRZyyfcodSmisG+7Ovri5vEuNTlbphGm96YMlsHxJUEt9vcuaea77YrPirv/3J0dePJiOxvPkbJktXT7u6eEeh1qoBpzIa5aAPX+nQ6ICcJnEfADvPvcoH2VUNtwvGtzQ+t5B9wO2lRd1qlESKtMOjlPL6Juksxx8gv3s99PWYztjsqeHop6AFOG/2676Caycj2J4OexBSk0cgqhcc6ys7tDwZEAxzXARBvGJnU9Wtnf66C1r8oyZGG9QYGtfdAY9P7Q/9Roc7p7P4taLuNA2bE+fKlF5wLhwv2+PgUAXviQeRpCSZZL+yxQO44jX+fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Fri, 16 Sep
 2022 21:29:45 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::16e:9ecd:706a:fe72]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::16e:9ecd:706a:fe72%4]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 21:29:45 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
Thread-Index: AQHYyhLeZEIpaMkLVEyqiXH0wjn8Yq3ikmik
Date: Fri, 16 Sep 2022 21:29:45 +0000
Message-ID: <BN0PR11MB571134C0007D7D3BA151BBDFCE489@BN0PR11MB5711.namprd11.prod.outlook.com>
References: <20220916063720.422321-1-khaled.almahallawy@intel.com>
 <20220916212512.9112-1-khaled.almahallawy@intel.com>
In-Reply-To: <20220916212512.9112-1-khaled.almahallawy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|CY5PR11MB6437:EE_
x-ms-office365-filtering-correlation-id: 20aabc80-7e34-42cd-2746-08da982a9352
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ms53raBEhIbLjJ/BtHFAnVwHUsjP1LxF4qj3OPg3Vtl9q0kR9ibgIn0VC0mTvm+Sd1jCLlrerKj7aEJt6pNhssjzeGKJEMtUGsromJ2MjE0ZIwFK8T/cPb7BqFl57D5CLLdXxKERofZ0NQYtO+1WUyhLVtWLAo5ZOoWYgMeZ4k0updWXzJwdpIldwevEt+71IjNkyDYxwo5LvuQAHPjstw5tWSksLZPsX3RvKT6rlGatkHkwYUBvD0MuZ53vq27hhq3AdXAkjM6PJNvqQ/zQpKMaGcuj3mmwoNG3bb8VUx+u0NoUGjXRcscPDbo7a990Y1dYfqr5OL1Ek+Fi6MXAbARpOCM5wscrM9I1qiGf2E3Hcl3I5fFxtlYfm+g6/D6e+Bgz0g/PVE5lGZ0uML/rZioLVsp2+sBq847Ghs0lI08e+aVaSc8EE+Ld7pwpHReCLaI6f++JJf07oPTIvK7oSxoKL9R/MbBhh3aGzEQolqyclGBnnunWwILoknpasKW57C9c7nv8fO8xsyuV4ezd+ROpuj6irq7ELY91kQ6eGAp+bRCem11FJFeCgnAcEOiJa+CfCuT5vlywjOBoO+IkfYjmU7gSgERL8H8T4uXwOoj7a7LwKKyhZ0FVFmcJMOfxy+5sdtAsLjz2ID0WdHEFFUVKJ2H6++TMiNYrNvk8fdXc6dyElN44pbYUlSiy+p6SOOrrsnGthL6qhYG9AtdrKrhU+Fxv6QzP9i9y8If9cNor5TKG+38HYinP42IQxRSn8N6x+UjAa0Qpijf+kV7OXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199015)(41300700001)(6506007)(9686003)(7696005)(53546011)(71200400001)(26005)(478600001)(8676002)(316002)(110136005)(64756008)(66946007)(66556008)(66476007)(66446008)(86362001)(76116006)(5660300002)(52536014)(8936002)(186003)(91956017)(19627405001)(33656002)(2906002)(83380400001)(122000001)(38100700002)(55016003)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DXUh0wfHLMjYswHB6N2A1e1Q+6Xiq5gQla1ggvexUJy4HSuWnkbhE2g1/D?=
 =?iso-8859-1?Q?1W1sHP7mGVrHTbL99rYRJ1O0miG/mxGF4VYXvkCTG8I6HWvHXL+LhSSlSa?=
 =?iso-8859-1?Q?+TuG6lyOxFcQYLEHPgxxaH7bVNHC/GPeUsIV4QJB23RpOOWISd3HbrL7tR?=
 =?iso-8859-1?Q?9+3IUaGMX9yIqEPrQ44QWdO6xJ/6WtSy+U/95pisVXOmuKVM75zEbiwChH?=
 =?iso-8859-1?Q?LZaWnprh+dYsREKMZTXwCsZzrXnbw+Dz+VArdbDRH8Pbysuz9JDhYeKmie?=
 =?iso-8859-1?Q?nQIbLmPtdqd7t6WnJ3M2y3leq9/8rdIaeIfmI0oiXtjpN8Q1nCfIOMPc2U?=
 =?iso-8859-1?Q?GY5qzV5LZb84b24qvpWqA47oy+CrFL3tdIkx2yi5EXM+jH9eND1mishxCQ?=
 =?iso-8859-1?Q?cAAVGQNGBY/WGoFn2ko9QK6PnPKITkRa51lSpEMN1Xf0bcM69sP0AsOKWK?=
 =?iso-8859-1?Q?j+5W+YXvryQGaTbU4hzm6RKie5j4GTLcNkHKqCizb8Ppub8noZq8mJnfiv?=
 =?iso-8859-1?Q?/8ndSao/Gjlq2KH11/8gvNhfd+tVbUtvpphXH+4MmIJ2BtsfEcbTK6idO0?=
 =?iso-8859-1?Q?29TIub1DA3FAZ1bNpNIUpQ6HTmc3q+VfQB94VrBlllCColhj6w2qpxFgPf?=
 =?iso-8859-1?Q?owy0b4JZ87JKBioJrhNrYO7Q/UtLjll8hl4B1apEk74sygOsJPLaXpcXbj?=
 =?iso-8859-1?Q?vopFcGzvpeRb9pe23XqyUaaEeIHPvwwYdjunLrGh8n8awN/7K9KMVQ7Anm?=
 =?iso-8859-1?Q?Xr7aSvtVK++WGoztpkv6J5Mek+cVslnKjBFgeR0+DX5KmBkKVz3xTx4Lw1?=
 =?iso-8859-1?Q?LWNXXLJrx1/V1BvoT4Tfxh7NLF6sre0HHUS6ZKMX5AuxRi1WHyX9UC8AZj?=
 =?iso-8859-1?Q?KBnMvHia8D2MAUaRLJzTDKgdA+wA0KTbWPXtiYnh9Li/TSQmGwWw8218wq?=
 =?iso-8859-1?Q?YWZkJNVCc2x8SConkE3WLiOD+esPHAoZ0w5X5lm1wIuCuYmcZ52eM9mldS?=
 =?iso-8859-1?Q?ApLDooOm2o15U0hfdoYlVk+p5FMCgq7Xp01fDOn7R7RJTFRVtCAI7FLY0z?=
 =?iso-8859-1?Q?5P1qtrWlh0+jy+L04nhYPzeaMJimzENJjee94QyFY8eqRFjzuW3mEecuI1?=
 =?iso-8859-1?Q?OOTo8X3M786qrQX1zfaumL87/QgK2Go+x14Kh+3Rr6AAeJ2hib0LBUqOay?=
 =?iso-8859-1?Q?cMOzI07bz+ujR/ThdI8g0pb0PAlqqEV/zujEc2wg1sNS6mMydhI6yxH/jQ?=
 =?iso-8859-1?Q?QWu9dneLUKvvFh2Cd3jea5O6HSiaVMxS8BoXIwA8HfUAkMvyDEZBcW9D/d?=
 =?iso-8859-1?Q?b2gp2N+v3nfsT0cwda5qcPPdEdO7kH4AcNc1i5OuqrvJ2xwwAEk3KHdKNN?=
 =?iso-8859-1?Q?EU9si3B3AxfyXgQ2cLE2Cqae+4hfkC0+qJzVrczu3NYntHXaE0pSm4ed6o?=
 =?iso-8859-1?Q?9bYCW14bxPpgF7bLCB27gZpGJWGpNfV/7hy55SEbaq9ny8wqtnGPlRVaS5?=
 =?iso-8859-1?Q?pGQPYxYbqFm+reIwa0+Ah43/B1WeDMiwjHFWOdwVVWM+6rj1lOMxCdHlQN?=
 =?iso-8859-1?Q?qdFCzE6WDiZAxCSJCgHAGM/hy1AeNhsQgYIE0yRhDpBs4GDUwkjfJ1nhZi?=
 =?iso-8859-1?Q?GeAwst1ubGs10LivTek/rw3rjZIBJOYVMQ?=
Content-Type: multipart/alternative;
 boundary="_000_BN0PR11MB571134C0007D7D3BA151BBDFCE489BN0PR11MB5711namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20aabc80-7e34-42cd-2746-08da982a9352
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 21:29:45.3717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0e29ouie7iriLD0VLiZJolv7D/gTFFpZuGrKkVL0cmYyv257YdL47QO3fS6lTc8a4R7k5tBa9PEpzu48uNT0w75MDpuK6ZZR5k8dti2NruA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
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

--_000_BN0PR11MB571134C0007D7D3BA151BBDFCE489BN0PR11MB5711namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint


________________________________
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> on behalf of Khal=
ed Almahallawy <khaled.almahallawy@intel.com>
Sent: Friday, September 16, 2022 2:25 PM
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable DDI/Transco=
der when setting phy test pattern

Bspecs has updated recently to remove the restriction to disable
DDI/Transcoder before setting PHY test pattern. This update is to
address PHY compliance test failures observed on a port with LTTPR.
The issue is that when Transc. is disabled, the main link signals fed
to LTTPR will be dropped invalidating link training, which will affect
the quality of the phy test pattern when the transcoder is enabled again.

v2: Update commit message (Clint)

Bspec: 50482
Cc: Imre Deak <imre.deak@intel.com>
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Or Cochvi <or.cochvi@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
 1 file changed, 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index c9be61d2348e..2bf323f3f155 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3675,61 +3675,6 @@ static void intel_dp_phy_pattern_update(struct intel=
_dp *intel_dp,
         }
 }

-static void
-intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
-                                 const struct intel_crtc_state *crtc_state=
)
-{
-       struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
-       struct drm_device *dev =3D dig_port->base.base.dev;
-       struct drm_i915_private *dev_priv =3D to_i915(dev);
-       struct intel_crtc *crtc =3D to_intel_crtc(dig_port->base.base.crtc)=
;
-       enum pipe pipe =3D crtc->pipe;
-       u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
-
-       trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
-                                                TRANS_DDI_FUNC_CTL(pipe));
-       trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
-       dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
-
-       trans_ddi_func_ctl_value &=3D ~(TRANS_DDI_FUNC_ENABLE |
-                                     TGL_TRANS_DDI_PORT_MASK);
-       trans_conf_value &=3D ~PIPECONF_ENABLE;
-       dp_tp_ctl_value &=3D ~DP_TP_CTL_ENABLE;
-
-       intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
-       intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
-                      trans_ddi_func_ctl_value);
-       intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
-}
-
-static void
-intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
-                                const struct intel_crtc_state *crtc_state)
-{
-       struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
-       struct drm_device *dev =3D dig_port->base.base.dev;
-       struct drm_i915_private *dev_priv =3D to_i915(dev);
-       enum port port =3D dig_port->base.port;
-       struct intel_crtc *crtc =3D to_intel_crtc(dig_port->base.base.crtc)=
;
-       enum pipe pipe =3D crtc->pipe;
-       u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
-
-       trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
-                                                TRANS_DDI_FUNC_CTL(pipe));
-       trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
-       dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
-
-       trans_ddi_func_ctl_value |=3D TRANS_DDI_FUNC_ENABLE |
-                                   TGL_TRANS_DDI_SELECT_PORT(port);
-       trans_conf_value |=3D PIPECONF_ENABLE;
-       dp_tp_ctl_value |=3D DP_TP_CTL_ENABLE;
-
-       intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
-       intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
-       intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
-                      trans_ddi_func_ctl_value);
-}
-
 static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
                                          const struct intel_crtc_state *cr=
tc_state)
 {
@@ -3748,14 +3693,10 @@ static void intel_dp_process_phy_request(struct int=
el_dp *intel_dp,
         intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
                                   link_status);

-       intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
-
         intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);

         intel_dp_phy_pattern_update(intel_dp, crtc_state);

-       intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
-
         drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
                           intel_dp->train_set, crtc_state->lane_count);

--
2.25.1


--_000_BN0PR11MB571134C0007D7D3BA151BBDFCE489BN0PR11MB5711namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Reviewed-by: Clint Taylor &lt;Clinton.A.Taylor@intel.com&gt; <br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
-Clint</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div id=3D"signature_bookmark"></div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size: 11pt;"><b>From:</b> Intel-gfx &lt;intel=
-gfx-bounces@lists.freedesktop.org&gt; on behalf of Khaled Almahallawy &lt;=
khaled.almahallawy@intel.com&gt;<br>
<b>Sent:</b> Friday, September 16, 2022 2:25 PM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.=
org&gt;<br>
<b>Subject:</b> [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable DDI/=
Transcoder when setting phy test pattern</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Bspecs has updated recently to remove the restrict=
ion to disable<br>
DDI/Transcoder before setting PHY test pattern. This update is to<br>
address PHY compliance test failures observed on a port with LTTPR.<br>
The issue is that when Transc. is disabled, the main link signals fed<br>
to LTTPR will be dropped invalidating link training, which will affect<br>
the quality of the phy test pattern when the transcoder is enabled again.<b=
r>
<br>
v2: Update commit message (Clint)<br>
<br>
Bspec: 50482<br>
Cc: Imre Deak &lt;imre.deak@intel.com&gt;<br>
Cc: Clint Taylor &lt;clinton.a.taylor@intel.com&gt;<br>
Cc: Or Cochvi &lt;or.cochvi@intel.com&gt;<br>
Tested-by: Khaled Almahallawy &lt;khaled.almahallawy@intel.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_dp.c | 59 ------------------------=
-<br>
&nbsp;1 file changed, 59 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c<br>
index c9be61d2348e..2bf323f3f155 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_dp.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_dp.c<br>
@@ -3675,61 +3675,6 @@ static void intel_dp_phy_pattern_update(struct intel=
_dp *intel_dp,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;}<br>
&nbsp;<br>
-static void<br>
-intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *=
crtc_state)<br>
-{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D dp_to_dig_port(intel_dp);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D dig_port-&=
gt;base.base.dev;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D=
 to_i915(dev);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc =3D to_intel_=
crtc(dig_port-&gt;base.base.crtc);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum pipe pipe =3D crtc-&gt;pipe;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 trans_ddi_func_ctl_value, trans_c=
onf_value, dp_tp_ctl_value;<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_value =3D intel_de=
_read(dev_priv,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TRANS_DDI_FUNC_C=
TL(pipe));<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_conf_value =3D intel_de_read(de=
v_priv, PIPECONF(pipe));<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dp_tp_ctl_value =3D intel_de_read(dev=
_priv, TGL_DP_TP_CTL(pipe));<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_value &amp;=3D ~(T=
RANS_DDI_FUNC_ENABLE |<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TGL_TRA=
NS_DDI_PORT_MASK);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_conf_value &amp;=3D ~PIPECONF_E=
NABLE;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dp_tp_ctl_value &amp;=3D ~DP_TP_CTL_E=
NABLE;<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, PIPECONF(pip=
e), trans_conf_value);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, TRANS_DDI_FU=
NC_CTL(pipe),<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_val=
ue);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, TGL_DP_TP_CT=
L(pipe), dp_tp_ctl_value);<br>
-}<br>
-<br>
-static void<br>
-intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_s=
tate)<br>
-{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D dp_to_dig_port(intel_dp);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D dig_port-&=
gt;base.base.dev;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D=
 to_i915(dev);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum port port =3D dig_port-&gt;base.=
port;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc =3D to_intel_=
crtc(dig_port-&gt;base.base.crtc);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum pipe pipe =3D crtc-&gt;pipe;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 trans_ddi_func_ctl_value, trans_c=
onf_value, dp_tp_ctl_value;<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_value =3D intel_de=
_read(dev_priv,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TRANS_DDI_FUNC_C=
TL(pipe));<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_conf_value =3D intel_de_read(de=
v_priv, PIPECONF(pipe));<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dp_tp_ctl_value =3D intel_de_read(dev=
_priv, TGL_DP_TP_CTL(pipe));<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_value |=3D TRANS_D=
DI_FUNC_ENABLE |<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TGL_TRANS_DDI_SELEC=
T_PORT(port);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_conf_value |=3D PIPECONF_ENABLE=
;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dp_tp_ctl_value |=3D DP_TP_CTL_ENABLE=
;<br>
-<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, PIPECONF(pip=
e), trans_conf_value);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, TGL_DP_TP_CT=
L(pipe), dp_tp_ctl_value);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, TRANS_DDI_FU=
NC_CTL(pipe),<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; trans_ddi_func_ctl_val=
ue);<br>
-}<br>
-<br>
&nbsp;static void intel_dp_process_phy_request(struct intel_dp *intel_dp,<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_state)<br>
&nbsp;{<br>
@@ -3748,14 +3693,10 @@ static void intel_dp_process_phy_request(struct int=
el_dp *intel_dp,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_get_adjust_train(=
intel_dp, crtc_state, DP_PHY_DPRX,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; link_status);<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_autotest_phy_ddi_disable(int=
el_dp, crtc_state);<br>
-<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_set_signal_levels=
(intel_dp, crtc_state, DP_PHY_DPRX);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_phy_pattern_updat=
e(intel_dp, crtc_state);<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_dp_autotest_phy_ddi_enable(inte=
l_dp, crtc_state);<br>
-<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dp_dpcd_write(&amp;int=
el_dp-&gt;aux, DP_TRAINING_LANE0_SET,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; intel_dp-&gt;train_set, crtc_state-&gt;lane_count);<br>
&nbsp;<br>
-- <br>
2.25.1<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BN0PR11MB571134C0007D7D3BA151BBDFCE489BN0PR11MB5711namp_--
