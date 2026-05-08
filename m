Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHQUHrup/WmEhAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:15:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 539774F420F
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691EA10E303;
	Fri,  8 May 2026 09:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLn+ZDSe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0007410E303
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 09:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778231735; x=1809767735;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=fem/TgtsUtm3oxQpgzUBJ6wn3RCVjVEZEGDh2LB9tkA=;
 b=SLn+ZDSeGk08rhLWhZXsylDr5nHPyomF4jhKVQt2iCx4vaSBBlC33Hbw
 D7gnFS+YETqBdCQXimxySnRMunhQFHwyDD5uUW6JbRWM8IhgfQ3FnVKXF
 47TExAnjqJGasZ1jkiGpyD8RD0ql+bEYZBa1ef6SecQNpIyDESiFZ2IGY
 fT/t4P0RmoRqYMpOi7t4ANTIxhfOllO6hdmr/CWRWa3N7YdsPGIYcfc8r
 qExcvF7/lrQ0/HjrNnJw444iE9xnf30xMH3Pa7jDiB+ad2yPP+BBuSaqG
 QDhAxdNQz3osPy/fYGn9AZfgQ9dUee2HHgTtipC8rLnJsjryFmL90mPHL g==;
X-CSE-ConnectionGUID: Orak5i+cTe2WIY7gnr6NMQ==
X-CSE-MsgGUID: Zdnrrq3bSYyCbCCECIJbyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79238320"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79238320"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:15:34 -0700
X-CSE-ConnectionGUID: O2r1DlCFQdineBUP+L+aww==
X-CSE-MsgGUID: fIEoEtGdRNKsMI5SqC6+EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236650303"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:15:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 02:15:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 02:15:34 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 02:15:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HA8AgMhTM1ogF4cSIQVoZ16GdM9+wvy2AO5ArVDN5mYeaROFU+CCk4yh/C/uwLavUZk3rnTuERbwRWxWQoxlwlXLwyWjVrHJx3kMELXGObuj0Vef0XWpGZXg1C35Jw+/dXhbzA9Ffo8efyQChkM+r9Dbbjd0DESDG/5UtL14bQVCA0zVeu6+6bzEghsZ+6R7cojE9XyBAsL8Nh/qfesxw/M/+qkTTL9stsiDjRjG2/92AtHLaNi9Vnu1YU9Z++F0L2DHjDjNVl9ANgafcx5gUobooaQSxjokSR7m1INEEOEMUfJHsJUI6ueX2XHG5Qb6961N0d1dhrD4OhYTaq/B1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fem/TgtsUtm3oxQpgzUBJ6wn3RCVjVEZEGDh2LB9tkA=;
 b=jW1kngz/NOnSHK2XL4uxeENgxM1fQgoPaebvbKpYyQb7hrC3NbtPO0crWR5/lvP6rYMH4MQhTX5ssoor/2Xonf90CuqPB9BAENGUmpNRVTaH0mJ/T7jRc0SBGl9WKWlg7lapTpgM8WTvX8CAX0NfSwdSPL51b8p/qKY8uvWSSUbMnAsU0/rBA1hgwokmIT/YmLBZUB5ZSzZx1hO5AG5v1sOmn2i6ErBhLm5nFSaLxV0T1N0g4UE9YHPPEuESZNLbk9tpdHPVjfLe7LIndVFqtr5jDfgUOw6tJvwK3G4YSqxiDaklgcOl8x3ZAWt5ggNHxNTidxDo426WHb9QQVldQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM4PR11MB6018.namprd11.prod.outlook.com (2603:10b6:8:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Fri, 8 May
 2026 09:15:31 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Fri, 8 May 2026
 09:15:31 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 8 May 2026 11:15:27 +0200
Message-ID: <DID6JDZIK216.3F89HPX81S7D7@intel.com>
Subject: Re: [PATCH v10 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
X-Mailer: aerc 0.21.0
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <20260508080214.1979686-2-krzysztof.karas@intel.com>
In-Reply-To: <20260508080214.1979686-2-krzysztof.karas@intel.com>
X-ClientProxiedBy: DUZPR01CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM4PR11MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b6dee2d-e830-4eae-5605-08deace25a3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: o60JzaULh+ZgX5Ga8oRhAtHCVdXfZkLvyXiSga+UhbfKcIdUQYsYPj1OA8C50CRe55cgrQAT3XmPkKUvP4/QQCyjZVMiEaPI0CeOIK8ruhr30NPjTeNr59DhBbph8moRXH9AtDTbeaYa0cWEyr0ZM/c0uXZj0lo9Hxqfvta1K1DFj8eLPCaNqCVymoz12qW6cnKrb9BsMWGKjHm0PBlpTd+CLZf0lbGDprvL2V7aec+C0ddJ5ZO0LqOgWveGVLCAvpEhMM4t1HwAhKbDGbB9HPXVAfhEFDpAVoroe5t38mkkYJHOHO9TRySXdHmbKZC/aRzXMLkI25H6/G+N0KCU+V15luwN2a5qk7CEq5vhdlIL07br9QR2NdDvqyQ18CaPi5OtRQlxA7hp5j3r3PkTqp2H0W3RDLFAqrQTiyqCqH+F9KixUjGAJ2BGuGV8fiY3KdwS2/XFexZtY/KyW6oVCCwv8YkuvgL1chTEkWWlqQcxW+ItYSp4cpxwgLojaKPhZMwgrMLC1z9033WNXjWfdE1R9VcIuhrUwI8Ej9X48YOkNXCOnOCPLaTgA5l9q1n0LlathGQfvWHR1gw8aaYCPLJwr3oqVBdekOEuPu14C9vCtWWpOtq89QXDoHlMGZ4mAxohjMSTlqS6V5Vj9eaMgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3UxeGk0RHVmUlJ4U0FYN1I2UEFCZGlOVzJhclVhYm5SRWV0YXNoSzdPRkVH?=
 =?utf-8?B?YjhsUGtwRGtnZUF0QitiTmFwQnNCTTVuTmJHQnMzNHl4d041RTY3ZHN5dmNt?=
 =?utf-8?B?YlVrY0Vsc3cvTE9lRVVRRTRrVnJSUWdVSVp0THp0Z0dzb0hzOFFubGNVUWdI?=
 =?utf-8?B?SzBFQ01tcDBZMER0Z282OVJYVW5QVWxsck1aUFZEcmRmbU5FNmUvYkpMbXFa?=
 =?utf-8?B?YmJ0SHpCQ2YraFN1ZW5pZGFrajJNcmxPYWZjSmV3ZG5Xdmt6eFZ2WER2a1hL?=
 =?utf-8?B?ZlREc3kydUZWUHdiRkN6UnhVbXpnZVRwNnVrMVUxeGRGZkNvam9INVlCK3FR?=
 =?utf-8?B?QjZhZGpLYTJEelVUQ2tTVmVBaGlSdUIzQTZCd21RdUszZEwvS29wV0hRSzFN?=
 =?utf-8?B?SFZ5eC9sSEY5K0hYSFc4NTk1dUM4TnZUa25xWlEzWmZxcFlNSVFyWmljQ3VI?=
 =?utf-8?B?cEtuMGsxVU80QURtdDZRL2R4L1hhUDU2eWR3andFRnVQQnR4aXY0Z2Z5bVM4?=
 =?utf-8?B?aG9FNXlUc3g4dTZrQnE4bThtdW4zY2g3VXZLRFZkdlNCb3B4U0VLSVcySzlM?=
 =?utf-8?B?bVc3MEcwd01TdzlvbmRaOHN4alBMYUxGYUJuREhha01tT1pOb3Jnaks1S1kr?=
 =?utf-8?B?dThNU29CZENXRXRvOGJwb1ZsSFNXMUVLcGE4MGdqdms4c0pUY25yaFVhSzgv?=
 =?utf-8?B?dXhzcG9PR2pteHVCRTV2clJkaW5GKzFHWkRseHkvWnZVSFN0eDJvUW9rTkJ0?=
 =?utf-8?B?bDZEMVRBck1HazB2cTU4dk53eTJwM1J2VEIvOVZvN3Y5bEpqc2t1b0lqdGFq?=
 =?utf-8?B?WE1tbGdBL2dudjJKS1ljSEJKdWZscmRzN08vRVhtdkZDZUNTZ3BJTEtxSlZN?=
 =?utf-8?B?K1hoRFhFTWh4SWFTUWd0a1VPTWV5MnJUejZ0bjB1V3dReEtZNmZUOStHRDdC?=
 =?utf-8?B?MWQ5b095dU5XOGRKdXpzN1VFV05KWXA0TnV3NlRWSGlPdmVkZFd3N0NWMU9i?=
 =?utf-8?B?clRTTHN1Wm0zZzhCMEY4WlVuZnBnZldaenlVZWpDVk03SlYzbnYvNVdMQ3RN?=
 =?utf-8?B?VXlRVHg3T1NYUi85NGRGSGpadjlxU1RvSjlVbGNqM24xTS9SWW9ON2lBNWg1?=
 =?utf-8?B?VkNEc2ovZkpvVkcyNWVIZEdkR1JMYkU2aTRyQnQ1MlJpQU5NRndDZkdyVDB4?=
 =?utf-8?B?QmlMcDNYdjBkVHJUOG5mRlBHK3dxaVFJcWJPWFQrUy9UaXJSTENUZWorSmt0?=
 =?utf-8?B?MzhtR0U0Q2pncGpRUkJ3MlhuRlR0cldXZTcvZXpzWmpYSlBJWndaam4vTzJD?=
 =?utf-8?B?T0toSVppQm54Q2o5ZXVlU1ZuSlMzSkFhVExtZWZBVUh0QXFZRE5mbzEwWU1o?=
 =?utf-8?B?cTlpUWdPbDVWWTc1U2EzV0oyUCtDV0YxVC9tdnp5ZXR2bFp3bDlRVmd5eloz?=
 =?utf-8?B?MXNuRHlDS2pJaHE4RktJWmZKY0V6ekE4bHRJU1d4ZFIvYWQ4Ly9mb29qTTcr?=
 =?utf-8?B?eTZpaDZmQmpWcy9IeWVRc3c0MitFbjAxYlgvemlOLzFWMXgyeUk2dkFjMzkx?=
 =?utf-8?B?WS8wS20xK2c3VWpmMEVZd0s4MTNyQUFUUjdOTDhQUVlRakd3d3dOaktrTHNQ?=
 =?utf-8?B?Wk1MSm1pRnU3SUJ1cndpNDVBbUNUSFloakQ0RDRBcFdySmNCRFFWTlhQRkJw?=
 =?utf-8?B?QndJMy80R2FmOFJYNy9hMVcwaTlBcDAwc3RjMXBYOG9GOGZlck8xcUxIR3Jz?=
 =?utf-8?B?Vk5SeCtIVjIzSFUzdEhjY08vNFRPVUNaTk9JR2xTc1RXenIyV2JwT1YyV21X?=
 =?utf-8?B?cVQ5eklDYXVQS1pVeVA2S0cvcmcyc0ZQVXJPSjBWcVR0RjRHM1BUMnRZMVFu?=
 =?utf-8?B?TFYxSTlrWTRNR2lidmhNYmtIV3huRkozMEd3bEJZelhwd0VkRnZoVlFhdEFG?=
 =?utf-8?B?WFhNWGRFdEZQc3dPM3RTQ21OUHQ2d0QvQzNaVDdlOUZ2aTVwRkwzOTE2aEdF?=
 =?utf-8?B?dzB4VUdFMytIOHRmczJCd2luM29oQngrcHBEVW9WbUh0UmxvdEU5azkyWFN6?=
 =?utf-8?B?aDVYMkNQVitLQ2lrZ3cvdDRaZWdmUUx0eDFPdUdtQ3ZDUW8vUDhxQnJ4QTZR?=
 =?utf-8?B?b1V1dlZVNFVFQ1BoTFEzRThyQVJKcTByaFZhTVREN1N2NTAyTWpkamxvQVFQ?=
 =?utf-8?B?czVPSVVGV09iaUxCOERyeFhxOHBZUGl4N1lMUEsrSXByTUxZRkxESnZLdURu?=
 =?utf-8?B?V3NvMkpOVWpCRUZsZjdRbHFJQkVUdkNuZklJOUlVSEgyN28xdUFjcTB4Rm9O?=
 =?utf-8?B?RlNmdjlsQW1kTDVFWE5RYWxBRldGVWZwUGd5NnZYYmJRY2lBT2M0YVBxUTBF?=
 =?utf-8?Q?teFr9LlIKxHC/OJ4=3D?=
X-Exchange-RoutingPolicyChecked: U9Sp+Umn1g2mXO6c5AFKQP0riFwyjfA9iS/KviS/m47MGFjWkG6E4m/dF/Yog7GSPjJVjESfe8efLrMhnCnZtsxhXJVp/wYYF7uidWkvhtsCc18G4+XO+72JIj8Fp0YgFd204Pohs7H3AIJKvyUUAmgWmu/ZqILZe42jOumef9yxHONFqlf3mHYf3ChqqFNNOXJ4iHpqLyW8kh4Mv654AuH5X0D7vIBmydr2n8727m+dz4FFB4aE+eIhAd9mht2KXlVNXDFiUJ9X6VYS1oc8wHzETp8DYEBew2w2Ai9NSZCqg5F/NO4bizh7I5MWlIiGqc+zVILNbm0u7skv3zpHGw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b6dee2d-e830-4eae-5605-08deace25a3f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 09:15:31.3285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IXozhVVmztZVUHkfeEpRzr2/IssXwe5GgxgmvjKinxEvkVYM2sXO+yyU9uoxiQvDj+bkyx0NTg6B2vFT/h31Q0fHwc8s1cUb5vzyMAbVIMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6018
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
X-Rspamd-Queue-Id: 539774F420F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri May 8, 2026 at 10:02 AM CEST, Krzysztof Karas wrote:
> Migration testing in i915 assumes current task's address space
> to allocate new userspace mapping and uses it without
> registering real user for that address space in mm_struct.
> On single NUMA node setups PCI probe executes in the same
> context as userspace process calling the test (i915_selftest
> from IGT), but when multiple nodes are available, the PCI code
> puts probe into a kernel workqueue. This switches execution to
> a kworker, which does not have its own address space in
> userspace and must borrow such memory from another process, so
> "current->active_mm" is unknown at the start of the test.
>
> It was observed that mm->mm_users would occasionally be 0
> or drop to 0 during the test due to short delay between
> scheduling and executing work in forked process, which reaped
> userspace mappings, further leading to failures upon reading
> from userland memory.
>
> Prevent this by adding a PID parameter to a trusted task, so its
> mm struct may be used if needed.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

