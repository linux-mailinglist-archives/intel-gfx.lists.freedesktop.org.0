Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 655DD5EC13F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87C210E8E1;
	Tue, 27 Sep 2022 11:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AEC910E8F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664278012; x=1695814012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fST01bqA76R7xrrmrsU92SIV/RblW/u3R9OUtcZ2Cws=;
 b=mAeJ0JsiLvdRoIBoDaSowTnpcqO0yzMJ+GOpmXhWDwFDcbGeEo42R4Il
 wB0h2PR9KwSRWNq2Pxr8M6+UkSJFeO0P/vUFOMsnnX5Vn/pUu8JTAw86R
 cCiBX7MaWfM2epZiwXOGspSZbg1xt9sIJcR0q3uaKoTAtmjWzdklluTuF
 YmM7v0RmnzDUURbpZcMyEDl0pMpUpj+1B/01DUfG3CLRZZ+OWL8JuRVl1
 S8WFFXepU5aKKQb9jd12+QdOIJzTl3z/cdhugu2AE7AS04dGFsk4OL/FQ
 1gMidNp1IIr4QkDamn1qR5h4gib6PQk6Mc/g8PX6jiPHmUuKwIivYJu/J g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327647667"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="327647667"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725477052"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="725477052"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2022 04:26:51 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:51 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:26:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nlx2FcfgYnvijT5wvAIo74emTEFWjnz2wjOFFheMY2rIx7uCI6Z6N46uMOePMThyyDboKY7rWKkZ74LcM53Xn5Gc62Os3m7WHwWI2uz2bPozvyjdO1AISXOVcsEMXtU95BX0sB3C4VfFYQE9RKzUkhb9ehnai9h2QvVLpv+3J1g3VVysjmhP29hzx55ew/mM/KYDM6AVw8RC6E9aKaubInq9ZhfUG0/hfR6wDSRHZrTtfYvM3RkNOtqss4eRZrdlV2mT8y4Vx2Ptzz3fkWdJ6XMOknnLJ5dp/XVUrUo7pwXhcKJeESPMQbmO+zJodGNdMAJH95VfCawDzVOY8gXYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qbqcHz23U2nm2OQFZ+baakO25xa8oyD+WBYVLU4tbk=;
 b=farvDefqdFFcD9D+qEjeWuOIGKr/HxrHM4R9j+xwNptDfSaIyCNUgs5XhTRjmZoeJzlliiKJhQt1bIWHTVjD7PuonMe9j9yZyOHEhdOc2IHweZ6qN8N1A+1nAXWHhXz+VOFekYpT56ni0xvWpeukPc+GpwzmVa+WH1Kwy4QoLP/XI9lSBhPEqy/TFyV7GFZDNPMeVVMCWln/uaWroILil89ohI0hKFnWf+mZv1TDLOye+x5BCnAQ8k7s2Y0TQyYEUdUPLjADyAz0VWGO06gRz2UYXtMmv91tq5chgm1qisblFQz+h+KdJj8nxSIO9jhfjhNSoSGEJh7Onau7GXUcrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Tue, 27 Sep 2022 11:26:49 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:26:49 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 27 Sep 2022 16:55:47 +0530
Message-ID: <20220927112547.328078-7-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
References: <20220927112547.328078-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN0PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::18) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 14193756-e625-43a8-09b2-08daa07b2b1d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zpfN2er1MYhkm4ciG6KI3m5FIpMbmhSUlqOQVPicCFA+95Ms6lNdkaC44kJ70EZGNzPXhBc3yBsyM+52PEmbxXgZ6JMRMainhHCGd3kCR4j19dd2Tq1fcm2pGXXFbzfjGef46L5qIZgzYa30W7T1UUqCnUHmIphxn3IyX2T8uEgWevip63jLQK5vohoii1m363LyAymV+HWzom9mq3NFmebo6wKd/PwsomqQaEFqvhGm0bylkNDFIcKbE5mEacaGWajQsWAiqvPHkV0kTx2cCJciCIs0pXQHDdT4C0kR46FpRSz69KT9/TXevudmADFfkauxWACiUPcB0ECsj4HocEhPzoqkX/GyKAlZfXyuylNEhsBgF4CMecw6Wl9FL8No0OvPw5AB5RlEKmPqswuiyErd9sZlYv3Fixl7CtP3seeRqoOlMTJJYp2PxlWu20ld6gTLU2bisxA0b1VV21Hu8cN11u1oX04EOuRAzuEhHzb1bq7SpyHKgop/GOCaCA73Vky5oSzKgV8l8LAK5wFbYQSxAc7y7kXZxy66UfXnza53t+VB3D2rT+5HBZZP4qnMCSIO/r6HMb+jNpKm8q1QOvB4RBzQe+VWSFYSuRA1bjysRy+SugShtseTKvcbxaaZ7ee1DJfi6g/QD4409zrNQ4i6Yq28FxmPEXxgnuvH0kvespmJUXl/ooskEqO66q1PUDzxnJFBCd5QnV4e98RD7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(41300700001)(2906002)(44832011)(36756003)(5660300002)(8936002)(66476007)(38100700002)(4326008)(66946007)(54906003)(8676002)(478600001)(316002)(66556008)(6486002)(6916009)(86362001)(2616005)(1076003)(186003)(82960400001)(6506007)(83380400001)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sDqf3GVH4696DC/jaQa/ujmKSt3z2uWREU8iZwx//5mOyEk8cO0HN0Y+81/u?=
 =?us-ascii?Q?SF954yIeIbldqVKe7iDkNCNUVpiVaNGNwQ9fzU/9OuxtJXADXFdLCVloxCMq?=
 =?us-ascii?Q?3CSj4HCTfxPLGM8R/stAhzg9YlBrQEqwFP2szwlzKNGeiKJ/WhaxONrOb7oC?=
 =?us-ascii?Q?hciYnI2CkTXnlA5vifuTnJOCcRQJbZhITcLXB8UHcyVk+G51MrO6sZgyTW6d?=
 =?us-ascii?Q?qbVvb/VxBHHbB8TpLsAkvlRvqdQ5NUvU36l33iYeZyBDZOkLJmIU7s6KxRbm?=
 =?us-ascii?Q?ibhhFiHwZNYOJSGJgtFlulDath5tGMuqz4b0PObWTcx3lc8kJIol9yQrrs57?=
 =?us-ascii?Q?GfQBImW/JqnX96A4bmR3dNstCBufKeggOEYuucKv/xpZSOjyY4k3z3emQ15X?=
 =?us-ascii?Q?TXZ8/Pv1n1DIs+K/BT/0hcHMUZSUvK9xNdAOQIXrztfNdhK1pJW29yNiSYE/?=
 =?us-ascii?Q?fGvDNIJRerZotvQuSMrA+xAhXbdsmggWSekAVSmBmE8vn3uIU+XLUu9RgCs7?=
 =?us-ascii?Q?TYPkH8d4RjTPDPx2hXkB6J1b10R6D2TTygP3Ty9zdOhj/RrIa7V3ka7xtsRZ?=
 =?us-ascii?Q?DKWAW0YyxXRxJslIb/s7uW6v1DOpYtU5+QIbhgklz9gb/hbKy738nRWdjmbP?=
 =?us-ascii?Q?7uje0trsMZrM+H9j5HFbl1EeY5PjTvyg0KPksakk8R2hUGRTctgNUEvYHRyD?=
 =?us-ascii?Q?uu2YEBA1A+EgG0cz2mSg0n6GCn7xzkOTeH07QV3snhbxuc/fllnaFgEcFQl/?=
 =?us-ascii?Q?HlACzzuRoa0q++BWctZ/mDKkqgYOKQyMiYaKkFDKpJP+ww8K5LIPZTpSKCmT?=
 =?us-ascii?Q?s26VBhvpURg+5gVRmuHUkZCJ5HuMN/7IKK668MhdZLonEw5r0vwxttUEIG/f?=
 =?us-ascii?Q?IdlhDQAM/qfLgxEbnhcLx6Cf8j3KutKp+T+lbG8ssupYaksOsSuhmsA2Tv4Y?=
 =?us-ascii?Q?R38FZI9/bH2GCBJDEnp37ETg2Z/M7CeMpvs6BOmUsDHU6j89ENIubCDySACj?=
 =?us-ascii?Q?qCdUcQeJUuCpL0Ly1RPYtcr4N9oKgHxe100epURqqdCkk8hO07c9QAPpe+Fd?=
 =?us-ascii?Q?/BrWAGXhhVLndFDvhHAVMTYHU+IQvkhq9tLphq5d5wnG18zCr7JjOMTlQeH6?=
 =?us-ascii?Q?UB0CI+tT/lAduAfzXwahuxoM5Fb1O2yANV7V340Alr7RQAXWnb/LTYO4Wr98?=
 =?us-ascii?Q?ceu8XDFGEy8XL2XBFs9RtUSRmHE3rRo3nGLL3daJqxMiKedwyDemOOYRXoBu?=
 =?us-ascii?Q?YMCOeFeHXyl/tS3g2OJDy2GI1ne9aCYPib5VK3sGSd3cmGqwZ+NzTWaq0OSR?=
 =?us-ascii?Q?W49SyNkOSwiFGrQ2FRK8xd8BHXDv4ugBUS9x38gS0ezidsals0HZhM/c0f4t?=
 =?us-ascii?Q?AUKEeaQxYVnFF2F1HQeNQJq6VTHosk7m26v6z8Lhv/tX7b5Nyycv5QDb2rks?=
 =?us-ascii?Q?ZxNgTPZUdXfhNwCW1GM/0neXkB0tYC5TNKZ+kfo/arMVfYNFZ+nwWZ2HiNVO?=
 =?us-ascii?Q?tlbZF4N5JZkhf1tq/ZM71+H+eNaYei4JDfh62PvHcyRSGoivcxpmxlNGsSqY?=
 =?us-ascii?Q?cfSZn7KoLhoDqO8gnxVRzdsq20KoskGngCHQ5ArGsBiLppo0EyVbJhtDFEYv?=
 =?us-ascii?Q?lYngL+3Vx1N6PbxTUcdjm6g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14193756-e625-43a8-09b2-08daa07b2b1d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 11:26:49.3278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Qk/3XZKqf6ceCjhBXLtalAML9wXKIC8eQaq82vx6pq3Y2aiHvIkI22kibGgzMDXFgvQwNGd2ViRNQsqY1WCg8E5TGaGeweAkTJvgDhw29ukr3lss7IxeP6dBvYhU4l1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/display: cleanup unused DDI
 port enums
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

DDI port enums PORT_G/H/I were added in the commit -
"6c8337dafaa9 drm/i915/tgl: Add additional ports for Tiger Lake" to
identify new ports added in the platform.
In the subsequent commits those ports were identified by new enums
PORT_TC1/TC2/TC3.. to differentiate TypeC ports from non-TypeC.
However, the enum definitions PORT_G/H/I and few usages of these enums
were left as it is.
These enums are unused as of today and can be removed.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 3 ---
 drivers/gpu/drm/i915/display/intel_display.h | 9 ---------
 include/drm/i915_component.h                 | 2 +-
 3 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ab472fa757d8..b0dfb37e402a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2404,9 +2404,6 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_D] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 		[PORT_E] = { DVO_PORT_HDMIE, DVO_PORT_DPE, DVO_PORT_CRT },
 		[PORT_F] = { DVO_PORT_HDMIF, DVO_PORT_DPF, -1 },
-		[PORT_G] = { DVO_PORT_HDMIG, DVO_PORT_DPG, -1 },
-		[PORT_H] = { DVO_PORT_HDMIH, DVO_PORT_DPH, -1 },
-		[PORT_I] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 	/*
 	 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e0d5a9e569d8..1abc5da650f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -208,9 +208,6 @@ enum port {
 	PORT_D,
 	PORT_E,
 	PORT_F,
-	PORT_G,
-	PORT_H,
-	PORT_I,
 
 	/* Non-TypeC ports must be defined above */
 	PORT_TC1,
@@ -244,12 +241,6 @@ static inline const char *port_identifier(enum port port)
 		return "Port E";
 	case PORT_F:
 		return "Port F";
-	case PORT_G:
-		return "Port G";
-	case PORT_H:
-		return "Port H";
-	case PORT_I:
-		return "Port I";
 	case PORT_TC1:
 		return "Port TC1";
 	case PORT_TC2:
diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
index 4b31bab5533a..335822d6960a 100644
--- a/include/drm/i915_component.h
+++ b/include/drm/i915_component.h
@@ -35,7 +35,7 @@ enum i915_component_type {
 /* MAX_PORT is the number of port
  * It must be sync with I915_MAX_PORTS defined i915_drv.h
  */
-#define MAX_PORTS 15
+#define MAX_PORTS 12
 
 /**
  * struct i915_audio_component - Used for direct communication between i915 and hda drivers
-- 
2.34.1

