Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B1B3A074
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 16:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFCB10E9C8;
	Thu, 28 Aug 2025 14:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7s8yTXW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E0C10E9BD;
 Thu, 28 Aug 2025 14:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756390356; x=1787926356;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=VhtsDWKD1OauBNFTX7INXEummmZexxBi60MMKKu1obA=;
 b=D7s8yTXWi0ptcW6ts4Y1LR4vEjnXXC58rvqQ1aUqsrtL0NtX0+/cPgz2
 Qz2ThWQs5bH0K8cVtKJsTetjeyefy2X+2kHQ3+RNm81cn6RQSYr6XH1Tz
 5F+AqA8m7EPZwmwjYHaza+KGACJv4VKO0QZLziS8zFF7qf2zXTbe4geqf
 O7BfjletmwP8d0xKj5uXIUPh87cXoeGqi1N/ScVB8tCK4V6j6znpVTu/Z
 sFL0+AAESC866XGYgy1+wkKcUdn6Lf9qDoGv+sTXi1SlzEdaKxWSxCkEy
 fL9J3HwtibZ2hmUXpBrObhgdPNvNM7XK3LPanvZJmOG/knl2XbHDPn7lM w==;
X-CSE-ConnectionGUID: y20xnxriSIW2wbg7rtECYQ==
X-CSE-MsgGUID: hV3wQmkJSNyx5inkyAjXzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58584053"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58584053"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:12:30 -0700
X-CSE-ConnectionGUID: lbFNJcMtSOOX0apv3DHrZw==
X-CSE-MsgGUID: sB+OBJxGQwSDCpppxxEi1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174454073"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:12:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:12:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 07:12:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:12:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=efmK8EsMsuODAx05l0CgQ3E07gY03wWPNfcjsJqPBWkY5O+2pcE9JxWhDI0n3zRya6hhvdm9+TeDCBaeIkWJcWNobTX0IXOMeJH10Z0JmL6qwRNGn+YQYbuXACnex75q3fVH5jhz52rU6fhPJXfz6GI7mvm6qopW3xi7IiEGh7eGy2EUXaMSmaxdFND323xAY6iqJKFqbiP39iOo2gWc8ggKX6h7ATPCrmWEsY4+nozZ7U4yWWIjVwJ7eJzD2lYJVnev3CQxQWcwOQAuVQ8s3F9TQZXlmcOyDzTNzNsZXYVZbh9NEAcShQtMpVBvHTZzYTpsCVy3mB1tA1Gov8Ci1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LQLFA19ssCmXgASITzmArh+nU8vZ6TGnaePbu46uFUA=;
 b=XD9+GNUmg0VLgR1k/DQXXdyUTc7h6n5pDLc5vMYB+HUgGN4cQwfcyqfwqJ8hC+kjo7JrITX84udWFu1wTh6CawfeCTayE6WdewdBEZRj7LCex+OFCQT1dig/a8/YS+wOWscKXQbXiqTij/b4WNWlG3uusfiEWA6384VVkx2QdQjBmsWQPNQrSbgv8jXWpQvgxQsQsBcPOsYVnrKOjCQEBEMNqyiBXasabHGKcvz6JpZFoQMJYnFtLVRw4BQpkMe7cO1/8RZ13hZODZJQ2xnx2f2wl7NAr4dZmHnvPp9TIpiJb4sFaShqAB4tASGtxfO65Ukx6LXTtoOiZtJv7NVFTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ0PR11MB5150.namprd11.prod.outlook.com (2603:10b6:a03:2d4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Thu, 28 Aug
 2025 14:12:20 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9073.017; Thu, 28 Aug 2025
 14:12:20 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 28 Aug 2025 14:12:15 +0000
Message-ID: <DCE4ET9INSJ6.3LPUPKS0ONCJB@intel.com>
CC: <jouni.hogander@intel.com>
Subject: Re: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250828104951.1279862-1-michal.grzelak@intel.com>
 <20250828104951.1279862-2-michal.grzelak@intel.com>
In-Reply-To: <20250828104951.1279862-2-michal.grzelak@intel.com>
X-ClientProxiedBy: VI1P190CA0046.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ0PR11MB5150:EE_
X-MS-Office365-Filtering-Correlation-Id: d37fe3f5-a59a-4cf8-ad79-08dde63ce6da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXlhT01iQWl5eTl5SUQ0RVNWZW5iZEJOcS9samJuVVg5cmNCK0lWczNOd1Uz?=
 =?utf-8?B?TEt4Ym1qVTZMM0d2UmpKS1RkV3QraEZqa0Q1aEIxSzJZSnBoajVoV3VoMzdo?=
 =?utf-8?B?MjdBcHpQcnBiL1pRdWlnOTZlTmwvTkJ4QUhodUhvV0FOQUJqTVhyUzNQb3ZT?=
 =?utf-8?B?Y3Z6aEMxQmZ5clRFTzRwNyt2dWwwdDBWU3NvT3lpSXAxS0xqREg0Z2pNYU9X?=
 =?utf-8?B?L0czMVhENys4dUk2VlNvSWhuU2djZHR3aXBrNzdZaXIySDJnbG5jQnFQazVI?=
 =?utf-8?B?N1hWM3daZVMxR1p4UHNZMDFaUnl2VGU2NWFneEVQRDZ3OU0yZnM1SENkNVV0?=
 =?utf-8?B?SUNVWDhBMzlkM0xHMnYxVDBmYWNDZHVvSFlWdkhYMGM0MVFOQXRrNFFvWnZl?=
 =?utf-8?B?Z2ZOWUM1MDJqUjhSUTRVTXcxeExRT0I4U1JtQU1vd0huU1lhbjF2ME9KeXk1?=
 =?utf-8?B?Y1BiVk1aMGdiMDhVc1p6U0sxb2VrQk5YdmlFRWhva0xJWmlrK2wrRzFPTVJx?=
 =?utf-8?B?M1lldzl6SkMwK0Q4R2xpMGtWM1RPemV1TDA4NWZSOVFxUFVYU0JWcGxJY0g0?=
 =?utf-8?B?YzNJRkdVQVJSQmJqd0IrYVExNGhEWUJVbEV6MnR0bEV4Sk9LNm1VUWd2MHZ4?=
 =?utf-8?B?ODNEQWRmZk1nTlVmeGRVWFQ5Mk0zZENEYnI4MlFzQ2hBR3pUd1lWVUtWT1Zl?=
 =?utf-8?B?UXFaOVFKSnpQTXdRMy9qZ0puMCtkb3NvNWF3TTdRcUZHUkViTmFMclozeXhx?=
 =?utf-8?B?Q28wWDlIRGh2aWdOMmhRYWMzRWw0UGsyTDdzaXdKcDVNUXp6Rkw1MlR4WUlF?=
 =?utf-8?B?ZU4wNmVtRE83OGNMQS8wTm1lZm00WkVxMFVyZnU1QlpXbW1qN3ZLVjFoZEFn?=
 =?utf-8?B?bVYwbzhCb0ZYMzFrd1JKUjM0ZmVuaUVWbDlXSmdlcW95RGx3S0R1M005WGla?=
 =?utf-8?B?T1YzR1ZwNFc1bkM2ZEtqMWVneDl6YkIxQzFjR3RSK1FYem4rN0FEcnBxTVY0?=
 =?utf-8?B?RjFBSWVUYWFHN2ZCZUpxNmNMZTcrWUpyajBodE00bDQwaEFsL1hnNlhrS1lu?=
 =?utf-8?B?NHlEaUprY2NabGl2OG9TempJdWprdkUzRzNiZ3FERmRaT1I4S3oySnhtckZS?=
 =?utf-8?B?K2doTGpNeWtvOHBvc1J1UVY3eDhkUlVMNE5vcDJtbE1XT29OOWVWMmpJUGFE?=
 =?utf-8?B?RGlONkFHRzUvWnpmb1BMTnpIelNhd2Qwek5JWHpINTBOSHh1NWhVWjBLUlBO?=
 =?utf-8?B?QXlGVTFVaEROaWhsU1hJSDhTZzNKQW8yVUpPVk9Yb0JBWG5oRHE5d1ZPdlNn?=
 =?utf-8?B?RmFVQmJROWJJaWE4bTBXaEhOMjI1Nzc5Rm52TWV3cGR3ckhSR1N0VzF0eStO?=
 =?utf-8?B?MC96TU1uaUxRS1hjQlRkQ1FWYjRObFE2QTNtaTNZK3NiZXhSaGszRjYvbnd4?=
 =?utf-8?B?czY2WlZJbFZPS2Y4NlNDUGlucUsvblhORFhqdVZWSzQ1eHpoZFJoRW1wT05r?=
 =?utf-8?B?TEFPRFhmRG45Njd0TU9ibzRUVzUzUEpVQmpGUDJQTDE1bENEdkk2UnVoeWY3?=
 =?utf-8?B?elZ3cnlnL1IweUFuMmlLeWJsYjJFUzFpRXZ3YW5raHJyOHE2eG93TWhLMVc2?=
 =?utf-8?B?UHBUaWVRNlkzUkM2bnBJUjk5WEg0ZEZreGZBU1lkS0FLNTBuS3Z5Q2ZqUEl3?=
 =?utf-8?B?ejRMZHRnVk1ldWZxVEdaMjdRNThOU2ZQYnhId3JwbFc0SlB3Wjg2T3ZTdWs3?=
 =?utf-8?B?S2MvRjJaZ3N1MUZveG5ubjJXak55c3g3RE13MFA2WUFsTjh4Y2Fwc3RFSmpO?=
 =?utf-8?B?NWNCY3FjRDhRKzR6eEJOelpiSlBvZ1JWbWhFejRITDRsbnNBQVRWdmVQTmtv?=
 =?utf-8?B?QnNNcHlYTlF0MzVaU3R1c2VuL2NicFAvMG1leng0MFhKcG5BT0VmRUxkQVZS?=
 =?utf-8?Q?oHV3j+RiDGA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OC9BS05yZU5UajB6S01PYWRoaXRyMXBvMkdlMG45a2djRTlCdU1xa3RuUE5C?=
 =?utf-8?B?Q25nblduQnFiVnhsSTdYaUt1TDZiNHZhYmhmK3NuamRQdHQ1OURXdUlDRDFi?=
 =?utf-8?B?aWdXN2RvT1dtL0pvcGhOQTRnZHA3cTdPUmVFVDd6TW05aHVHRTFRcWgvR1Qy?=
 =?utf-8?B?NXBBTjRTRjRkSzkxYzd6VkNaaXNjQzJtajg5NFl5Y3dqaUJ5ZGpobHQ3a3d6?=
 =?utf-8?B?QWlNN0RFRHkrOXR4VXFUWm81WXpmeHM1eXNDNUR5bnhtNkVPRFlmRm1rTXdL?=
 =?utf-8?B?b1kvMG5PZi80ZFlxcDVJTFAzdmFBbng5emJid2pTNjIwemM0Sk5ZUDE5bzJU?=
 =?utf-8?B?SG52eVpkdVJ2bTFLUUJ1S0oxZzNGOVhiVXRxakdwcWswMnllZjZzenJLbDUz?=
 =?utf-8?B?VHV5blNiVEtwSkcvczcya0kvU2VtekNhOFVUMUo5eGhQRUhJKzI1VjF2K3BX?=
 =?utf-8?B?MXVKQTJnRWg4MkhicXBZMW5Sb0dGZ1dYR3d2TVRxNi85RW1RN1ZxMG9YdEZE?=
 =?utf-8?B?ZllmL0RBSEJvdUYyS3JBVWhZR0FEMCt2eDZjS05TMHdHYW16TVhNYUdLTlNG?=
 =?utf-8?B?VGxyNjlRTG0xZi9BNTd4RG96aUtTd0lJNlFFZElGMXN5WjlNcXg0M1Q5c1pQ?=
 =?utf-8?B?Vk5HZWU4WVlsK1MvcTZtdU5YZytlL21xc2JISXNoYU5HZzJrQk9waW40T0ZB?=
 =?utf-8?B?dVkxUFF5NUZqUTk2RDZnTURQbXZsTWpwMyt0ZTNrWis4UVNCWkFlRFNnY0NO?=
 =?utf-8?B?Q3B1Mlp5ZUlESHB2VzlrTEFIRFV2S0JEb1U0SzFhSG92TFVCbVltVnhSZWMz?=
 =?utf-8?B?a0lHYi9nTVh5UDBrQzhSeDZYak5lVk4zMCtraDVpN1BaQWs0amNLSjNNMytB?=
 =?utf-8?B?R001dHF6UHQvZkZCWEk1bEwyRzZPVEpzYWFORVlxYlROWTZ3dnJCQXo0eUJZ?=
 =?utf-8?B?cHhLelpza2lBeXRQWHZKVmllZmpPc0U1QzU5NDFZZmlwVEhRVVFvMmV2dXEw?=
 =?utf-8?B?aDMvR2FUVEdJMUFIaTdmK0dOblJhUThOZjlTeWJMN042b0cyVlhaN0d4WEEw?=
 =?utf-8?B?YVFUSmU2MzBMNHFZbE8xbWhzN0NzbFdkTG93aWV6dXZUNkZsU2Q5REN0cWsv?=
 =?utf-8?B?WVFQRUlaTjBtWjhFOFpQYkFVLzNhL3M2aFZCcnhEOG91L0RFZDE0UVZsa0d5?=
 =?utf-8?B?NVBTWW5DaXRkcUQ2cHRmUjd1L3Y3TFhPeDFpUjRwcndZU1l5c1RaelFUZVkv?=
 =?utf-8?B?R3o1M1NFUDRBV0lUYVk0RzM2d0MyNE1QZjlOeGR3TUVRdU9KcTNlcU0zY1JR?=
 =?utf-8?B?Q1lWMkFKZ2N1WEgyK3FsY3hTQURGdFNQWTNseDhPeVZCZExsRmRySE1rSEhZ?=
 =?utf-8?B?cUE3Q3JRSzFVZk91aE9BNVJWQU1VcENIK09BMmloSVNzSEswdG9UTkY0cUhJ?=
 =?utf-8?B?NnRBTG4zQjBHVWtUd3hLRTBITGJ3QU5yL1hwUVVzUk51SUplZlBLMGt3dDRY?=
 =?utf-8?B?aFF4Yk1IWmJFK1hsSU80aDRlalFTK2pUaEhBcW5CZjU3Y3RhN0M4elU2UXR1?=
 =?utf-8?B?QUZ0RXFzSnJwN2tzL3FNMHhuYjYyZGtlOFNOQWkwcytxQzRndEsyeVZzZEMx?=
 =?utf-8?B?SVozOWM1K1VhaW5pTWNMa2ljVjA4SWhtbXErWnE2TDVSOUI3M1JmSHdTeENa?=
 =?utf-8?B?OXdyNlRLMFVLVW1uZE9sZDZmRTYwVE82Q3E5SFFVRjBFTXJ4Ykd3ZkJqSmFC?=
 =?utf-8?B?WlZFelBwTUwwcU83cC9nR1ZVQTBpWmZDait0NXdNQ21UM3NQT1hWL1dZYk5C?=
 =?utf-8?B?akVUUE5LMHNuUGFrU2MvNnVTYW1xbnpqRGR6a25ORTk3S25QMFRVY1lPb2tJ?=
 =?utf-8?B?QnREMmxNbk5td3N3Qjg2RFREZEZuL05uQzNYZjRDR25GcElTSkcwYitUSVJX?=
 =?utf-8?B?TG93STEyU3pqVGJlN1lmUFpBK2lPWHIrWDJEblhtYXJrSkVlT2pQRldDSndN?=
 =?utf-8?B?eXpEc2prOHgwS1lTZmFVbjc3VWwyRHRJUklwaHJncGNvUmxPQ3kvYWFjdWli?=
 =?utf-8?B?UEdJZ0VJMW0rck43V1FWNkVYUTUzV01KWndQT2M5eE5QcTc3SFpYSEJiNERE?=
 =?utf-8?B?R1VpSUp6TEQveVI3TFB5a0puTGFaWkRqS25SSlpSeGpoWDFGNkxkWTBHcE9W?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d37fe3f5-a59a-4cf8-ad79-08dde63ce6da
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 14:12:20.3475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6P0kYwCX1VXaB6GakLdHVtQKQ53EDM7jm4CAao5+j6koW63kkWLDTAJOau6HCRDBwIgo4ILKhJBOUqyhrPOBite1ZjrgDRb37kXOUP5zEY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5150
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

Hi Micha=C5=82
On Thu Aug 28, 2025 at 10:49 AM UTC, Micha=C5=82 Grzelak wrote:
> There is no reason in debugfs why PSR has been disabled. Add
It might be useful to explain the motivation behind this feature.

> no_psr_reason field into struct intel_psr. Write the reason,
> e.g. PSR setup timing not met, into proper PSR debugfs file.
> Extend format of debugfs file to have reason when non-NULL.
> Ensure no_psr_reason is up-to-date or NULL by resetting it
> at the beginning of intel_psr_compute_config. Clean it when
> PSR is activated.
>
> Refactor intel_psr_post_plane_update to use no_psr_reason
> along keep_disabled.
It appears to be version 8. I think it would be helpful to include a change=
log.=20

>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c      | 21 +++++++++++++++----
>  2 files changed, 19 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index fd9d2527889b..0f8332ce1aa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1687,6 +1687,8 @@ struct intel_psr {
>  	bool pkg_c_latency_used;
> =20
>  	u8 active_non_psr_pipes;
> +
> +	const char *no_psr_reason;
Have you considered using an enum or another type instead of a char pointer=
?

--=20
Best regards,
Sebastian

