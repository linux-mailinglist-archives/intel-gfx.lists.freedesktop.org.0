Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD5E5EC138
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:26:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8587410E8EE;
	Tue, 27 Sep 2022 11:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E9910E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277976; x=1695813976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=p0C9ktX4QSonS3TNSrGj0Zh4aH/sYy+vWvn2R/KLqi0=;
 b=Oc63SjYxcIaUJw2HjNKnYOJkrx2c+FxRnCgM14eCafgmeD1fZ4vR3Xj1
 rQ77XTguuGkwAEv0MQEt7xV4uKQgcXc3q+SjeAv+IWjQxWZiy2nQg3DHd
 +ly9+MX/hyJI1a2tlO/Ut6oQTkz6WVrpBx+tHubbaBqAa/1DxFihl45iD
 xqG0eHLm+5DtWv5z7+7GIyV1xJCOJVqcXjbMRJTLERGKeEcx3+cbWjozs
 11U5gagg0hvh4I4gEw0MbYQ6B4PmDt6RJWqdvYG3/CHBJ4dRmR9A7ly+M
 4Jw+AulUOA979k8r/rqWaqLs4j7ZOdXVK320Tl5uzUGKKhew79TqU43Ob Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298887909"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="298887909"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="599146556"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="599146556"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 27 Sep 2022 04:26:06 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:06 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8PZf75+V3Ddd/CoApkzXHveLJXFtKKZEtGNl/Gk1vQnPswPca1WYaeEkLePhumjq143Cyhm0lyV1KhZHmFUF1y0B3QYNheQa7Lepbm1mkq/e7fyE0qM8XLGN7DUJNgxSiszxdoLhgVmh8naLQrT+puMfKR1bRmK4n+F+I8HmlTCCjCS5/xtxw+e96wgmUu+t6qBcBnln7ZFBou7vVQOgx7Na3N+icEUREodMLSXy5xE4IOo0GLn0BSiZ/exxqS4l+gebfS5fiWb4hvqwdk15roJxivhE8JsCGPLs15A/pxhoIUFzlelBFv2dM2NibjFwDXYKRc3shj+9954c8cbag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mlSssyNYSkG9vGBbBUnTVdOuoMzGMnP6bdrqzKkggU=;
 b=F7JcGRUUa8KerucjthxiQCbGclJJrqwLvw6jdDnxyfd2ptxGRffDdSqfd/XwSHmyAJ0XJnBKoklY5eUtZ3xT5l2W0jepUy0w30ZeZ1Rogekk4d+IDQVpnQUUFfxqHa4xvcx/zHclyQ4ktCoZ1rF25LULqorZz1abNSqTYn4YCvaWukPMKmWOLKdCrq4gK02bmL44B8HkzmEIiN5pPI9LoLDuY5pGs2bg/c9ZHfNOJ4LM7jzboAH31UYzXL+CcfcpK3oakfx41HZmcEczqz7Xg/q1NXV2yADlu6PDXfSlFZG6+WpIk6zZXz94ONRBsmFmRlg962lhmW4QfGZAVbc3pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 BL1PR11MB5333.namprd11.prod.outlook.com (2603:10b6:208:309::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 11:26:03 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:03 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:42 +0530
Message-ID: <20220927112547.328078-2-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::13) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|BL1PR11MB5333:EE_
X-MS-Office365-Filtering-Correlation-Id: 251327a9-406e-48e2-5bea-08daa07b0f5a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A+0vYlmZR+/EVM9d+uzF8n8DEENtcZfFqjiWOMhrwAtlscpnQzP/8ydKovF4iYfVhwk1eElalgHnkaVfbhwHuOH33GbOGoFofx2rqrTrCHbR3ZKKAlN+6o5WGxdNDQOGbQKJp2dR+AsO4v7RIaMCmuioH0SFgY8+gT/Ioi4ASc/xeU8QCAb4iJ45gq4Ay0MoGFrcctx8/3hClo+44MI8mIws7+wIUoCc5AdyyMSQfhvRHWUF0yIrpNtm2Z1Ckgb9NPISmNwTQhEuypxgnayT6Rf4BswyUVxj4m/5MAQFWYNcX8eL+S0dyAmAa48JHYotXx7cKkVDyXDbtZyYV8LtVFHK5UQIHOldAQgaw6kM7emG0nRlMrEKBmHxSbze8wy+i4LdSgQg35dP+C6VUBFJoJTIIh1weOkRWOnGgpVXUXloDgvRIfvl+Ebw1N8XKqQifJM2uvwOHcxnh8viR3YbB666vdISmQU8KRGyCV+kUgP9ODxSmV4459HwYjJ3DVzuXKKTRkIZjL/i2dibULZy36eKI/vBW6+83GA9cPn0UFFLioTywNsegQ8JGEf3Wp4ADA7+xaymWMrzd1eXaV8F7XIsPGrpGtN/YoES1BUtbcb0RfK2qZKg+qmV/LvsSgtVMVxHCW61+mXivcuATiB9tVv9p4JT1yuIL5ZD4yYTQGBdJbaoAtH71EtUYilYwheTmmTYxQOa0rqlorU3tMug3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(39860400002)(366004)(346002)(451199015)(86362001)(8676002)(66476007)(66556008)(38100700002)(82960400001)(8936002)(478600001)(6506007)(66946007)(6486002)(41300700001)(36756003)(44832011)(30864003)(316002)(6916009)(83380400001)(54906003)(26005)(6512007)(5660300002)(186003)(1076003)(2906002)(6666004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+QQ1FbL2qdw7fGnVDT8R+WYkEL9U2I49Z8mB6SUxtZsn8bAYY9U7YO11Ci5x?=
 =?us-ascii?Q?/u4/cxyN+Z1qFTF0D0KT40z2NuY/4InzkwYx6ehn8DUKDdH1gUECE9KwHhQ4?=
 =?us-ascii?Q?m6k9BIYKusPw5e5q3E748TwxMva2TqlyAvycG6NKvLgXKRFPIcovYlyKe16t?=
 =?us-ascii?Q?/aQsr6W+TLaYhQUXafLgUPgR8nO8k57uzcqOxkh8SvdmnUV/7xt7E/Pt+BGC?=
 =?us-ascii?Q?cX/T8HrcAiqOjBRk0AaAVhzfn7O10xbyeZI9vcXTWGrMOBHqoSiLn57TczdV?=
 =?us-ascii?Q?JYiLhhHLvm5cdU9/7UOF+uKwNoyUJLd8eFXu4qP77rVQWSmSIXpJEfzTJfYg?=
 =?us-ascii?Q?FKLQ0LTcMCczS9x6Pg9HdGSrq05CbFk5eLRgkn0ar3TkP/RfzCsZfDJ9Ts/r?=
 =?us-ascii?Q?BV8D62zdPlcNlHHYnzoCE6r20AebcO6tpNVqs7mrrYIwhqLCSVvQuppHklIg?=
 =?us-ascii?Q?1RrN1KKYyQdp6XJ3vfj5q7lbu/6l9VR41bhyIm72cUVbMMY5ElzwHZbM10Pz?=
 =?us-ascii?Q?u2xFhENVal6q7PxXscUTFZCUpz2y8Plp1TDOSk2K1olGp8z5DD/4rcpu6SLZ?=
 =?us-ascii?Q?jFhnvgFWu/i1Pj8IIja3rWGtyKBcviI9CK6RJUfVBvNKVx547zI5WY/JRQjS?=
 =?us-ascii?Q?myysKGU94kNOUph+YjoH7DEZPk3VuJ47bAnTGmmlTOkjs1pRzkJQ+XxpCEU/?=
 =?us-ascii?Q?TwsIZMN47LKyP06TgPjNZS04AtJiiM2CJ6LX8llDVYnnCekQ72DHy+Q+OWGm?=
 =?us-ascii?Q?3lwLvHd2MwmyXKx1+hac1LkDwsNJhS8iDHv+FVBwtRxWPWo0o/GY1HR2ODG4?=
 =?us-ascii?Q?ADE/229INe1TXbErOCVWJAFQT+hM5X0gUQs1w5VUFhEHk+d5QEkpYw1QUWY4?=
 =?us-ascii?Q?b1KnJWssxEvnqcvh4dN+XWX+HW5/RanJy+G9g0le1cpjkIUK1Pd6ov2ROJ8z?=
 =?us-ascii?Q?8AMoWo4I7nX8N8Qdl2hifP1yIT1uHzSmD22esjJ8xY7zUvMVQteAfyiXQiGc?=
 =?us-ascii?Q?0j0eUJmtMhqWa0rt38HkiiY8Wp01bk2rRLmzWCe9vxdZPUdzK35HFVUCuL1W?=
 =?us-ascii?Q?brvsVTGybmoOl3lHEdXOiiHKI0wfPLa9nUzuNsgLehholCM3z167+tMoXA57?=
 =?us-ascii?Q?Srq/SXRbRAkjWf8mTcwz3x4DHYsIDZgqRyLB1WnpkskbnrH0eENw0gJAyUt1?=
 =?us-ascii?Q?5VYbXc5bfGnWl5bhiwpMJN95apDF+vvR7hqyGODcNQPvKd7ZW4creI8cymhg?=
 =?us-ascii?Q?9gUivMtQdzGL0lpi4COMGNl2i6zjVacl9cC0AIplau0OhZ+yMQGlX24/i1F2?=
 =?us-ascii?Q?dCKxXvpGSerovpu2nJZPV/PqrDQZ5nbbuwv0o6r6qN43SieEx9BapOj4Tauy?=
 =?us-ascii?Q?3Z2R83K9M5TBuuRp1E4F2YDL+agR6reCuyxse+EFkAs0paMzQLa3eo6xQh3u?=
 =?us-ascii?Q?3nWk8QhE/hpRY6aaDYZBcDI3gpvQth6j1HsMxY7dkESn0Vqc11bYLVVoRN2L?=
 =?us-ascii?Q?ACvknoGb+fZIt3Ms51B3yO49ade1SMwljT16pU5T/1NbdXF5wj3mXy8d6eGm?=
 =?us-ascii?Q?+4JihPAOYb/YpHDeJD+FmWzjkycFGUaFoCLe9+lKPVfNAtrpv84RbMmve92o?=
 =?us-ascii?Q?2D7ATQuao7kRhqFBYqz/PJg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 251327a9-406e-48e2-5bea-08daa07b0f5a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:02.8941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fg23Vucje7QhluDxP+eeOLzlSH7BzIMzayQ2TxB4h3ydcfG1njDpEQW+eE7cIF01O0wjSGdGgn9JxXkufMGpPoSSWvA9Kpb/W6Y1wc5Jp9gHnSsXn/7KHhBhAQH0/NU/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5333
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915/display: Pass struct
 drm_i915_private to DDI_BUF_CTL macro
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

This is a prep patch for a patch series in which register offset of the
DDI ports are not calculated using the port enums but using a different
datastructure part of the device info.
So the device info is passed as a parameter to the macro DDI_BUF_CTL but
unused yet.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 12 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 39 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 14 +++----
 drivers/gpu/drm/i915/display/intel_tc.c      |  6 +--
 drivers/gpu/drm/i915/gvt/display.c           | 30 +++++++--------
 drivers/gpu/drm/i915/gvt/handlers.c          | 17 +++++----
 drivers/gpu/drm/i915/i915_reg.h              |  6 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 10 ++---
 9 files changed, 76 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ed4d93942dbd..70098b67149b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -548,11 +548,11 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp |= DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				  DDI_BUF_IS_IDLE),
 				  500))
 			drm_err(&dev_priv->drm, "DDI port:%c buffer idle\n",
@@ -1400,11 +1400,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
-		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		tmp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), tmp);
 
-		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 				 DDI_BUF_IS_IDLE),
 				 8))
 			drm_err(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c28..aae429bd2e2b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -172,7 +172,7 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			 DDI_BUF_IS_IDLE), 8))
 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
 			port_name(port));
@@ -189,7 +189,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
+	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port)) &
 			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
 
 	if (ret)
@@ -730,7 +730,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	if (!wakeref)
 		return;
 
-	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	tmp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (!(tmp & DDI_BUF_CTL_ENABLE))
 		goto out;
 
@@ -1397,8 +1397,8 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
 	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 }
 
 static void _icl_ddi_enable_clock(struct drm_i915_private *i915, i915_reg_t reg,
@@ -2577,10 +2577,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 	bool wait = false;
 	u32 val;
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 	if (val & DDI_BUF_CTL_ENABLE) {
 		val &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), val);
 		wait = true;
 	}
 
@@ -2909,7 +2909,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
 		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), buf_ctl);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
@@ -3113,9 +3113,9 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
 	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
+		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			intel_de_write(dev_priv, DDI_BUF_CTL(port),
+			intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port),
 				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
 			wait = true;
 		}
@@ -3145,8 +3145,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		adlp_tbt_to_dp_alt_switch_wa(encoder);
 
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, port), intel_dp->DP);
+	intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, port));
 
 	intel_wait_ddi_buf_active(dev_priv, port);
 }
@@ -3805,13 +3805,15 @@ static struct intel_connector *
 intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
-	enum port port = dig_port->base.port;
+	struct intel_encoder *encoder = &dig_port->base;
+	enum port port = encoder->port;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->dp.output_reg = DDI_BUF_CTL(port);
+	dig_port->dp.output_reg = DDI_BUF_CTL(i915, port);
 	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
@@ -4043,12 +4045,13 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
+	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return NULL;
 
-	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
+	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(dev_priv, port);
 	intel_hdmi_init_connector(dig_port, connector);
 
 	return connector;
@@ -4084,7 +4087,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_port)
 		return max_lanes;
 
 	if (port == PORT_A || port == PORT_E) {
-		if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+		if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 			max_lanes = port == PORT_A ? 4 : 0;
 		else
 			/* Both A and E share 2 lanes */
@@ -4446,11 +4449,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	if (DISPLAY_VER(dev_priv) >= 11)
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& DDI_BUF_PORT_REVERSAL;
 	else
 		dig_port->saved_port_bits =
-			intel_de_read(dev_priv, DDI_BUF_CTL(port))
+			intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, port))
 			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
 	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dd008ba8afe3..194a4758ee04 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7880,7 +7880,7 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_A)) & DDI_A_4_LANES)
 		return false;
 
 	if (!dev_priv->display.vbt.int_crt_support)
@@ -7966,7 +7966,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_crt_init(dev_priv);
 
 		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+		found = intel_de_read(dev_priv,
+				      DDI_BUF_CTL(dev_priv, PORT_A)) &
+				      DDI_INIT_DISPLAY_DETECTED;
 		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 7f47e5c85c81..d3d92ac26099 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -818,9 +818,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E),
 			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		udelay(600);
 
@@ -864,10 +864,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
 
-		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		temp = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 		temp &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), temp);
+		intel_de_posting_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
 		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
@@ -909,9 +909,9 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	val &= ~FDI_RX_ENABLE;
 	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
+	val = intel_de_read(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E));
 	val &= ~DDI_BUF_CTL_ENABLE;
-	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
+	intel_de_write(dev_priv, DDI_BUF_CTL(dev_priv, PORT_E), val);
 
 	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e5af955b5600..8baee1f19d89 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -410,12 +410,12 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	if (take)
 		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	else
 		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
-	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
+	intel_uncore_write(uncore, DDI_BUF_CTL(i915, port), val);
 
 	return true;
 }
@@ -455,7 +455,7 @@ static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
 	enum port port = dig_port->base.port;
 	u32 val;
 
-	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
+	val = intel_uncore_read(uncore, DDI_BUF_CTL(i915, port));
 	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c7722c818b4d..5e3cd306c41d 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -213,10 +213,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				  PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				  PORT_PLL_ENABLE);
 
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) &=
 				~(DDI_INIT_DISPLAY_DETECTED |
 				  DDI_BUF_CTL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(port)) |= DDI_BUF_IS_IDLE;
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, port)) |= DDI_BUF_IS_IDLE;
 		}
 		vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) &=
 			~(PORTA_HOTPLUG_ENABLE | PORTA_HOTPLUG_STATUS_MASK);
@@ -276,9 +276,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |=
 				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -305,9 +305,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -335,9 +335,9 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(PORT_PLL_POWER_STATE | PORT_PLL_POWER_ENABLE |
 				 PORT_PLL_REF_SEL | PORT_PLL_LOCK |
 				 PORT_PLL_ENABLE);
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |=
 				DDI_BUF_CTL_ENABLE;
-			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
+			vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
@@ -416,8 +416,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_B)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_B)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTB_HOTPLUG_CPT;
 	}
 
@@ -442,8 +442,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_C)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_C)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIC_DETECTED;
 	}
 
@@ -468,8 +468,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, PORT_CLK_SEL(PORT_D)) |=
 				PORT_CLK_SEL_LCPLL_810;
 		}
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) |= DDI_BUF_CTL_ENABLE;
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_D)) &= ~DDI_BUF_IS_IDLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) |= DDI_BUF_CTL_ENABLE;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_D)) &= ~DDI_BUF_IS_IDLE;
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
 	}
 
@@ -488,7 +488,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		else
 			vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTA_HOTPLUG_SPT;
 
-		vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
+		vgpu_vreg_t(vgpu, DDI_BUF_CTL(dev_priv, PORT_A)) |= DDI_INIT_DISPLAY_DETECTED;
 	}
 
 	/* Clear host CRT status, so guest couldn't detect this host CRT. */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index daac2050d77d..15393c861721 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -787,13 +787,15 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
 static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+
 	write_vreg(vgpu, offset, p_data, bytes);
 
 	if (vgpu_vreg(vgpu, offset) & DDI_BUF_CTL_ENABLE) {
 		vgpu_vreg(vgpu, offset) &= ~DDI_BUF_IS_IDLE;
 	} else {
 		vgpu_vreg(vgpu, offset) |= DDI_BUF_IS_IDLE;
-		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(PORT_E)))
+		if (offset == i915_mmio_reg_offset(DDI_BUF_CTL(i915, PORT_E)))
 			vgpu_vreg_t(vgpu, DP_TP_STATUS(PORT_E))
 				&= ~DP_TP_STATUS_AUTOTRAIN_DONE;
 	}
@@ -812,7 +814,8 @@ static int fdi_rx_iir_mmio_write(struct intel_vgpu *vgpu,
 
 static int fdi_auto_training_started(struct intel_vgpu *vgpu)
 {
-	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_E));
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+	u32 ddi_buf_ctl = vgpu_vreg_t(vgpu, DDI_BUF_CTL(i915, PORT_E));
 	u32 rx_ctl = vgpu_vreg(vgpu, _FDI_RXA_CTL);
 	u32 tx_ctl = vgpu_vreg_t(vgpu, DP_TP_CTL(PORT_E));
 
@@ -2333,11 +2336,11 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4, 0, 0, 0, D_ALL, NULL,
 		dp_aux_ch_ctl_mmio_write);
 
-	MMIO_DH(DDI_BUF_CTL(PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
-	MMIO_DH(DDI_BUF_CTL(PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_A), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_B), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_C), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_D), D_ALL, NULL, ddi_buf_ctl_mmio_write);
+	MMIO_DH(DDI_BUF_CTL(dev_priv, PORT_E), D_ALL, NULL, ddi_buf_ctl_mmio_write);
 
 	MMIO_DH(DP_TP_CTL(PORT_A), D_ALL, NULL, dp_tp_ctl_mmio_write);
 	MMIO_DH(DP_TP_CTL(PORT_B), D_ALL, NULL, dp_tp_ctl_mmio_write);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5003a5ffbc6a..67f3b17b2360 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6936,7 +6936,11 @@ enum skl_power_gate {
 /* DDI Buffer Control */
 #define _DDI_BUF_CTL_A				0x64000
 #define _DDI_BUF_CTL_B				0x64100
-#define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
+#define DDI_BUF_CTL(i915, port) ({ \
+					(void)i915; /* Suppress unused variable warning */ \
+					_MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B); \
+				 })
+
 #define  DDI_BUF_CTL_ENABLE			(1 << 31)
 #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
 #define  DDI_BUF_EMP_MASK			(0xf << 24)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 8279dc580a3e..b55bdc2cdd84 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -503,11 +503,11 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SBI_CTL_STAT);
 	MMIO_D(PIXCLK_GATE);
 	MMIO_F(_MMIO(_DPA_AUX_CH_CTL), 6 * 4);
-	MMIO_D(DDI_BUF_CTL(PORT_A));
-	MMIO_D(DDI_BUF_CTL(PORT_B));
-	MMIO_D(DDI_BUF_CTL(PORT_C));
-	MMIO_D(DDI_BUF_CTL(PORT_D));
-	MMIO_D(DDI_BUF_CTL(PORT_E));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_A));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_B));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_C));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_D));
+	MMIO_D(DDI_BUF_CTL(dev_priv, PORT_E));
 	MMIO_D(DP_TP_CTL(PORT_A));
 	MMIO_D(DP_TP_CTL(PORT_B));
 	MMIO_D(DP_TP_CTL(PORT_C));
-- 
2.34.1

