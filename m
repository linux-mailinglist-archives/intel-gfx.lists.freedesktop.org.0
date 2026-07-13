Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MNzFFOW2VGq+pwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:59:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A957498CF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:59:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="fGQr/cLa";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BBBF10E8C3;
	Mon, 13 Jul 2026 09:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C18210E5A1;
 Mon, 13 Jul 2026 09:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936705; x=1815472705;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=+QIc1Chs/DDSCHLF8gMPmRn3SnANc/tAHtuy1Ew6npY=;
 b=fGQr/cLaNGXH5Kjw8S+RUXINrI30xt6auGlCINCFexEvaJlr2wT8jsD+
 u1xAkzSYN4yolbKP+YNzyNU+dQ0W+TCVRZNhi1FifwJVMPPa2xCFCrXOA
 BaWPLTGvJXD4ZtwSPd3wqIwVoH8/V11RuIOduDZuLLlREobXZTVUhPLDM
 5lyas52RviKBMwtom9Ozs9uPpoBbLJVbeRigHjnOfeMfQ8Q4SRbP3gkYe
 rXcnAaTBnzZfapYye1pKNrA0k6R0EDRT02VIbR8oIPgKN7mnhMrMsfU/5
 IWICMxr3W4Bzcvs4VOy17YPN4/3DombhBEkKBl6y0Ay3PATQOJ7maBD2i w==;
X-CSE-ConnectionGUID: OzFhp4kcTSWkG7+zqg0alw==
X-CSE-MsgGUID: c6vMzXVuSF6UfeDSoTge8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87085838"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87085838"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:25 -0700
X-CSE-ConnectionGUID: PJNYIAcwQQe01LVT3j4ykQ==
X-CSE-MsgGUID: wCiCj8RPRcmHH8ID7Po8XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278767730"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:24 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.26)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sSNWzTYaJkj+KdPURO7MfzPeIbPbWOGc5qssuKHIvyhVLRUq404KgPXlIPtKLcXtx7leX60WF9YvtLJyL+w6un+qF9cCFIXPMCFBb/buwX2oN+QrFyILSKaESWgWZjLFonqDl/vbUAdgP0YlARkNPl/r6PmRuYjhnGg0AU3bIn7xGiz1/1ljK+sPen0V/mzquQeMXtLxsjoVBV2Oy9NJqKXjC281MTkrHIWZCp5Ehdxvbsaga8lF2KDE6i9/4vCHjOn5nREwt4CPxkH1o5FqiHhY0dToVdC9NpJ3aIKhYHx8WTAOUKGDGDAIgaL6fLygjrZkBnNnBvPJ+AQFKIBAmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=87GVWl1aXp02l+0UYU8XTg+kTpoqUbsHemZ/deYkSQM=;
 b=u7BjZ7pibUXrCrDcp0m41O+3/JmfPdD62pq3kSHc4eVnnd6IdBU2EwT0BKT1kS0qh7tn2Nd7w3TmnZcXaDXEfXPjd0BvPgZlVWAm4BsKKjFM75h5Nfk5DfrMOevt5x3e0v5WBeDaXvhUZVXsml9I3j9PtnAh7DYARQtdNeFc2XwK/jVV/OraAGo6bmlOnvcKcYcMb4IobTLEueMdwQG+k2oEt6i0bF7GTjjr85qwfPt08X2k5/4NZS2Ontnyqa6VscqblyY3+4jXMs9vMqT8948HSiZfBhw2eYD9nf9lcsvXTuRd3NnozWzwodGWYQwRLkDurzAwhnxNeB8WcyTdTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH8PR11MB6682.namprd11.prod.outlook.com (2603:10b6:510:1c5::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Mon, 13 Jul
 2026 09:58:20 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:20 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 0/5] drivers: Improve memory management for large object
 allocations when i915/shmem is used with iommu
Date: Mon, 13 Jul 2026 09:58:07 +0000
Message-ID: <20260713095812.1014365-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0155.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::11) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH8PR11MB6682:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f1fa5b5-73b9-4d42-74ac-08dee0c54502
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: iy8CaYOoP3D/OJtr1rJknLcepfE63W8w5onNn402w2Ol840MMqi5EjBogEm5DniNquKXHilzkck9FmFUzQbLwEMoDfSqjj90YteMtyF+U/H9CK/bhdwh1w7q6VQt21qY1ZSQ22u2KMctV+GTrHOoKSyL1dOBSoLgaAolG9WyJDen/6ZB/Rxj2lvkuhw1n9t/hvF3i9v1FNSyXq7wMZoh+O8AAfdHJbpndgZaP4qAGPSQAglvcC3Y/Z8oMCth+r2NfsykOcjkQRAfuthfptreRwToiD3RZ4F/DfnjtElvDhMGF7tmKUSuEaJluG51kFn/Sal99R60EcBPMNZrjRW7eMOXiknIF/UFUmhBUk4+Uh9VJqGsqOB48752VkwMQuQ4w8QxBgJkHlp5xm3BL9aK6v8MkCcJQVKN5VibClqFcRXp8HSOEw+9VzyXVR852iDqQiOaLti16aV2IxQ5AEBpoZEFguX1kvtTZmq8XXBpUO7CE7mQ6uuv2YCPW9gJiF2DnVL+HUFjg44Tqv1pL8fZSU8xgRe/MkfKUurs6NC63NWBvis+iHIisq+q7GPclpSLJPzbZnsIENrzCP/H17LAU8b9+4y1qMB9TNQFNw+a5WdaIheGwUhzvndePl7TnFkkHCUA+LWkAE9OTMbH/UIHnu+DpFRKMrygucuh2SOFbW4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z1qWnt3joRsrqEpC1EFVPvDqumKUmy0nQAE5+TT4Mp5L3R32ZmzC4TPX0Zy3?=
 =?us-ascii?Q?4GArfjBMQuCy6Tpu6TolO3HMQvq5Vo/HVhQHkzXlfS/V+PZ2+gbyWEwUHNlr?=
 =?us-ascii?Q?IRkufU663RLBV2UD2YIT4ZjPOOriDMuQegn6mgRbwTqfiI9D2tids8ktWfE1?=
 =?us-ascii?Q?fG+hc5+MGY7eak5Kg6dY9COmhlp+EfAWdks0e5M0uZ+05Xccd7tymnV+ThXc?=
 =?us-ascii?Q?A4nrYjyDEmIBvGyFOJui8Vtj3St9ETblEox0Zd3xSxydc1rSqKlYsebiXOfa?=
 =?us-ascii?Q?IORY/wRaPTrzy9D5OzZyNvuaWAeAH3U/S5hLjC0lvki+L4kLhP0hcI6HGoot?=
 =?us-ascii?Q?x/RCDwQrqwjnoz8KAzBnRg9DVcXKgezR5uRMWbrzDhYEk4QII62ORcAwoMHC?=
 =?us-ascii?Q?T/0DRrlg4FKkkavGRYzv42zrFI0ZS9g7kpZcUFo1yB1/rBPpaEyzgGFcS17A?=
 =?us-ascii?Q?/Vd7Jal103sSf2AtXCgyewzxDO2+knRZ076aTgOsy0SRTW6Vlta1Y7SmdaiS?=
 =?us-ascii?Q?NDZ7oBuNqix9odm3MfhJ6/vQkvL4xrpcgdLSB/o+Zj/EvQPki8WgipOQlSpI?=
 =?us-ascii?Q?A3lP5LOKGZDxCaZXh5Rlq4+BzzTcV89oOUaRz8o4qr/ohUxHI/0RQDCzivj6?=
 =?us-ascii?Q?eEYtYPErEvme7J9UvEm3jX4AvHWrixuc/PUTDHpcOrbMWpT52P3msbZVqSBD?=
 =?us-ascii?Q?gR1m1pqq73rFrB0BpNBdFVX/YML6SL+XUpuq/liYH2fRISgiDO3223YigkXs?=
 =?us-ascii?Q?zx1y1ZTvljmmuWz4Mj51lbw4vRm1hgxXS0H1aViw3S7UFXcXJdSpz/WnFk/k?=
 =?us-ascii?Q?h7oJNZkvybli/+ZmfYCWyGDhdU1jLa0Na0MNn480z8tJIM+236DrbpeaEH1m?=
 =?us-ascii?Q?IxtDQUvi1+QPAspW5w0rSw8cleIfGuyu87Q1TJm7tCP7IKW8pbHc9RtpOvsh?=
 =?us-ascii?Q?SlLee3ZEb0oJ1kbn84C1KMgH1ObBeHEH/MroysppyjtVhA2RX14oW214efdl?=
 =?us-ascii?Q?S/xiqDLkUWx5aN3T+TSlKiA843FVtRASJXeC4/x/KM/yxH29NBMuGJwnB2qc?=
 =?us-ascii?Q?F9rMCHiu6lqMo2Ii+XimGEL4pH6UF4wZ5X86BzfcYpqRkrHO9IUEPJ1Djv+C?=
 =?us-ascii?Q?hcMwUowgkVHSWUMFn3SR71ZGtDHpmm2p8pzKseuLLo/SoOMcgbxdM3kW8uEE?=
 =?us-ascii?Q?NOo5E10a26OMquPLm74PjmM5l+EB3S/FRZuzXgZEzWLpS8THJ41FQKH0bB9p?=
 =?us-ascii?Q?Uj6AWUgBWByR/o86AfO65BCekzbDXF2iUjn1qwi7v+pbvyL4wmDUi8nYhA7e?=
 =?us-ascii?Q?lGEjMxT/skeMsN+XomxSgtbI6d5jiGqi+QCmIu9QmpSJS8+oXq1gcweIZIQI?=
 =?us-ascii?Q?flH+emq5JdlUkuMC3MtCgrxBqd3N8vM0DxIEYha7WajCoV5TtcyTcJ4yjAa5?=
 =?us-ascii?Q?DXMOXGHQJA7MF1yi+7g2eZKyuMnAAoJksAQXX6I9YFWDL/sX/NAPtSeDc0OL?=
 =?us-ascii?Q?6ZE7t3FlyiEdA/ZXuRl0svrI/TjFUZVAseg3RXtCbt0CDx7bl13PuKISS2Rx?=
 =?us-ascii?Q?LPruHF4WpYqAuLpOntWdHjYpenPf4yTQgJd6rjmc3qI00xPX+2NaeNIM9i5H?=
 =?us-ascii?Q?tx0S8Ankztc8HOJeMg6s3PbDyh3QpwLOSXPUB214Majnv5iqLSeF2Gn2arOV?=
 =?us-ascii?Q?dTtkpq5FEZ7Xl8LuMtiLp0LBHbpHZib0UJBVkFbVIMVWcujO1SWyxOSeKNci?=
 =?us-ascii?Q?S03nHWlCe1OSHB7s12m5dCnOUIhDnqw=3D?=
X-Exchange-RoutingPolicyChecked: ZKNRrXn5Bq5wCJsuAk5FZo1zN33SF0KEGHUElfzF3JBm6LTwcNliuEOWtBvftmfXVvFnm/ollDTCzAwgExA/X5RReXzoVTa2Asivg0Cam3gdO/yi/39214jeOmVOYidTNMlG+EE+vCW9bHQ9rTvBMkP9S3QtpQY8e0Tvf9djlnu6J7tsYoiOvPc9gKfA9XFRnBW7wo3Ns2H8118WWzd+oSMPiAZDqVi7UCufldMAoCEun1+vKRm55vb8VlHt3OU1IaNWWTDoPBjYgELRTStAxqQBRLbDO5XuP39/6z0Y/qngdRoz9lMToRWsyPu8M/wyIN10lYw8nhUIFHwrYuT+YA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f1fa5b5-73b9-4d42-74ac-08dee0c54502
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:20.7130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oeMNp4GbZsxMU3NcSaO6c64yj2tFz7Pepo4wTCAj/s2lgsGDWUlGeqZ9KqZZvtnQ5D3PqbCMEPkLZArhjJ6A457RV+ExzjFgRjLakb219VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6682
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8A957498CF

It was observed that allocating large objects via i915 driver
(igt-gpu-tools/tests/gem_exec_big/single) the folios and their
pages were not handled properly leading to buffer corruptions
during relocations.
Furthermore, using iommu driver in this context would leave
residual mappings in memory that could not be released, hogging
available RAM even after the process ended.

Krzysztof Karas (5):
  drm/i915/gem: Count mapped pages in a folio
  iommu/dma: Catch scatterlist length overflows
  drm/i915/gem: Pull out size validation into a separate function
  drm/i915/gem: Read and shrink memory in a separate function
  drm/i915/gem: Remove iterator and use while loop

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 176 +++++++++++++---------
 drivers/iommu/dma-iommu.c                 |  13 +-
 2 files changed, 119 insertions(+), 70 deletions(-)

-- 
2.34.1

