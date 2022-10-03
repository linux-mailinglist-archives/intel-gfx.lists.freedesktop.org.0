Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0065F2F51
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA13F10E2E7;
	Mon,  3 Oct 2022 11:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4846F10E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795384; x=1696331384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=axpCy/cvmkX/nPyW7nDkGmLqafnYae9FB/kU22RDNvs=;
 b=EH/diPnfAzsSkvJTu918wtLFqeFVh8As6yZZQkiGeWnTnEYWXc/2IrAy
 00ZL3n1Py5LEzbN61mUvxu+AvZJ0swMg+8tfI8UP2McxmG0OVJWcRq95B
 KCG7Uj98AQcPq5jAVfRMIgQR7vl9x2386Y4IpqNWQFYG3ABWs4q6Dw149
 KAH9+b0mJ/5l4CbCtjU+vYqOgm394ZwMmqyQ8mcXCFX2N0DnNPqXcpKqR
 k2KH3LwwP8r3vPNLKk3U2zKmdQUWEsCGoz/PRZXol/rzeoF6vVWm1gUrW
 tmrLEdSZ2Oa5pmS+MqfMhgl5+KZCm+mzIbcmWPh2iZ1cCRiTyEesuwDE5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="302584494"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="302584494"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="868549255"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="868549255"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2022 04:09:44 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:09:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MdDeY5aLxzNRiM1JvkdgCR0aW3ytDM80gFY53CFt+ggIBDehMW5YZlABC9FbofAWIquyVr48FzWM5JMS3Sm/dCFVs0HH0I619E4UkErOr9EanyAHlw/Cn6EGhiU6qosS4zpZ2omrDOnguGgcFv1iW+VYwruJisPo4ypunkRLO9ZlK9coIMQRtms/tpU8akAGSsMOg6wjBvquUYLB3Yg7sBa+P+BfiscosGV931FZkuQnoBKwhQ26RD7r44213ZSTLGsYPoBFk/i4nmKKRh2wolr1pSAKeIsHMEv3AzBMoSHx/MtmTuw7X23+k0u/vNeCpxcgBfuI5hTbzKI6AtG2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRMBqPWpEV4xajyxjb92OC1osBEUvd+wrmDWaXKHyDw=;
 b=Qd5EBG3tDX0iRGue395BWwRj51cJPiRs9cT/BDfEaUYo/zAT0m3VlPDsRJnQSxiG17wIdfNsms7RLRjt6PVim8p/mNodNrNySdZl7K+ou6vIHTrk4fGxU2arvhbj2QWFbg+atom0fjghobZPcIFS9a0kOiEEojcE3ox/tGmMKg+J09+eXKkVho+8QSmTsXss/3WwgJM3hChqJr2w9wvG154GxAsyRSJNrQtAo5qbmiEg1EHrFwsL3GHFMzRk3LUedfYFY+klZDpf6fM/psJjDNZPyz6OUylZCYLQAVGAaajJfXh7tyNKXg0xJovLAgVq45fCJvnIyP8odXXM81nPrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:55 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:55 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:58 +0530
Message-ID: <20221003110759.140398-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0147.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::32) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 106a3495-1e1d-40aa-1803-08daa52fa9c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lOK/d0drYoDG7Ik8XPRx17/HSoiNlwqc7y00WQfD5wpw9n7dci5V9HM+mFJiv7Z4r9y2d1O2klBoL7x7Uzpx311a1OgYaAfbfJlsy3tunwiG/X1thqcEZr4MSRRYRNoBrQnMAJliA8nKT4ed4iACg3C/qMbIyXBfbNIhK6I29tiHV3gnErBkx6zHQyBcqqtCTzA2bPkdtoHttfG3+bb6aq9IbUqaoLEuezbSG5ioPxe04Ehb6S5VW7eUpobbCxMBjxp8VNP4QNFiO1Lvj/wU4hpUYf1w9UvylehncP33c9FBrPJX9jQqM7ebbWwgx/cAN3bDgUDcMoCLmYAsIt9GkteONyHwblm8cSh51layRRzuTV0GnQEvKaoHuNBHrAYApj391dwrLcocdRT+UCmzHwtrb2FLEqDoMNAO/iqW40Azv89icwCLQDnlSU04rWckx+QFW5N36ojvKE5I/zeQEFKhW5R1ZMNmmuzVRfXfasOcr+Xm8UC13v4JxEqvybk+7oxWU7idoPlseIOx6UVqzk10W6dokUwAREV3hUKkeiDEO2KoEti2lnH9nqmhHjjzaW4T4iPz72LTqcOnJLIpSRikaYkZVR4fEkinUkZfvk8a78rpMwfXARMY8hnu3BkNfyxzzc/9J10YwvVMh4t48gA2vdfNfYXUfkuqdVY28YbeVXR7k0Tgib0RuHfzMl0O8y8vKM5l7Q+0wMx2qY7jkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AbF/C31vpiz0jKqrA9uJEHocJsVE0HGhw0gOQ24Hat5KZ5LdMbdELA2OJ5R0?=
 =?us-ascii?Q?dUMMZF4dyuyx67zee2Kp12fdaaq6l0vZ26UDTEHxDwJ+GQ6TnveR4bCfYLCZ?=
 =?us-ascii?Q?BUYiypIaWCI3tdSBRDoqHMb0nQe3O20oVHMXBOhL0Y7T17gtQZrc0Mp5F358?=
 =?us-ascii?Q?o+BNu+AlYrqMTacrHnfPGqTP2rxNyWrvBovp1q042zLV9OQNfeVZ4qWNknnP?=
 =?us-ascii?Q?8F+LuScOdiB+JN4tUY//pZE2GmUveDldRgiNjKgsBhzp5r02cs+KckQAq2ZL?=
 =?us-ascii?Q?oOiGM7PVXaaC5RV6lg+/VL3jYQdCDN3k2BamMi7CxIhZ1GqpQGdVQXGgFPJv?=
 =?us-ascii?Q?oIlk8zr3b2jvPlr0PRFjkx3jR4XvtslJwWuC/w7VyzcPHPQxzpU+yyS/CwNz?=
 =?us-ascii?Q?voAUeCSXeijLG3f4oKu2xQg/nFI6w9PKPKcKrfUQNUbShkrLFp6azNnKlszl?=
 =?us-ascii?Q?6ebYg9HdCDQb0qcPmMhaRe5NRkozdM0Y6RFd8iRMf6mtVoTlty5dlTkWxxWi?=
 =?us-ascii?Q?LAMjQ370TvVoFZ5EN7tecgleqxW2tZ8UQ7UEwLDCJgLnVd3S55x7uQw59THj?=
 =?us-ascii?Q?qPkiBxUOwtYRFnQu6HjF7sa6sXjMmsQi8dXIMz8lh2rDZk5w3AhuQmBmrxIJ?=
 =?us-ascii?Q?Qcq2wtIy7RYMfjnXAjKlWBW0nhf1Hk0tDTcmNPO/swwUqJl8JA0UexVym0gj?=
 =?us-ascii?Q?l5Y1h8EPxWfUKkKMzNsmQhLWTcVfMBBgJdk99//hZhLljE2iB9plRfiIzI2j?=
 =?us-ascii?Q?lieuVxRJo+5I20Vsbpc83XzhTWPRzYo7mJ6ui3U7bWG4QHV+omlZ2r4cjavp?=
 =?us-ascii?Q?ieEuccIsGOStWDmucn5yzsZNMXOIvrId/1Zv2hf+MJQUNxvwp8hxqUvQsFp5?=
 =?us-ascii?Q?D+VLEDtLCigN9pIo4TCNC+LsO2ICEgSsqIOCRsXg1Z1YhROS2UvZ5Y+UTk1V?=
 =?us-ascii?Q?K1JPvcZglTIqLaGrlsF6STn6ofvTTG+09A0kUKTwB2FSn/On55wTcC30LT45?=
 =?us-ascii?Q?D2t3IO84H3WWi949Oe6H6LYw/8myt54ADenJKs8DHN7h+Px8uhajjCaRJp5A?=
 =?us-ascii?Q?x94GWAshewCdaYrYvqKu6Qhdf9vYTUCkb9MCQdXGFBebCGXrQ9OwazRvKE6Y?=
 =?us-ascii?Q?KkibmfAnLjCOTmyxFowfNNnFpe4L7JkX9IM/l8Ape+M+1LG215SYJECFyEGI?=
 =?us-ascii?Q?+nvA6Ei4gHxS+2r2F0ZEhdODh54FLNQg+RFGdm0xzewqrd7AFs64K8h/75T6?=
 =?us-ascii?Q?lWW7/1qtWzk3kcBlJ6YsjJ3IC4Abn8MT6VbQGjPuB0W4Jmak953GYaUY7bhJ?=
 =?us-ascii?Q?VfvqqyLWyZK47PpjCDJ9hjKWS3mJ16443YfvvAp92SXSjH9nS5Ib672kJhoE?=
 =?us-ascii?Q?VLpux351ewynZw1zenuBNQLXJSf+lBjP6d6w1GBRkpBfV9Q0vFSOQanY9AgN?=
 =?us-ascii?Q?VygiL1jbZ1sunKJ0PlWRb3DTDkLzRe/sehbxTQOlvtyC64tyQcEAjvziGpPT?=
 =?us-ascii?Q?PoGIqe/hHw3mDriFGPdqLLFIswbcEPYf8Oumi6eQ6M4176LhXCXnrBHUHgV7?=
 =?us-ascii?Q?8bvVTzRY6K+yUqwDJ5Q/3f68hoq3xZQ3CYW9kXB3wOfbnqrnJr9OqKEVi4Mh?=
 =?us-ascii?Q?OcJ6B55KOt/qARQYqYwo6qw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 106a3495-1e1d-40aa-1803-08daa52fa9c0
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:55.7737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9FkixgiDq0BT0+N+JG1rZnwRauriqpD+iFi7AIcw1LfVtHdwhP87P/T9/SWTlHCxNp0EoKbM+iSbZR9EQLs1z0HeOk42jKI/k0utQe0lM+FTcTAi+ie32o/fUJc2Pme/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 5/6] drm/i915/display: Fix port_identifier
 function
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

port_identifier function was broken when TypeC ports were using enum
aliases. It would return wrong string for TypeC ports.
With unique enums for DDI ports now, fix port_identifier to cover all
ports.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 62604cadf0b8..4a5f7df7492b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -250,6 +250,18 @@ static inline const char *port_identifier(enum port port)
 		return "Port H";
 	case PORT_I:
 		return "Port I";
+	case PORT_TC1:
+		return "Port TC1";
+	case PORT_TC2:
+		return "Port TC2";
+	case PORT_TC3:
+		return "Port TC3";
+	case PORT_TC4:
+		return "Port TC4";
+	case PORT_TC5:
+		return "Port TC5";
+	case PORT_TC6:
+		return "Port TC6";
 	default:
 		return "<invalid>";
 	}
-- 
2.34.1

