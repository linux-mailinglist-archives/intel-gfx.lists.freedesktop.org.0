Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDajGlGu8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7E4855F9
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBAB10ECC5;
	Tue, 28 Apr 2026 12:55:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XYMHvYps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26DD10ECCE;
 Tue, 28 Apr 2026 12:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380942; x=1808916942;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=PeFye22FZWp8TS2bqURAb1L84fVut8AgTIEubkNVDxM=;
 b=XYMHvYpsiI1gdCMlrm+F9worj99QWJ7H841/91mmQrUVp7/ubf79EZeB
 oi/WNyOYJqxUUI2pdE0PW9tnOcfgNSTImgnJqYvStRGGrrFbOwLlnc6Q8
 yy5+/a2OrEVkN8UuXhWwbYX4WcojyTaKre89SS14SvL8Qf08oRvBNknct
 eRhQQALIiYT9jwWvJFEKD1fqgN1Qy2rPMP1fDsyxxbiOYn1+FgtRvGDsO
 mzu5+HV+VkXiDS9e2/DW2Bn8ROJUr7HNFf0d6nHhQFet9Xw1cjJunNssb
 TUsEVTjdaRPX0OFSuuNTsTSBU+epDEUu0X5Nfh50656Qf6Lc5L0uAD5ry Q==;
X-CSE-ConnectionGUID: gEQ6mrAFTY+juyV0x52E9w==
X-CSE-MsgGUID: ZHrEI6G1T4CbkZfLDa6j3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883678"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883678"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:42 -0700
X-CSE-ConnectionGUID: GJLbQAAdTViKva3BB8XdkQ==
X-CSE-MsgGUID: GoPAKgwHTKmNK1ghpGl5fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795167"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:41 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i7QF8p661R0Zpi0+EXjXAENtj78deRFumEiUCOsDJO+ahlRpR+hmxTnXOQ49e9eXsvqqVe+ENZGeUrh8DjSxNKT3ZV05ICTXEExFfV5u3EwyhsEdzOi85+tBxcK1N/1vP1VJIyk3XuJDdmqg5/srnmJQt2nYjbOPn7JtK63w1EvfKJgmvGtnkLdqlZIJ0QPgoammxf9OM0FQ+Qf8rlR1hOQLaNKdv1VVEQSMyJfg52Y0IhLIVS4AVnyP57A+uobG5nhXD28ccDH4j4iJcOT8GiBtaQRb/32AreRApy0Mm8v3I7vSBzOYDw9BmcOqlJ0QJi6AQHqxxOiq2uDDkPBqCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nmRNxVkGxXap82ILulhHM98KeFqP1pjgPpY5aivfe0=;
 b=FUWIBSxPispxAmCVb2245LlRHb1ikuU1IlzQxeFng7+D/6xtt9w0wz1yS26G0bCcQevO3HE1o8NSDRnNTz5yrzM12GmRdB4cz9xvXSPFpG3OxvFtjjBns6ecOsRe9zpALn4dxdgeUUoQ8MORzylnT3Z+kCv8uF4WeifsEZAf4/FcimRfroA0B0/y/1Bk1cYiSIWGgXX5P3F/iRbRPco1rwaPKA+lW+96BT+j2nhzFKBetsJYFFOieDuv0aY21p9Q65Mo0Wel0DYryPOHCV7saw2M47tNotBU4r3/1XoC95PEhKxZ7tqudSFyJycXE55mwdVB6tbOs/sXQwebvSju5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:27 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 100/108] drm/i915/kunit: Enable KUnit tests
Date: Tue, 28 Apr 2026 15:52:21 +0300
Message-ID: <20260428125233.1664668-101-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cda1724-4d5d-42d7-19d8-08dea52569ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 64+pRNQxEWT3yzVm4Cir2CCmfO+H80WgFKEN7H9w28LVsR2YdX8ERKSa2Q4HBwy6YbK+I4St7y1kl8msxn2zxIHH/wDEXOKsPyuN/gYXQVq5wIVL7sesuJNClB3IofLF7AdaDKCIXYhcw9ou2BuTGSBnCSjdkPnCnYq6pF70X/qiO54G3xwA7CpKwZDICXtqG/yfnBJG/FLqCCBAcUySLSrPOWdKLqzJlXBGDSfZ9k95VHCdOlZm4E42q/lpoDTDIhWWiIp0PWDHaRF8hwEirRl0aIlxwdFPVCuqk06iimnntu055UFF6zp3/7NgrzeQzL2eJ0C5IxTKZTfYb1kzPIdQymYIMBzVbmMDp+rvz7E/rxIy+MoUmq3SLl3RQkz1A/ENw5tWQDKakBTVjrLwevs82hA0u00c1REqvfsssKwsaOZCJ/42Aj5K0H1uj+snLn3VfYjgeES/Tk4mGRDRPAEVuix85pbPuShl80kWbeYb822clGb8zbc/cAHl3gJuCDn8Urk52tKkF3hqVQOxGwHs45s0ZIH0WSBQVQeSCqjxOoOun7F9Bl2egsuaE9Vy7cf7h5hkZRHHhZ834GBDHSYEh7AZBkgxwZBdUn8w6fuJYmFqCzPhi+dJks21FS3J+TWqVb5Mtfx8hXiFGkyJGJhnTesVPPYoqS8/0pZ/Nx3IBkfz/y0WxpWN97yiB9LeflwpDbeXiCtxorSz0BT3jDOBT9TRygnNZQbwKECWpps=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OLI9zA7F9srxiNj/x5B/FN+uD4I0M8/ktGv9D+e2oC6O+s4FNoBkQAoXsgsR?=
 =?us-ascii?Q?H4sDINw2Z3a3hG9hjE5ijta6xO38dIwZwyWqjYVlL2AkKs2/Li6a7HSFjJg1?=
 =?us-ascii?Q?qlQo1KP+fI+VOO5whAWtLKWb+mz7z1wp0098DUjtZ4fMT/6H57nbmmMg+w7c?=
 =?us-ascii?Q?4UMw5IB0qGU9p8FOxejcUMMPPLUYktBZKElcaXdA66QXKNVbErjTupZ4tbM8?=
 =?us-ascii?Q?DF0jk1VRRD4e3zOgO0M/TDiZY8msWJjVe3H9/Hg9p6Bmfqbsd558Rdv4Y8n/?=
 =?us-ascii?Q?jGoTFEAGKXGHNvxWEWqbiu6/DDQMdWT7AE9XX4tXEVtowRvVaC0TLBEHrsnB?=
 =?us-ascii?Q?6SC50BufWTOXEXtDLMGB9Oo6viIgDGYTcKkCBjkmzAFCFpSmh8NpJrCqqqGp?=
 =?us-ascii?Q?ttDufUQQgpK3WqZdRLzAyI1uK1F4NAhqUBBDOPcu3/3KnoW8i5TOpfWr7c6e?=
 =?us-ascii?Q?9TTFVNh7QTuyHM/cUqpfTWTkxoPQnI5FxQyXJsbtfImC+X1ikMKk2IN1ClWl?=
 =?us-ascii?Q?jlJByyDZ0QQ1ArJ+VF1PSIPvcll+h2r+4APnSYW44veVcfwPRKEk+VK4N7Nl?=
 =?us-ascii?Q?bLtZLvccVPrbEKEjU+jjvpxYBKUza8PlfwOa8+L6gqMsq7OgrTf3f/PhOug6?=
 =?us-ascii?Q?+DrpzTS6gjiCgRcQw+hKvf7ii61UKAyOgf+Tuj9dPUg1DMZRMo99zXVr2/fW?=
 =?us-ascii?Q?GNrqeKb07o6sxm0vExdjWy6i0isZViFWilU5eIC+T84qQAOgVrCBSrOheIwH?=
 =?us-ascii?Q?6fwn932qX3a+qqp67MwAD1zcCLF9ubFCMspdHXUdwmTFXqyrgv0SZpQO5iyq?=
 =?us-ascii?Q?WaCxBDaxhAq9mlx1EpUxLgflwV4L4n6cWJcCTGaQJhlqLW57JmW44oWST8u8?=
 =?us-ascii?Q?YVxuheU3EL/wQ8bK3lqZ71iirpdLnsCc1YjgN5RVDKh2k9vIOJDmhhm/bQjX?=
 =?us-ascii?Q?iKNzLtrP3WA5uJ8EcMaK7LyrdTSrwOV2dnmkVIgIYy/cb2W0mXm343DxN/HY?=
 =?us-ascii?Q?doFaudFisQxFJi04cMKwSadSeHLHkhc+bLDBhJgIyIWFd9E8FR1CfZEAP7YT?=
 =?us-ascii?Q?+68wJDvargZdK81xoAQ5kZlKjmDbycVu19eyIpsehR0kcDhWc2Mf/sOGqDiL?=
 =?us-ascii?Q?dg7Fez3ISr66BpShO0J1xXLWWMvnij96u19L6ZEWQSN/e7VjQdtSqCu3RDOC?=
 =?us-ascii?Q?ScEFtRFiGXNLovRu7wkYe4+jvbPTNJOVflP2DmkkmiF2t8hv3bdUvl1vce1f?=
 =?us-ascii?Q?Jbaq2QJWzvrgfIiMGsMLlazhhiPrbjwYGwlAFafqwnkYjX0pA9zc25piPO99?=
 =?us-ascii?Q?EmUabX7gOB9kYW1BNd5OddSY19n5ho89/Hn0GOWSxg/8KoDGzxce33Vy2Tcc?=
 =?us-ascii?Q?ZgvpKk8e/tgxvOCg4B2Nc+hnjr2Iw1Ghj4EFm42gT+LDfikDDXh2LXl3bLd6?=
 =?us-ascii?Q?dn94k6DiVItiKqCMpkO7a/3fJZA+dc3t/xz4fe6ZFs54yrGLO6hQMZJGzCmS?=
 =?us-ascii?Q?KYBoCgM6/f4A9Lpv0FYJaOzxaNqSnGA1GkhdT6XPjiOQg4TW1RCPa7ln7fdH?=
 =?us-ascii?Q?6ZJ51PXgKQHiinTozOF7LnuF8e/efrkGw8A+p4TcFDr/Uo7z78l7msfwMIGH?=
 =?us-ascii?Q?jEJJXSU1Ea6dAlZBMbBcpOmYNltZ0ayA6cIirRUWT1RJZ+BHr5TesF8HiZGG?=
 =?us-ascii?Q?eAPDyfcUNBP8UQpUqCm4IeElzKvVpf96JNPatb7u7V1Hmt9C9NZFxV2Grjw2?=
 =?us-ascii?Q?dqjVyN3SIg=3D=3D?=
X-Exchange-RoutingPolicyChecked: XPJiRx8ycXdIoiRyPvBPD+hL0QnOX/Z8aue4FLMxypV/AXPMWJT5QSZsNJqgVH2iMkWT5hq3Bjqm3gz+6LYxDiFPFeF4bSskr2eWlpuPAX+tQUE76VMnuhzxEK4lUfddnZMsZ2cRGeBdmoAd1nFX4tQ1FQ/4dpKVrhdfHoKuAoY/XUacHYZ2i5f6oeZY2ujLvIh5w3rShKQmavQPoJSCGfxQ3+nj5Q0GfbeiidpYVhkOk4sYXkreYkMOCq5MTKgCNXcrkI/Ju0ocqb60f3HQJFfkNm0W3UZrJ8SsmX64blhGSosv4KSrpn9AeaiG7jNmAvJXxEtWbSHfWn42+Ufd7A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cda1724-4d5d-42d7-19d8-08dea52569ce
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:24.2677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5QE23EdlAMf1M72pN/VBOdazENredUHh7RiOwJx1XjoD0hDZUHdWtClFdEGGVVgpn/+czROd1FQMVW2s4yv+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: D8B7E4855F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add KUnit configuration for i915 and a local .kunitconfig to run the
tests.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/.kunitconfig  | 12 ++++++++++++
 drivers/gpu/drm/i915/Kconfig.debug | 12 ++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/.kunitconfig

diff --git a/drivers/gpu/drm/i915/.kunitconfig b/drivers/gpu/drm/i915/.kunitconfig
new file mode 100644
index 0000000000000..70e55432bad64
--- /dev/null
+++ b/drivers/gpu/drm/i915/.kunitconfig
@@ -0,0 +1,12 @@
+CONFIG_EXPERT=y
+CONFIG_MODULES=y
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_DEBUG_FS=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_KERNEL=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT=y
+CONFIG_DRM=y
+CONFIG_DRM_I915=y
+CONFIG_DRM_I915_KUNIT_TEST=y
diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 52a3a59b4ba2c..dc43dcfbadb6e 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -220,6 +220,18 @@ config DRM_I915_SELFTEST_BROKEN
 
 	  If in doubt, say "N".
 
+config DRM_I915_KUNIT_TEST
+	tristate "KUnit tests for the drm i915 driver" if !KUNIT_ALL_TESTS
+	depends on DRM_I915 && KUNIT && DEBUG_FS
+	default KUNIT_ALL_TESTS
+	help
+	  Choose this option to allow the driver to perform selftests under
+	  the kunit framework
+
+	  Recommended for driver developers only.
+
+	  If in doubt, say "N".
+
 config DRM_I915_LOW_LEVEL_TRACEPOINTS
 	bool "Enable low level request tracing events"
 	depends on DRM_I915
-- 
2.49.1

