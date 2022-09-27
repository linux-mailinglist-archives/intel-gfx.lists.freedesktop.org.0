Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B29C25EC13A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1CC10E8FA;
	Tue, 27 Sep 2022 11:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA3A10E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277987; x=1695813987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=z2yY3PetE5NBJeIo6ZcRkuL2TaKfUpx+2uosAuX6GIE=;
 b=UwmXblm0rLE2tkW+fywgB672eW+UB7AqCGV4s4h5hOBb/DPWQdHvUwdw
 /8w9eB2XQxUaxygQXoA0tRVBdek64ksPxis7+m6TrvmM4t/qV6jm62uHb
 f1n8z7KiHQ34iUnm3dK/l+9rN7E40I2UE4Ld1W+H+DnyBJ3vW6PekIaIK
 iUK+fM1VsfV2gnsA26dJf+iHgafhUSMRZgzHH8MStO2h+59LE/o4XiR1O
 eylsAnzsXi4KJ8WkE6oWQTu8r2s0bzrHhUNXJP66PoaAqeh8HD27cGd0P
 BJYOK06rmkhzWVBzDlzNgpyO+3fTuz0teNYG9GU71FIvzk5rbL24m4Y4R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="300011538"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="300011538"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725476999"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="725476999"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2022 04:26:26 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:26 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXo5/AE6cce+qHujS4vEGRV4aEgCxDA9dQ4RxwqZo6EW/hc4ekyw8+lr7ZxQUOoa9zYTweil4XFzf9U1NNW5W4E+9oImSUnFuz7Cqv70NVyGBJD0uzlZr9yr/2ujQg13eLgwbvqyE8ESJuH1ra+1YwfVOCCOzKM7Iws+4NabxxN2hpWj1pdFnDZRmEwFs6a1RH6tZySe5FhF7YEvr+bN6jEOXEZVTC224Gq5wL2mZtsOAS3m9q1a5k6f6gjWPPxqdwagRKsZrWbAh40zv/QZs2rsCWxTmAmaU5LBmT9VJINXbqQ2EwcdLFlo6EcpXyrI9pLlDeUbUpEekqA+gqH2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=su+NuYyNrn2/5PfGrxkhM5WHpp4ozdxCiUAtcoWX79o=;
 b=JgDn8f+5ueWH9nwgPF+YOZTvLHUBYjt+2JJLG3HxJ39LMuw/OfrWktANdJD1J+mCv+PmlRPHU5y4Wt3ZbYIKau60KO1KVvogg7bsZadDNSur/jvfZEQlZWVq/F6vEcYaMaaOTjtjaSSGebu4SeDXQjuhCjNd5NScLr8sgIIi/ZeAe5ySKtVyYSGZixzPv3b1krD/BFMTCuHf/CJ9Bo3K+pXZ9ytokLvX+IHACCqRMms11YWssJFwxxFdCAOXvkZ9cDiEhVKKEkXymSlnjIX/5LuuYsB56fEL0DRAkvCzIwsiKUIMc8Sm2r5ZAiRpWxW73z/tK1BePOd1jfiXPLPieg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Tue, 27 Sep 2022 11:26:24 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:24 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:44 +0530
Message-ID: <20220927112547.328078-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0037.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::16) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 59e8b57a-6c75-4fca-7fc1-08daa07b1c2f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v3u0pyf4nSY9ykfn61/NNMg0BhRivOFMebdLLltSnqTDGIipCIPOMokjIUKzLiA+MzoqsWgqJESJp4n971XYYk8YDRayCUmw16XOoELGg1ycJgsw+y4yKf+MhWUDGofjsGMFhNpsvTvqEaGbTdmhcB8aIbxR+3Qx6u5LYCJ4mgbQMi6T4vs0onK+MNFEfbS1roy5TXIFX5ofTFZIsqWWEqRbrE0jC5ZlsaG1AvqJstfzh2c4kyk2h7266LAdLYRaZpBKRjueqTNI2StJK2Eq/rWErtkGQyte1aoxo/LP1rljfnMqWiKWdMq1apVdQXNCGexFiU98mkEhK8vEsW6y9Q+8R9vW6Y4vrDR01jvzQIRXe09BPsw3b+vtYJg6EDXkjGYc1lGjPRUhWljdss4UUWkIQ3x4mGHTNuDuch0x69TjI/Ml6ESLeMbfZyCw5kpb1p4DgKTazHaKNvL7b5d4VHmUhsdzeaI0A0CfVZ7J6kz7gvarYSr9wqT66QclKxxLnYPnGIDPZHdh7VuiUYSHhRU6ibDq+RzjXuaGfOBmM9k4IrhTKK9Sa0Npsf/eXg/Rdmht3ws+QO79HOeIpTC/N79SEAUBT7dlWe/MDeLcuU+VtTcDRW8YQK+shsE345WhqDz5WQDW+D26Q/k3IOHrRsYHcxE69frSOd+fL0ULDKJpNJXNO92tbtG6R4h0jAdW+oKnMo/oRwlZu6gHzbQIwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(41300700001)(2906002)(44832011)(36756003)(5660300002)(8936002)(66476007)(38100700002)(4326008)(66946007)(54906003)(8676002)(478600001)(316002)(66556008)(6486002)(6916009)(6666004)(86362001)(2616005)(1076003)(186003)(82960400001)(6506007)(83380400001)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dI3+rD1RxvA/vV/9uUpxPW/bBMftD77KfNqet+J47VOqS0mKoNkWrl++zSSI?=
 =?us-ascii?Q?q5bgvPrItgygurhSue+T6IAcmAAMLabJHe8LkrTaCi9gE9CJkLpuGd1bq2/J?=
 =?us-ascii?Q?Pj+9I3RbAAVHt4rVxAi8VdG1NTTzUbcBB9zbubo8SLG8TJxzuYVDZc4jT75e?=
 =?us-ascii?Q?BazTVm2SsMm6d45t9NIkOEoWxU83tV0DQGwif4rVqvFGVsSqjPxgzpteEuUE?=
 =?us-ascii?Q?CElKK40vG76eXYzTVwKSxJJ0zsLb58dma2Bcyk08B7Ia6pFU0p2+gKmqAUA0?=
 =?us-ascii?Q?ZdEzlO/w1Di9tRrEWeojwzCgr4Fwo2EvSAeOgHaSNvNiwGfuDeQDpOtX54Ry?=
 =?us-ascii?Q?nvrAkAN635GpbbYFFYQTgzc0zBdpoNthKPnvV9bo2DjysQVUDPO4ChBlP0dh?=
 =?us-ascii?Q?6hBNcVJwFzwanPeHu5JUlRNR8Exof0M7NQfft3m0rg/S1MJLfZ+KpaSoM1Xy?=
 =?us-ascii?Q?hUhhOo5ZlppesMWkQ7FBeNy3Qc5qLU0Tt5m+3d1cPhpQ6Rm+uz6uj/LwCmch?=
 =?us-ascii?Q?igQ+RW7B3jIU+JjRQkoX88E+bpcRrBd0aW/btVEfgL5lPyPyCjaZ9po+pux1?=
 =?us-ascii?Q?vxbP6rFyvpc30wxoDOvD91uXBCp9Pf9Mh+4fVekcyAZbNPzvnoSbdKb5b4Rd?=
 =?us-ascii?Q?FQKUMRoYwgJTNFERXRWn9YymW7L7mx4/BGGwi4kOjSZNB6C/4iTR5gA19qWk?=
 =?us-ascii?Q?CZ858YWXNRbuxoxou3GAZ4E2BnFdDb+Ax2CXzGFyuHm7WnaKg856epj9txsv?=
 =?us-ascii?Q?XdfIWeJaVHEXU3VQdrq9tHb+fNbr5E8Jwu5MjTNGtxzpiGt9fAO4/hznAIzT?=
 =?us-ascii?Q?LM940voe/C/stbWfw8WHeju+5qme6jteeLB2RObdRv1bUyns7Z9RoZdvv3C4?=
 =?us-ascii?Q?a2/rIk/iRns4ZonvPAtiQ7XxWLUI2V3S6EMe4+giD15rQ5+Xy4a5DwgKhDaU?=
 =?us-ascii?Q?lYpirQgCITdKZ401upy4GQ7Z/53PBlwYbe4q0bwrZ4SJaE87rhFqLaEr/T0H?=
 =?us-ascii?Q?9SCywhF4KaUEHyo+pyURwnaXnNs1T5o6v+oU1cpA247kDJq+/S+Uet7XyJfH?=
 =?us-ascii?Q?yiwONQU2+YsSnAxbRNZtUYOT1uPqfENKqCLi2UICxfTu+02xroVX8kWEn+2x?=
 =?us-ascii?Q?gpqGTkrv8EsLkB6YetdJxbp1kKO1+ZSjKoPbXmP749xe7hHHewatgO4Y+vjb?=
 =?us-ascii?Q?IFRsizQ3yIaWSukqgfJAbmDgxrVbyCWyLJPSNn3hbvNF2JsI9pq/IT2SLTPC?=
 =?us-ascii?Q?X1F7ZHEbHJ/cqIrBtfCjU2OgTVt/ZReAdFza+G4kBhTEZviasvC/1rtY8PhX?=
 =?us-ascii?Q?IpT0v8gBCUFtEfT35wapmR2KD6dJ4yNFWIsI0ZwXc9PViM0JmlV8HQmB7il/?=
 =?us-ascii?Q?f1atvvAQBONbOIzKLa1eUaatnpM2gv79oVB5XHVz+oR7DE1gO2McwBaH9SGS?=
 =?us-ascii?Q?NXQo1/EEWwN5sw1H651ctLtSn/Wdc4x6tNZlcviu+t/Vfbsu9Ds/l9D8hWLT?=
 =?us-ascii?Q?mERWNbEmMKpSndpSp7MR8jlAsPG9TjV5clARHsYvGS8z3nQgE5F+5tOKSOnt?=
 =?us-ascii?Q?RPVTwb2ewYCbH228GauOX07YkJCh6jn+JEYqMNt5ByaemFRxkeVU+DYoHj2L?=
 =?us-ascii?Q?PAEVLC+IZX3W0BZoTe9pjD0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e8b57a-6c75-4fca-7fc1-08daa07b1c2f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:24.2205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T+DWhvAjCqx8QlEh9LtHDJWOAigIuKiBPB8G2vk2YkBXlynZxF9mhJTaD7luOITnbCN5kHB8x+1FcIx0SSJZ7toPuDHUaIHGYLoim+cyf/Z9VDwfeBTWtp6v3KkMzcbQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915/display: Free port enums from
 tied to register offset
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

With the index required for DDI register offset calculation available in
the device info, DDI_BUF_CTL macro updated to make use of it.
Any new macros to access the DDI registers should follow the same
procedure.
This would free the port enums from tied to the register offset of DDI
registers. We can remove all the enum aliases and clean up the enum
definitions.
The key target of the patch series to remove platform specific
definitions of ports like PORT_D_XELPD, PORT_E_XELPD is not yet covered
here.
The definitions are still retained and will be handled in the follow
patch.

Removed a WARN_ON as it is no longer valid. The WARN was added in the
commit "327f8d8c336d drm/i915: simplify setting of ddi_io_power_domain"
The ddi_io_power_domain calculation has changed completely since the
commit and doesn't need this WARN_ON anymore.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 1 -
 drivers/gpu/drm/i915/display/intel_display.h | 8 +++-----
 drivers/gpu/drm/i915/i915_reg.h              | 6 ++----
 include/drm/i915_component.h                 | 2 +-
 4 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index aae429bd2e2b..00ac683ef96b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4474,7 +4474,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->update_complete = intel_ddi_update_complete;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
 	if (init_dp) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 884e8e67b17c..aa5ded6b513c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,18 +212,16 @@ enum port {
 	PORT_H,
 	PORT_I,
 
-	/* tgl+ */
-	PORT_TC1 = PORT_D,
+	/* Non-TypeC ports must be defined above */
+	PORT_TC1,
 	PORT_TC2,
 	PORT_TC3,
 	PORT_TC4,
 	PORT_TC5,
 	PORT_TC6,
 
-	/* XE_LPD repositions D/E offsets and bitfields */
-	PORT_D_XELPD = PORT_TC5,
+	PORT_D_XELPD,
 	PORT_E_XELPD,
-
 	I915_MAX_PORTS
 };
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 67f3b17b2360..12a6fe7ee010 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -170,6 +170,7 @@
 #define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
 					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_DDI(i915, port, a, b)	_MMIO_PORT(INTEL_INFO(i915)->display.ddi_index[port], a, b)
 
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) ({					   \
@@ -6936,10 +6937,7 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(i915, port) ({ \
-					(void)i915; /* Suppress unused variable warning */ \
-					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
-				 })
+#define DDI_BUF_CTL(i915, port) _MMIO_DDI(i915, port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
 
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index c1e2a43d2d1e..f95ff82c3b4a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 9
+#define MAX_PORTS 17
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

