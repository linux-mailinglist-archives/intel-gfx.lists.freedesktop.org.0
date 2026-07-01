Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r7M4GiUzRWpN8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144E66EF456
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SqcpILFc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D9B10ECA5;
	Wed,  1 Jul 2026 15:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0797710EA40;
 Wed,  1 Jul 2026 15:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919967; x=1814455967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=b29ZsX8EkzerqhQAA+q1JP2YZHiICHyi5XUaz6PDR+8=;
 b=SqcpILFcGAsJGzd3QA4El/BfUxj47YwkvU+Ucp7m75LSOrR38Y6GzTtF
 DW9A4/TJI5zVydUzrjLi1goYYgtifxSdh4+WZLHwQZ+/M2Z01f7PLVOXG
 4o5DuEj4CnSKyD/SfDKq4XqOiyU2Pf4l2IPM4jcLhR/29cFHwQmJR3Pxf
 HOWzxN/3awigH03Z1X8GsNXD5eaBWEwRz4xCEFE5JtOFC2mbIUgdjdCN5
 hi1xXy3Ais9Xc9Tl7ohQcQy2xiA9rHd7ibg0tWvwpc9LAFEIIGfSGdKFm
 BSutOf+j49i4Tn0JbId18OV+cgumSfU2e4qM6Kj87hXu0TDJLsn8XIjz1 A==;
X-CSE-ConnectionGUID: yq86PRLkQfaN7qZOlwuvzA==
X-CSE-MsgGUID: F57L5wD/QiaJzGh/0j63cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310051"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310051"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:47 -0700
X-CSE-ConnectionGUID: oPDClTELSYycq6VqJQKlXQ==
X-CSE-MsgGUID: 9Daw13iISFyswpsCxQbbaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515571"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:46 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jQK941umamt5mbhCy5vIMlzusojEbmIDCWa0619PoAOPxnz485zZmVd6EKjPLm7BvzEI3WJFdqv8vYoqcV3LkjU99OQ1vbkOBe3j4JdpGSJtYyusuWTeSRmmPKYTKSd/FVHdikSh1UK2CjhlK5cSKwfHGUioEnD0/7x/8R5FKqXUqzNAkd5jbwZ92dibKVIs52uBYL8PKQJmc/vifbzeP3nuQRJwO45FzqvsCTuaw2t7FDlAnqXuNVpz1Tegy9TPK888+IZ1f+kgGwv5+EQ2LOXh6Y3PpQGZH9dxWG9tsIx2eEQPri5iWtS9oDMLQrrzfqcgApCUwWwwSJ4uKSKl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WSib+Uu2q2fDXrq6vzA8iDyidhRAGTafsOSmTJ0Ttg=;
 b=jWyDXMr3151wU+YWVEjo/J1khWqVNgixApEGPEZN8srG77gFuZVvzCnTS6iJI4w8D7+iqffpUdOCn2c3Dr+mOL0g4WGablNxf09uuVhs3deAjubKaegCvSjdCcOtDrCHBbkVLHTIOSLtE+Q1bep76t2iQoYOl16bW1FxqLGI+xbuUDj1wljDgFyQglBZqKwFEdc7lWk19ECVUli8I0wwQn5T+3JTN8tbk3nKyzvkn49erRzV/FzYKuD1fWM7kjS3/+7N6CJ5UoTVxhn9ctgyasye5IPennNhsyGh63zfzhap8aszcdZGqE8HeY96osvkI3Ib4MDM2yA3udph4+OHuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 02/34] drm/i915/dp_link_caps: Factor out helper to get link
 config by index
Date: Wed, 1 Jul 2026 18:31:31 +0300
Message-ID: <20260701153204.4124150-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: c50db6eb-3af2-4cd4-3dde-08ded785fbeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|11063799006|56012099006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: zDJaD67Cd6RA+DkAyUShI64uErL32/WG5NkaK9KfOkSwnqsMNzEzt9JfkaTSJ7TcbjSDxtYKMVD4VKUgQC62W6hQ7GHPfFFNvr9ahbTU/IHUz6Ur2LErIaOoURdxTLgUC5dI7xfdIkjF3VkdY7dAF19/VosOcb3mTTNbGTw226Iu4pKx4uM6+2jZETB22g9TathGaUu5Z9wn7LFi5beSaCLvtARsw4mF4iNF1oeo8nl2YST8EHXZshngOjL0JbtnlRn3dOmaxF6NBM1A9x1ZsnbWhzZpi/h6oIZAUo+60/a5z+JWGcCxSi+5OgS2aMmtiMHr+Bm3ekIySDY8PkX+VMgr3Usj+Eof3qhhlqF0K5rNveBHBewpwRSbvAAasX3pfSRV87NubNOU1bNKyol+p+TtI92hpW9pHBegQlKUhIjD1nXSZaGSZ4dHar2VAPFq5dqff7voGf1ATU4BCbHo2/PTOs/bNY+tVWVQiKcSb9Z68i6ZrhKfUMa7oJfOA/xSAbkQ0rn2kBQn43RH9pZjwlmawnVIB0kYbSJ7qgjDNQXkP7pREqPYPEQQrDUkhMmC/7AfPEJGPihB6JgBxx9pSqdvw1Ae8k6C5i9TMuOsrkmZnFJKgqhDlmmbXGbAzoQ4PTQSR9ge49NFTnLQd6dKS2twSp6Vk20627qdUMvQBKE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(11063799006)(56012099006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vs+KeWAD8P02AO9Kx5/8ciaZ0wNvD1+wi8NAkEYVVIrIu/Q9fnQODsxyFkpp?=
 =?us-ascii?Q?gGAB1Afyin21UJx4jzWVFI4RMaeB17bGs7j2bi7b6lSAtJjs0JUYOb98Q/ph?=
 =?us-ascii?Q?JcNNmzhGyEXGls3x6vytFOIKIEiRV6QDF0noW7Faqr29dbE+UdHTnG6Nxt+W?=
 =?us-ascii?Q?6g6xKkchUdBwhFKNPui/qyxLSfagB3rB7TMdXBnEUPrHGQn9NaB1ALgsV/ZV?=
 =?us-ascii?Q?X81KVFIZGPk5dPeTzpP1dp7WIfKtUe7P19tjKf1PS7XDgi4+BfRwiOPApLJx?=
 =?us-ascii?Q?r7jADVISYSoX07w7Q7DY8p2Gyz7qP0/CaqV0rdk8QlLcO/Dxyz8TVEu/Copg?=
 =?us-ascii?Q?0EYVEvCGJRkmolK6jhgFsx5fcpLa+lr+1tCprX5L9P2+zL5olQDA6FhZUyx4?=
 =?us-ascii?Q?6VIxIOWhys2gmXen6ZIPUxBC5pAm613mdk/e3kXqVPU1T+M11s9hx/aT116S?=
 =?us-ascii?Q?Qz9c+ZO37euyD7Oi/sLQX0NyY49iGCAN8RzCHZcd8JfCkFeoWr9dIwUetLn0?=
 =?us-ascii?Q?NLWmw2gQJMsYPmFPEvQcCwdTG3HbBFHbR9KkyRKkgwoibtQePWfe7QhV1pVO?=
 =?us-ascii?Q?7m9G/JbdkCZb8mIuDECZNZvwbdBkYS2AxMSd9jPm9NkP/evzfnWoTEC5biUZ?=
 =?us-ascii?Q?gis2YvEckvWQpjYVTEJwxrq6uZb7dQyX7tCBnqg8SgJlIc/3TMjgSZ3kASQ+?=
 =?us-ascii?Q?Jaeb76MDJ6EtRWDomCo+NdMX22sZ+GqDCC3NUtOQDjgaor6jaENKuqpDdiOx?=
 =?us-ascii?Q?0QUYTx5nAf1B/H1pR4Hxd2Gtf+0wv70eRLQWT81JhxrDZZ/TSvUxMOaExHr4?=
 =?us-ascii?Q?fjUZ8lK8XD0TnnWX6pDTUlEFJi8MYyK3S9q3LGX5kGQxGPCaX6v7YYv0i1zp?=
 =?us-ascii?Q?VfxA6vSFPq6lpdFzS1Pj8cvHHddv6aANDab75udY2ga1ce6zRDFM2qOmvQ1Z?=
 =?us-ascii?Q?JuXz0lrdi9Q/bYcJO4Nd50hYB4JZog9hl2iYWLXVqqIUHdrqZkNoVwGTregL?=
 =?us-ascii?Q?Cws2M+Z5RO+9yV3TkcJ1E0P6ZWgfhT55WzT58Uu/CFB/5Uqg0CCJ1O4nTht+?=
 =?us-ascii?Q?lEIjWM37p4xD0QxKMXxRuxeYXBcscG37I4Ygmx2dzqSxBKjM3/j4Na1PcODm?=
 =?us-ascii?Q?vLVnbwmfm+q6w8QxxB/cWhYX26fSXWkMtxJUDy1B97rnBHE8xADmyZFHAZN3?=
 =?us-ascii?Q?tPz7OZPQEIKVAFnOrrHW1ADLJLmr8uDwrqkQdgz7RCn2RwmDPrFeML1ydqmZ?=
 =?us-ascii?Q?5tGBRBnLQLbpurqWZLtbtrXSd8p4Be6ZS1CFf1CqgzoXJItHh1zk59aa+pJU?=
 =?us-ascii?Q?1KLN/qoMUk1ekzSdJkSl5+KRn9r/a5yDtM9QeSeGYC/JdlKDokFdIy6kP7Tr?=
 =?us-ascii?Q?znzzZOI0klKGMiZ+j+CdfWOel96WnRc5esDOmNzhN/WcJ9j/kW0m5YLxcbZO?=
 =?us-ascii?Q?Rr7Y5t8yNwQSsMlPYqiZp6YfRaGpQbpGksb51eGqN/top4+miO6SfLQ6jZXI?=
 =?us-ascii?Q?QfYeGEFwV0PXMPaI+3iVQVvcxPwqKLfNqXITgfBs3VqM2WN93WrXFlMLb4OP?=
 =?us-ascii?Q?bCF5IxZ11MSzgenJ1sKEWu+8NjLrYeYhqxX65Yzw/VNCNxKauNthPOIeejSr?=
 =?us-ascii?Q?czJg9Z/KI/K6bcJVxcUiiBbKTCOggM+eqJPHwib2f96NjlNEGDBsbCV5mPeW?=
 =?us-ascii?Q?KZBcLryUYPhxrf8nWirAdAOpPjD2yOxBBuXpOrOOHajVLXei0PZfJeTQnIM0?=
 =?us-ascii?Q?3jxAB/6lVA=3D=3D?=
X-Exchange-RoutingPolicyChecked: sn0uhcCNibV/xvMyURe/g+WCVu4OBT3cAU5wqWqdg06e4G4kJHBraVsOO2AqhixWPHoCMBhinXuttDzDonQzhJyr3IwBxjMNOdBSom0jKFoyEmIbNQokCzlZdXetyqLTojejnqwIZMy0yy2tkPNICyHM2aYbuLzQsnShRdmJYJZBGIExKWyVB0ii4AkwTQdpyTs/Gx85deFSiIJPlv27rwfQWBnFgETBTXIZ/kte+oaaa7mm0TYtaUsYL0A0Y4CISw0Q0eJpnFbdwjYGmqzACWgDE/wLfrQ5EbaQKzy5Dy09rd48xdyfy41wjnJjMbKmLyLaGMU/RXtgTbm1QOzxFw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c50db6eb-3af2-4cd4-3dde-08ded785fbeb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:39.2332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F84uIc7g4bW7FklVaDm6dgAfL1VVf7MMLn2cni+UVrILwwCGowQDNlZGarhGKgeJcsPtcnlbxGSLWzDxkd3ZyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 144E66EF456

Factor out a helper that looks up a link configuration by index.
This provides the link configuration directly, avoiding the
indirect conversion via the packed config entry.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 2c656c2c036cc..d0a863b00b458 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -235,6 +235,16 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lce->lane_count_exp;
 }
 
+static void
+to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
+			int config_idx, struct intel_dp_link_config *config)
+{
+	const struct intel_dp_link_config_entry *lce = &link_caps->configs[config_idx];
+
+	config->rate = intel_dp_link_config_rate(link_caps, lce);
+	config->lane_count = intel_dp_link_config_lane_count(lce);
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
@@ -401,15 +411,15 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
-	const struct intel_dp_link_config_entry *lce;
+	struct intel_dp_link_config config;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
 		idx = 0;
 
-	lce = &link_caps->configs[idx];
+	to_intel_dp_link_config(link_caps, idx, &config);
 
-	*link_rate = intel_dp_link_config_rate(link_caps, lce);
-	*lane_count = intel_dp_link_config_lane_count(lce);
+	*link_rate = config.rate;
+	*lane_count = config.lane_count;
 }
 
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

