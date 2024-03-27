Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BF688EA2B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 17:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A319B10F33E;
	Wed, 27 Mar 2024 16:03:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nll+ZoAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749BA10E1BA;
 Wed, 27 Mar 2024 16:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711555405; x=1743091405;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p2PR9rz8sAJkiPRu4tCRjj/WJl1Xw9YKm7INTX0lMWc=;
 b=Nll+ZoAEgHaXYEDW4a/eq97ufhQByCwsoRp0kg7DnMev3DNQ54JWsI0S
 SZrEldzaEB8zAZ+vyCG7SAiL7KCFsmiuEBHj96mVmp9I7Nyz1aV8+RoDv
 s5wkjX1M4THAnNOobsSLoM4DP+BGPk748jVWp4s9J/Lh5kMw3lrC918Dy
 hMBVe3BVAneiiF+Kg7qhIx0QRvJXb207JjY/fkhlWQ7kopoiusOEhl1Vy
 y96ymQx4sTu4oHfed6anyBevIbvVufntOIptdUxMHNqKDiewDHGcpaYe+
 NsAFlUePg207hk/zj/BvzyXMHhf7HtHySQNJSVauVw28xKCopzyNmvJGJ g==;
X-CSE-ConnectionGUID: ByKGmXBZT9S7IAdI4wB/sw==
X-CSE-MsgGUID: M14LOhRaR9eaW5PlS8PkpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10451369"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="10451369"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 09:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16180065"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 09:03:08 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 09:03:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 09:03:06 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 09:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PC0ZnHQNsvZISQ5DAmSIC7rc175q7yvcl+lf6ZbZ5B9q84km4FnOZvIjOyokWE55V3kQ5lbDxlMVIi4A7StK8qTqtn9FpTaSHNFJt4b0+D6UMkXevCTyFPExCuoyzEumj3wjw9XId+NdJfjGalXcY45zXvL+9l5OBJ1Pql0S1ernjotg6fY6HanOzOsYYJOi6cpa913N4RX3DztYvIjCt6Dn6vOtlCpoIZ7CeQ1KkYSwfJ0nbKvufA4Qd3fzWhu1+hdmPEo/QlSrtffmFPkI+metNYGUGjkkuApHthX65PgNUNBo58yXFpkND5IvAp+CfmbAOqdCrQBj/WKJN4exhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VTObhBtX34/PSrqCThMNBCz1zp/hA+i4S75/lRB1gKk=;
 b=XnEJHwoJSwxS7ex2gvTI+7/Eldyrle8QztnlJB4EmzMw+ORNK9N7XFVisq55zUcAqICbRrKtGvANK8b+mHAa5r0aIq662PBEb3DB12ikaVha0cvOdcM/ierOJjRVbZTL+5rHbBmjxorES2ySeC0AsdxGK6MNxZMoP2d+FWMx9vV8oB+s5tgRQZE5N4GH2kej5hjsklMP+1XlLO6rdeDVqZvM7VlEocmU3epCA3y/I49QKQWRpMyb+lhq38sgjJf5q0hDXA7kq2+UmnhiCf+n8/OFdpoHDv+0NHc5fqYCy45oLP/x0FjuWVww2hXOgUyNAiEns5+LqbiTBYCfMDodEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 16:03:04 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 16:03:04 +0000
Date: Wed, 27 Mar 2024 11:03:01 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH i-g-t] lib/kunit: Read results from debugfs
Message-ID: <leokqgcgm67t54fvdv4od2z3wbhef6r6ejygn7wklpmzykk5ks@tp2xec36zeg4>
References: <20240327113700.7123-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240327113700.7123-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: BYAPR03CA0033.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::46) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f131a67-c3e8-4766-640e-08dc4e77625b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SIIztJu4bAaZ0iyz4cEb9GkQnF8M34o2HQNCv02+pDKt2Sp6uaDBld8Sk6VnOjIqHN30QywWiWaxalZVJQmujjh/gChRQiKVcQr+6EaTUb6R6s8R+qme9cvcQNpQy5UIsYtJ3HBkg6DX7tPz9rTAM/yY6JbdOwBLGsD+bwKtV6yBN1fF8CWNJvfIocfuQMIQaSmeO9rQM7s69nk3LQEigRK3iohkOyCiVOZiAbbNtXCm+mucW0QOvJ05GQrp1emTEnXUdjiifX98xbmm2DDW5ai46VdSApTXsnC3KO6uNiloo/dUBAaknrWEfUmbBEUHd5vVpgJpnrs3HAyJ7h76m3NtycrbSBAUv1m7CAn9IZGVR6D3W0coKvlIU7qSK5nh1b/hrAeOUBEmJCtyT6hRKsLTwZ3gLM4Bl1xzWIuTOd9aDMFJVIrJXGGbJkPbM6mG3PY/hP1DSJojjdaMnrUWzcFEaNzm4WxX8zCJ7+C6+xpp3qWrqkZRCnCTLy84JoRnjuyM+4QoxOCmS/rCKoSj2phH8JxxpU+XVbCKdrE+oRIFgEZc9Ls2RumQXTg4d6wD5OHa+MS5GxrFAYb1wY2FbmYEn/adgwo/HMVwCFs4ygXmK24eVA6zyfM5UsAQ74nVQtmyGqRsVRzt+NExevyDVv8Jh+ol13jxHC0vt38qh+Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Dw/iya4CFKCgI4Xry5eW6CETmXBISNYjCLqRaRqyz3k5s1M1VDuFw07NjiD?=
 =?us-ascii?Q?rEpUSA+rYMmN0xUVwXsj7EVtkcOgCxms4vskxlEM3pvJ70ipIs9G5f034zRl?=
 =?us-ascii?Q?RJ2ZP5mTZawS/J85pXBh2yCS/rgYBQ7+gREJj1iRyFpPP0Li1aPkNfXWMuDP?=
 =?us-ascii?Q?tkFwfag0siB8pf8jXRxK1fK3/1ekCU2FAaexldoy26/KknsWylYZyJpPmgMj?=
 =?us-ascii?Q?55qYro1aBnnsZZFqSVDNsjBiLRda9S/49TpJ8wPAPtJSwNblEx82HwpZd1+a?=
 =?us-ascii?Q?yVfRo/WK1asvD3sNpY44y84Cj/O+Kfq7Cvnf621+aTa7xq5++yDCzC0CdoJ9?=
 =?us-ascii?Q?qgJM6s9hlKHwWwPzHQiP9MKxts/dNOQk7np98hnsMaURGTHHDAYHlAwbyf3q?=
 =?us-ascii?Q?ORZMP7XB6wVUxfB4njUpC80gUGwIKJDJmOXH1qQO77te5cn9meFnjW+ybV3y?=
 =?us-ascii?Q?LRSouGNXKn3IjVGOWMYpCtniPs+lY6jmPFEK39HWXDrShQRd3vchH79g5XwS?=
 =?us-ascii?Q?4oaAHSQK/mxO8fN5Btz2zG8ehsI/+EQhf9/z68Z0Of42Pl5W+Tp4gQoWbC7V?=
 =?us-ascii?Q?H322ZGtUehiAkn62M8Jd/U1ftMLAH9gBPpFS3hc41rm58CMDgCtZo+/We54V?=
 =?us-ascii?Q?0QpKvW5c7TeDv8BNpwEHf5CYKnXnypv94zU/P59RtrvHr6Vd1xMJ2CmBvsof?=
 =?us-ascii?Q?ymBKO346pGE73pckaJijPmhykLNkxfe6oFcK4GkpGIPGnvfCfPmVVEV6OJvT?=
 =?us-ascii?Q?BFi8PASZk6bEbZwncUqo7gpEB3XNQ9mpyzUA65gy8EJ47AT85crjuxgMoEoe?=
 =?us-ascii?Q?Y2+gc0yLHvRCLb3ZLJMl7BqmEdtfk8qVi06npK/oGBGp/8nLR1A2AwlBtjN9?=
 =?us-ascii?Q?XT5F9JD3mJWXX8PJSy/xgudFlmaDy8n9qOSZxBgoc9dtm3i9CHz5XRgcdbf5?=
 =?us-ascii?Q?wMFi0HDhBA9YlaX3aVzOmTHMS2BZhshYqZmr22t8aVr2eAu9pTKOFQ5qKYju?=
 =?us-ascii?Q?vVZknR5n//KsJdrbn9gYzgPYyFDHYG2DGZZpCJLItQ90w5gCbF4jNykGZwPN?=
 =?us-ascii?Q?LfaC4jwGQo0YUB6gnsYIXcXkLkH3G+ereLVN/C9EslYCzfDDeZUUiy4WliY6?=
 =?us-ascii?Q?gVGvjmY7h2cjWgJ573/75axuiWRCPD+N2znI0UbQIFf3GI12CyTm6uzGMU1+?=
 =?us-ascii?Q?9dLRLYQORuOXEuZU2Tw8sIn46WmjFlda5paxx7bfT/Rnw9DBC8LvHXIVgP1J?=
 =?us-ascii?Q?J7fhw/JirB9v8a51d8Mls/rpA3ClbstdMDr/MEMpi8c7InB9y40JFhJOl8yG?=
 =?us-ascii?Q?A3QQ6yLUV245IZr83n2PYi+7azr0PF57asq5f9xoY3EdTj5lmRInwUx8FkpK?=
 =?us-ascii?Q?EvHlu6UpxsDiD4JXCe4Z0ShbEcJQNNPrQqXYW5pm+39IuSRV6ivuNZMMA11h?=
 =?us-ascii?Q?I0G7kSBXC/CDPXS0+upBtA9SsJVDnPwz9ucVQZmyuOps329RLZliqc8+oL6c?=
 =?us-ascii?Q?5ytAvUly6rA21ct99qAErK1CaBO5ropLjUwp34301+VSWRZODN0VIMYcfAvN?=
 =?us-ascii?Q?aGfyUY7CH/vlf1Yqntu6wXcQXbqq0vfXuf3NsQBK6OXJS5oxi0A2JfN7UE0v?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f131a67-c3e8-4766-640e-08dc4e77625b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 16:03:03.9798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: htz7eHLRnu6rv4IaaLUSSIlzw0fq+n6IQ5qC6CVwMGJdzvvU9SsWOrzFS4dfNn54FzcQ7TwPAAXWkhuTsidmGG8w4Dyijlc6gNW/O7BhOuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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

On Wed, Mar 27, 2024 at 12:22:54PM +0100, Janusz Krzysztofik wrote:
>KUnit can provide KTAP reports from test modules via debugfs files, one
>per test suite.  Using that source of test results instead of extracting
>them from dmesg, where they may be interleaved with other kernel messages,
>seems more easy to handle and less error prone.  Switch to it.
>
>If KUnit debugfs support is found not configured then fall back to legacy
>processing path.
>
>Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>---
> lib/igt_kmod.c | 143 ++++++++++++++++++++++++++++++++++++-------------
> 1 file changed, 105 insertions(+), 38 deletions(-)
>
>diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
>index 1ec9c8a602..a5b170ca9c 100644
>--- a/lib/igt_kmod.c
>+++ b/lib/igt_kmod.c
>@@ -28,6 +28,7 @@
> #include <limits.h>
> #include <pthread.h>
> #include <signal.h>
>+#include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/stat.h>
>@@ -39,6 +40,7 @@
>
> #include "igt_aux.h"
> #include "igt_core.h"
>+#include "igt_debugfs.h"
> #include "igt_kmod.h"
> #include "igt_ktap.h"
> #include "igt_sysfs.h"
>@@ -864,6 +866,31 @@ static int open_parameters(const char *module_name)
> 	return open(path, O_RDONLY);
> }
>
>+static DIR *kunit_debugfs_open(void)
>+{
>+	const char *debugfs_path = igt_debugfs_mount();
>+	int debugfs_fd, kunit_fd;
>+	DIR *kunit_dir;
>+
>+	if (igt_debug_on(!debugfs_path))
>+		return NULL;
>+
>+	debugfs_fd = open(debugfs_path, O_DIRECTORY);
>+	if (igt_debug_on(debugfs_fd < 0))
>+		return NULL;
>+
>+	kunit_fd = openat(debugfs_fd, "kunit", O_DIRECTORY);
>+	close(debugfs_fd);
>+	if (igt_debug_on(kunit_fd < 0))
>+		return NULL;
>+
>+	kunit_dir = fdopendir(kunit_fd);
>+	if (igt_debug_on(!kunit_dir))
>+		close(kunit_fd);
>+
>+	return kunit_dir;


any reason not to use strcat() + return fopen()

>+}
>+
> static bool kunit_set_filtering(const char *filter_glob, const char *filter,
> 				const char *filter_action)
> {
>@@ -1071,23 +1098,48 @@ static void kunit_results_free(struct igt_list_head *results,
> 	free(*suite_name);
> }
>
>-static int kunit_get_results(struct igt_list_head *results, int kmsg_fd,
>-			     struct igt_ktap_results **ktap)
>+static int kunit_get_results(struct igt_list_head *results, int debugfs_fd,
>+			     const char *suite, struct igt_ktap_results **ktap)
> {
>-	int err;
>+	FILE *results_stream;
>+	int ret, results_fd;
>+	char *buf = NULL;
>+	size_t size = 0;
>+	ssize_t len;
>+
>+	if (igt_debug_on((ret = openat(debugfs_fd, suite, O_DIRECTORY), ret < 0)))

a little odd to return on any value != 0, but log on < 0. did you mean
to compare < 0 in the first arg?.

>+		return ret;
>+
>+	results_fd = openat(ret, "results", O_RDONLY);
>+	close(ret);
>+	if (igt_debug_on(results_fd < 0))
>+		return results_fd;
>+
>+	results_stream = fdopen(results_fd, "r");
>+	if (igt_debug_on(!results_stream)) {
>+		close(results_fd);
>+		return -errno;
>+	}
>
> 	*ktap = igt_ktap_alloc(results);
>-	if (igt_debug_on(!*ktap))
>-		return -ENOMEM;
>+	if (igt_debug_on(!*ktap)) {
>+		ret = -ENOMEM;
>+		goto out_fclose;
>+	}
>+
>+	while (len = getline(&buf, &size, results_stream), len > 0) {
>+		ret = igt_ktap_parse(buf, *ktap);
>+		if (ret != -EINPROGRESS)
>+			break;
>+	}
>
>-	do
>-		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, *ktap),
>-			      err && err != -EINPROGRESS));
>-	while (err == -EINPROGRESS);
>+	free(buf);
>
> 	igt_ktap_free(ktap);
>+out_fclose:
>+	fclose(results_stream);
>
>-	return err;
>+	return ret;
> }
>
> static void __igt_kunit_legacy(struct igt_ktest *tst,
>@@ -1101,7 +1153,13 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> 	pthread_mutexattr_t attr;
> 	IGT_LIST_HEAD(results);
> 	unsigned long taints;
>-	int ret;
>+	int flags, ret;
>+
>+	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>+
>+	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
>+	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
>+		      "Could not set /dev/kmsg to blocking mode\n");
>
> 	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>
>@@ -1224,30 +1282,20 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> 	igt_skip_on_f(ret, "KTAP parser failed\n");
> }
>
>-static void kunit_get_tests_timeout(int signal)
>-{
>-	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
>-}
>-
> static bool kunit_get_tests(struct igt_list_head *tests,
> 			    struct igt_ktest *tst,
> 			    const char *suite,
> 			    const char *opts,
>+			    DIR *debugfs_dir,
> 			    struct igt_ktap_results **ktap)
> {
>-	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
>-			 *saved;
> 	struct igt_ktap_result *r, *rn;
>+	struct dirent *subdir;
> 	unsigned long taints;
>-	int flags, err;
>-
>-	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>+	int debugfs_fd;
>
>-	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
>-	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
>-		      "Could not set /dev/kmsg to blocking mode\n");
>-
>-	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>+	if (igt_debug_on(!debugfs_dir))
>+		return false;
>
> 	/*
> 	 * To get a list of test cases provided by a kunit test module, ask the
>@@ -1260,19 +1308,32 @@ static bool kunit_get_tests(struct igt_list_head *tests,
> 	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
> 		return false;
>
>+	if (!suite) {
>+		seekdir(debugfs_dir, 2);	/* directory itself and its parent */
>+		errno = 0;
>+		igt_skip_on_f(readdir(debugfs_dir) || errno,
>+			      "Require empty KUnit debugfs directory\n");
>+		rewinddir(debugfs_dir);
>+	}
>+
> 	igt_skip_on(modprobe(tst->kmod, opts));
> 	igt_skip_on(igt_kernel_tainted(&taints));
>
>-	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
>-	alarm(10);
>+	debugfs_fd = dirfd(debugfs_dir);
>+	if (suite) {
>+		igt_skip_on(kunit_get_results(tests, debugfs_fd, suite, ktap));

instead of skipping, do we need to treat it specially if this returns
-EINPROGRESS? That would probably be bug in our ktap parser or a format
change or something like that so we may want to start failing rather
than skipping.

anyway, consider the comments above as just nits. This seems like a
great improvement.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>-	err = kunit_get_results(tests, tst->kmsg, ktap);
>+	} else while (subdir = readdir(debugfs_dir), subdir) {
>+		if (!(subdir->d_type & DT_DIR))
>+			continue;
>
>-	alarm(0);
>-	igt_debug_on(sigaction(SIGALRM, saved, NULL));
>+		if (!strcmp(subdir->d_name, ".") || !strcmp(subdir->d_name, ".."))
>+			continue;
>
>-	igt_skip_on_f(err,
>-		      "KTAP parser failed while getting a list of test cases\n");
>+		igt_warn_on_f(kunit_get_results(tests, debugfs_fd, subdir->d_name, ktap),
>+			      "parsing KTAP report from test suite \"%s\" failed\n",
>+			      subdir->d_name);
>+	}
>
> 	igt_list_for_each_entry_safe(r, rn, tests, link)
> 		igt_require_f(r->code == IGT_EXIT_SKIP,
>@@ -1287,6 +1348,7 @@ static void __igt_kunit(struct igt_ktest *tst,
> 			const char *subtest,
> 			const char *suite,
> 			const char *opts,
>+			int debugfs_fd,
> 			struct igt_list_head *tests,
> 			struct igt_ktap_results **ktap)
> {
>@@ -1307,8 +1369,6 @@ static void __igt_kunit(struct igt_ktest *tst,
>
> 			igt_skip_on(igt_kernel_tainted(&taints));
>
>-			igt_fail_on(lseek(tst->kmsg, 0, SEEK_END) == -1 && errno);
>-
> 			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
> 					       t->suite_name, t->case_name),
> 				      sizeof(glob));
>@@ -1317,7 +1377,8 @@ static void __igt_kunit(struct igt_ktest *tst,
> 			igt_assert_eq(modprobe(tst->kmod, opts), 0);
> 			igt_assert_eq(igt_kernel_tainted(&taints), 0);
>
>-			igt_assert_eq(kunit_get_results(&results, tst->kmsg, ktap), 0);
>+			igt_assert_eq(kunit_get_results(&results, debugfs_fd,
>+							t->suite_name, ktap), 0);
>
> 			for (i = 0; i < 2; i++) {
> 				kunit_result_free(&r, &suite_name, &case_name);
>@@ -1388,6 +1449,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> 	struct igt_ktest tst = { .kmsg = -1, };
> 	struct igt_ktap_results *ktap = NULL;
> 	const char *subtest = suite;
>+	DIR *debugfs_dir = NULL;
> 	IGT_LIST_HEAD(tests);
>
> 	/*
>@@ -1435,10 +1497,12 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> 		 *	 LTS kernels not capable of using KUnit filters for
> 		 *	 listing test cases in KTAP format, with igt_require.
> 		 */
>-		if (!kunit_get_tests(&tests, &tst, suite, opts, &ktap))
>+		debugfs_dir = kunit_debugfs_open();
>+		if (!kunit_get_tests(&tests, &tst, suite, opts, debugfs_dir, &ktap))
> 			__igt_kunit_legacy(&tst, subtest, opts);
> 		else
>-			__igt_kunit(&tst, subtest, suite, opts, &tests, &ktap);
>+			__igt_kunit(&tst, subtest, suite, opts,
>+				    dirfd(debugfs_dir), &tests, &ktap);
> 	}
>
> 	igt_fixture {
>@@ -1448,6 +1512,9 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
>
> 		kunit_results_free(&tests, &suite_name, &case_name);
>
>+		if (debugfs_dir)
>+			closedir(debugfs_dir);
>+
> 		igt_ktest_end(&tst);
> 	}
>
>-- 
>2.44.0
>
