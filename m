Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UWu3A63vRGpk3goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:45:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED7A6EC534
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:45:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AS4VAxi9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DAB810EED3;
	Wed,  1 Jul 2026 10:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD51510EECE;
 Wed,  1 Jul 2026 10:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782902697; x=1814438697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pDVj9Ik+lQaOCC1liblXctGvaZcM9LvPABkuZLk7/1U=;
 b=AS4VAxi9v3/vKsBZPv+dx5yq+zI2BTn+jsaMRdtKwY4NkMxyVRYTklfq
 9VzjWujlF1QLcUEb9R7jxEXKS1rNU4d/+BVlNMaGlwlL3aZ93TTuQziFe
 ZYjoM9ujOXz9YaC89UnlWw6Jt+2WKRTHKK/nY5yvcs/lI1aeIJ0w7dJDV
 GewCS8VhsBl/ggKEfcD3vRAzDujIwGYtakrEElAdShSoJp0RWjNACsHqM
 ssMd6W76/tOHA/eRAvviKWknAmhfdORs1zUQt9CaTDu6aokgTy7e7kF8u
 UvD3FnxvQ0KcuPMMqNTLV9sHsBDU/uOMIZ1auS5V1Uc62UiGbnfHEP9zx g==;
X-CSE-ConnectionGUID: ZbCsEFJLSEyEiSe3su7Ytw==
X-CSE-MsgGUID: wjmg4eMRR+2dHVGsBlWC7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="87466823"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="87466823"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:56 -0700
X-CSE-ConnectionGUID: SG4/kBydQXOsf6YJ0zhoFQ==
X-CSE-MsgGUID: SjsoicRwQge+fqr4GslAvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="250810971"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 03:44:55 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LL7EPXkllOL0HsPo2bgnSfd19VR46ygzZ8wkKyvhTbOrdaTSDffQ6FDZpBSRCRFOt4Ecg62qWO6TLrhcadcuTUQS2mq1KnsKOap+2QtoHxpVcP9FZzqmWlu1PGQC/LqTa8j0nJJsJibJcdLgRwVaV8twUMyodTVgnjkGBAggdEMTrTvqbs1UxtAYGO75alFVrvVoR8vEM8+tsTrAdBDNyOqRempfxGRpT319lGomaTCwsd9z5RBXPhpxDa2ExyHtB6I8crxwTVZ9OMHiEzCmxOlMNtk53EQlKrkst41W27eNx01NBm6pLp42VqBGt5NGIvXVLICfd1Z44DG/yVhGhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s/DoKtno/V2NxDyoN12ZibOoCHkP8dyjKA1oOxEc0Go=;
 b=BhQ98MeVh8HtVfiVaIGUxAeHDH2GbTRPaaf4CTYUIj1T9ZmwgYXPnG3V+dfgpuBpxDIcpRyO5OrIPc8kCMiuHHoqRWwp+zw+EykXIfaDp3DL+vZVlfW5KG8lrn6RGX+giAhE5xos3jL5fVHs2kqN0ebfYjFPl91zQ5KR/2CxW4hhJ2nIdiMKZ4jj+ugiAhIOz7BotYWRk19Xzbp5yH84Uhmwxz/4W0uteUftSaDcUaLYDMrAE4p/aE910t7EFkQmnzZNwubKPA7ELKEup7AUEP7+39g5RCvMfkG3fG9LXS+9JoMKrbA5tdlv2HVLnZB0XfKssEG32q+Id5fO9yFd2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 10:44:53 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 10:44:52 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 2/3] drm/i915/shmem: Count mapped pages in a folio
Date: Wed, 1 Jul 2026 10:44:36 +0000
Message-ID: <20260701104437.236979-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701104437.236979-1-krzysztof.karas@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0087.eurprd04.prod.outlook.com
 (2603:10a6:10:232::32) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: b6a3b968-c747-47c7-ca96-08ded75dc80f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: yLG2O9IWJ19m9r+v5cxFa38fJ+1WQsPjz61vDq3+D+qVkjYxyFLx+PLxovWejkNyAAyOHf0mFUemzPnDv0pTLI03wEZ5WkuvZVja/TF2IkTf1PhIXXDehivgWoK1/W/SICTEqh8sY6gqmh+701sPxKk6pYXiCIHr/xi5JzLYjEKYf5sCxkRiUVX1tXNLQ+Qcb1Y7j9j/BcPO8bb5wZM+xk2s95+E7kHNtL45zd6+0B5fAfusAGMBsJTswUK3B9Crl5+jghljy1hjVUpVgZvLhJKZRPcvk64oMI0mhJBzdhd6NaFFfppKRiJDxJa6qX0YAiFX5Ccqzt8KQSL/b8INq1ioWop/8sAD2JnBJ4OXctg2gBKC2N2cUupnCNYvarQqMdgwys2pdKXdq+LLtF7GPyjoWZOmgZitiP5l3GGamgFvVCv9AoA+2+ZwFc8UU3KWw2it6cC+ThBgGgMDBi2bC6TIybKz/fiZdZdNuFAi6wsh2eaUCW1QxrjsgiDtPXvp8OF6PFydK9//kd2xLJLOlZc7y82H8steodaC4EsL6Ukfqk0/VpIZjwNg9ESQGe30jG0FC868Nh/84nbb3rS2d1ryhvh8A9jgb/TmzIMLd2I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iaE2mdo2mwCbDSPl33gboO0XCAiw5MHraMs2EGpsXLpx+q9XnKQZ5nfEdyBX?=
 =?us-ascii?Q?DUV/wJS7qSYFufCSh1Eb3QfID4Hk7o9F/xYVzBP4YYj9YMWWgo/dg7XEKrQg?=
 =?us-ascii?Q?8leQWdEzK618NLcTtRSymeYAQooVL60iG7qMEVuwiC5vwemjBRNv84sLW01I?=
 =?us-ascii?Q?ipKNyiaVPXyKV86QGuOsuruHy7w37ko+0uUdP8/ik2SCwKC4a30YcZv978TE?=
 =?us-ascii?Q?Koycyol/jSRrNbjr3wuiXbJ5rHT58y9f/44iD5jChkuV2f5d7DTpa7n0OCQC?=
 =?us-ascii?Q?QRLMKsaLoAP8JQZOsYGDdkeuItoY9bp+TRbklj1dLtvOU/G055biHR/uq5sy?=
 =?us-ascii?Q?e7zp8PmrZ2I77EtF7pqo6MIIEYzC6I9mO0stniNKWlM2UJTwgbz042ViMmDj?=
 =?us-ascii?Q?9JLJVHS2O2U5x5GZP68gSVuRC3D8yI82d7FHCT32it8sO/9BQ1DVqLBDPdIF?=
 =?us-ascii?Q?C3sat7ca0so0wAI1GaqGKzTldNusG5Hbs3Yl3s6Rc/LRssmrblPCfAt1p2qd?=
 =?us-ascii?Q?8bXTJf+Mrywb6zRpZsDKMT5r++Eem5Fe+XYOz6wmcLBojd3HiX6Qt58RG/Pa?=
 =?us-ascii?Q?nc41FIzvOfSgg9QZb5te8ylpMeBXdWvduIeZdfwhU5bBpkNfroSZ2tutVe/f?=
 =?us-ascii?Q?vWkbNFBxfFbJOeUE2nO/f4o2kzBeKlZm6UacsluriAWuSyI5VLssXWMApUIs?=
 =?us-ascii?Q?u9kKDtPm6oOi7s5sjbp7y0y9IkCaHaMDpZibV0+3/E5wXzrULRcOrpHqXd2X?=
 =?us-ascii?Q?5gPvee2RWDZX4bl+1TEbHLJQebSxXQrZNVwA4c27WqzKPYtcd24cIPrntrLB?=
 =?us-ascii?Q?SlLge4p/3rOL6HNTnJXiCPbH8NxpQG90Udc/jWBMppcUXNCy7mI1jCqlJJTm?=
 =?us-ascii?Q?SjwfULGRZ1SgIsew8B8ROKf8YhudAfTwHFZ22fiJLKtH1j7LKRnKSb21ZK6r?=
 =?us-ascii?Q?3YeeHKASOB9hlsFmkPwHhaNkaJ657pV2RQ+7wdHLpFn3BwxxB6be3s0o65+A?=
 =?us-ascii?Q?QOwSELsX4scN9UIKQWwuDI308d25DftwvX8rb+mY21iYsSIWphwSTNv4snY8?=
 =?us-ascii?Q?84yQZZ7lSZgSlPYkC6X7G9VQ+YE8JTSIVCw8jyUr603K9BlHd0onugO/rmDc?=
 =?us-ascii?Q?a6UwXelq9eyo38U2SXDPUpRP6/jOn54KHc8GHgOzxG1xYcFelEbkCAq2ID7B?=
 =?us-ascii?Q?LbLUuegS2JR9G3EoU0I/Her2KRj4cdMwbPbUI/jE6H5Ykeo5YiLLafEkz8Bo?=
 =?us-ascii?Q?+O6qArkLxJfSTMxn9vH3vqMKk3q+HDRjreEn3L/pUOgC9MVpk1W/5xZEhpW8?=
 =?us-ascii?Q?pL+KpPKt9eO24CpQVBBdz1l98L3vJl8Aa5jxpOseL6kuek/Negfm+s9aEHe8?=
 =?us-ascii?Q?UygQpl4qf2iNFuvJVxMxfK/V0hnaGdwXYiAUSnumtiVEAZNUTXJwAMBd+TBC?=
 =?us-ascii?Q?UEDnAWUVWwBVCmC+Dfswxg+5j13SHB16ymdMJpuGxs+RpPiI4ceLPnQxOM9x?=
 =?us-ascii?Q?7ZEDK5bFgv1DdtDzPMn/BiToIPkods8uCdKQ/2NOmkuNparSAbVCA4qHxF3/?=
 =?us-ascii?Q?atDalOX6wxNTTXrYxdFE31SQMdTwMvn+GP4KxjruPmydJZ/+pfBx/PWtQmrW?=
 =?us-ascii?Q?i2VStxo5ack0d35vL1V8vxoJywCf26Y7B56qN0+QL0CKpeda73LcsoKlmchL?=
 =?us-ascii?Q?GpkJrF+FPVu41INYf/3wcukVcMcmjLlUX+gF2AsBl34T8eX0Kf9AExX6nxwP?=
 =?us-ascii?Q?JsZJQ9tDZh54dqwcFhBUGJo6HyMRLBs=3D?=
X-Exchange-RoutingPolicyChecked: BeAH/AcJ374xjpe76lJPI6LvTIJQR+JHaUh8T+Tpvdss5HVxMkQb9DMWmDZgbRpZj+RK7uGKlJe2zQl0zopQu2JmELxzqebbPe/MmNQtMkgg+rxpVeTWWxqw4E4/HY11YZOhqFZ2+U9A0X2eU+S/4AnlLobjW0bEbh64fWspJH0dqdzckD0+D5fVeHTDQECCceMNKyXvnnE/6DTk3qD0DO4U39iYb9dNt6PrygdxwAZFe4wom+qjdHDd6/BLoO9IvhL+kY5j35opSRCYikE40QDGcoNDQRUHCVmu7Rp7AnHK1C4DOTsfSBMIXm3LgcycbWfHUzgocJQKYO9JtIdu0g==
X-MS-Exchange-CrossTenant-Network-Message-Id: b6a3b968-c747-47c7-ca96-08ded75dc80f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 10:44:52.2735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KMjQzIAhRePxijd1bHZde1xamWNbLN4gv10QqJjx0afHYmrLGAx9/e1pa8pRErRcvPnFkRq/sJtRYJG5W2SOgStDOoYi7uttdkxyQvreoEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8ED7A6EC534

With addition of commit 029ae067431a
("drm/i915: Fix potential overflow of shmem scatterlist length")
max_segment size was included in calculating the number of pages
for the scatterlist. This meant that segment sizes considerably
smaller than number of pages in a folio (see shmem_get_pages(),
rebuild_st label for context), were not enough to jump to the
next folio, which has never been a problem before folios have
been introduced. In result, sg_set_folio() was called multiple
times with nr_pages smaller than folio size, using multitude of
scatterlists, all pointing to the beginning pages of the folio
and never fully covering its range of pages.

Track how many pages have already been counted in a folio to
ensure it is fully covered before reading next folio.

Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterlist length")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 43 ++++++++++++++++-------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index b5ae7e5f80a0..0e4929efbfe5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -138,7 +138,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 {
 	unsigned int pages_left; /* restricted by sg_alloc_table */
 	unsigned long next_pfn = 0; /* suppress gcc warning */
+	unsigned long folio_start = 0;
 	unsigned long pages_done = 0;
+	unsigned long folio_end = 0;
+	struct folio *folio = NULL;
 	struct scatterlist *sg;
 	gfp_t noreclaim;
 	int ret;
@@ -166,37 +169,53 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	sg = st->sgl;
 
 	while (pages_left) {
+		unsigned long folio_pages_done = 0;
 		unsigned long nr_pages;
 		gfp_t gfp = noreclaim;
-		struct folio *folio;
 
-		folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
-					       pages_left, i915);
-		if (IS_ERR(folio)) {
-			ret = PTR_ERR(folio);
+		/* Grab the next folio if we exhausted the current one. */
+		if (!pages_done || pages_done > folio_end) {
+			folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
+						       pages_left, i915);
+			if (IS_ERR(folio)) {
+				ret = PTR_ERR(folio);
+				goto err_sg;
+			}
+
+			folio_start = folio_pgoff(folio);
+			folio_end = folio_start + folio_nr_pages(folio) - 1;
+		}
+
+		folio_pages_done = pages_done - folio_start;
+		if (WARN_ON_ONCE(folio_pages_done >= folio_nr_pages(folio))) {
+			ret = -EINVAL;
+			folio_put(folio);
 			goto err_sg;
 		}
 
 		nr_pages = min_array(((unsigned long[]){
-					     folio_nr_pages(folio),
+					     folio_nr_pages(folio) - folio_pages_done,
 					     pages_left,
-					     max_segment / PAGE_SIZE,
+					     max_t(unsigned int, 1, max_segment / PAGE_SIZE),
 				     }), 3);
 		if (!st->nents) {
 			st->nents++;
-			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+			sg_set_page(sg, folio_page(folio, 0), nr_pages * PAGE_SIZE, 0);
 		} else if (sg->length >= max_segment ||
-			   folio_pfn(folio) != next_pfn) {
+			   folio_pfn(folio) + folio_pages_done != next_pfn) {
 			sg = sg_next(sg);
 			st->nents++;
-			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+			sg_set_page(sg, folio_page(folio, folio_pages_done),
+				    nr_pages * PAGE_SIZE, 0);
 		} else {
 			nr_pages = min_t(unsigned long, nr_pages,
-					 (max_segment - sg->length) / PAGE_SIZE);
+						max_t(unsigned long, 1,
+						      (max_segment - sg->length) / PAGE_SIZE));
 
 			sg->length += nr_pages * PAGE_SIZE;
 		}
-		next_pfn = folio_pfn(folio) + nr_pages;
+
+		next_pfn = folio_pfn(folio) + folio_pages_done + nr_pages;
 		pages_done += nr_pages;
 		pages_left -= nr_pages;
 
-- 
2.34.1

