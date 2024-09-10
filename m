Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26388973A47
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 16:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4517C10E82E;
	Tue, 10 Sep 2024 14:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EgZqOVrp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA82610E82E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 14:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725979508; x=1757515508;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Y8L7LEmhzrDNq9W7dz+pQ/LNt5xI5cecta0DuB3bByI=;
 b=EgZqOVrpPcU+T4WVhlyGVbVoCtNCEs6FkI3DTeXiV80W7a58/IcYjcyk
 1INkxDPdU8gbc2nZy/lnnXpbHO7YydGPVKB7a2j94TUXyz1U/2ODjqjLF
 V0IZzY6gXwnJsy6SWrSYiTQfbRHVuzm/ot9VHq6IS5vjWKY8feoXCTy7+
 GZSqFI0ecoxDV3rzA44GZjuRW/QP0KG0gf8a90WTodJQJqfms67bOg+2x
 WDamZk0qAUV8WHYnIFTpCwhlr7LLIo7WFlDHb+C037oG9Y/tTFT2nyKSv
 6eYfdaVeDG+OgesEIYYTzmgv9MwyJ8D9Pw5yAeGPrmrBVvaBn/SpvR/c0 g==;
X-CSE-ConnectionGUID: uayGvx6uSE+P7+T5Cw/Fuw==
X-CSE-MsgGUID: 0amemOACSZKn9Th+HMDgBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="42248441"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="42248441"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 07:45:05 -0700
X-CSE-ConnectionGUID: IuSI7DfHT8OrYl/EiR5aXg==
X-CSE-MsgGUID: l5+OFjYcTb6Me54/GUwnWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67009880"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 07:45:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 07:45:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 07:45:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 07:45:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 07:45:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=khfb2Cxzw8DbuZIm75gsjthHHhqX1xS14HTUIvQiHanJ1OhlEV3OHkQ+mf5GcRjIOITBBzZ/6Y26EHp479TybQ6oVgJVw2RMoyJ2lAX8PzqeQdoAC98qgkDSdU0X1gZvnULZtvXRV2YvTfc8rgEMkXKvhX7046by5o4SgbPJDgd43K015nGymh485Arm/rJIu7U4QVtolV8hGrFuVSKP3w23UWewidPlaMZNM8w8l4SQj9PL1cvWcrA1jSTyFQVQ0Ab8D4M6feoCnuc+QGx6znawLS34wYgNt/pYI1y8XqjUx5QdASKOGqCoXyKUFW/0vnqkFs1ehtCstsTh87PNMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXLa/2SZf3Jl4xBo2fyPHmWoE+qOiSFxdEemKQpnoOM=;
 b=YmTBiVYxuGEy38Yawi9oO1ngzLMJbZx/jNtuH/5TKLxrIGMfQDVnFF98ilz7Eo9O4VwFP82ld/WZDJjIjSxTkC3TPtlMI8SGqJgQ050XGf0CM9nj6mjoE3CbA84OXexebJzwNWcSXjSzXbyMzny+3kfDLbho47xUaMDn52PbVifGdDNy49AlBNgU9lRxqe1okb2reRzu0hXFSnilR7iIcnX4JkESk7s41nNc9EiH9ZvOkGsAPQGZalO77+QCvW93MMFYaUk6rzrdxYMCQZgYOgYBWXXvnJWtKWOE7QoM+QFdC0zUjgu0mUm24jpHJiC8zVwLrE0/0ZprFaAjdP+tog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA0PR11MB7862.namprd11.prod.outlook.com (2603:10b6:208:3dc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Tue, 10 Sep
 2024 14:44:53 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 14:44:53 +0000
Date: Tue, 10 Sep 2024 10:44:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix AUX IO power enabling for eDP PSR
Message-ID: <ZuBbW5x7j8WUfneT@intel.com>
References: <20240910111847.2995725-1-imre.deak@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240910111847.2995725-1-imre.deak@intel.com>
X-ClientProxiedBy: MN0P220CA0004.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:208:52e::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA0PR11MB7862:EE_
X-MS-Office365-Filtering-Correlation-Id: cff5c190-15da-468b-b191-08dcd1a71f34
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?lXv8SLQr0LH8hgfPyQXctSjXQUc2WnYVRgij7DnxQDc85hADlAHesoijJn?=
 =?iso-8859-1?Q?V6qOiwnKXmjD3faCmJpOBzz81j94NzTu5x36B0W3jBMbeaZxrSwLlLcjlI?=
 =?iso-8859-1?Q?YgCnbH+9wtXUIQ7T7oMQAUwvdAumgMSFe/yAKIA+lIJuH0V+Kf3/t/uy3o?=
 =?iso-8859-1?Q?Hu40PUkHMGnO0u2a4q4mcF51GfpagieR1SKdabtuaVXEMBm3mUVA2vutYP?=
 =?iso-8859-1?Q?V3+U+E7all9mfteJx8eusNoCM7I6Zy96eYD1a3zJPXx3iH/o+OPIL8Zjqq?=
 =?iso-8859-1?Q?OTOlxm5sxRLj82hcyiAP0zxh0YIRnBVkP2dnPGZx83srhdGYc2lFjOWa0m?=
 =?iso-8859-1?Q?7QmrkqQCioB1XiT58Hcojg0JBTEY+pyfWLQCJyX0MFOfDvv1puDWkQbW76?=
 =?iso-8859-1?Q?8NrxP8zxtcb+YL88m+avByIUeDkFm1Uy5tgNofK06Jav7KnzVQSbKkKgQ1?=
 =?iso-8859-1?Q?tu4UHm0ljuYC82G0is02vf0cBxW9RPSR6C3SpaBRI0lUSd/b/9axgjWQ6b?=
 =?iso-8859-1?Q?N7M+CCNdNMmyW57gtICkeJk0o/sNbuFgLmZ11UDveIHjiw2sqXX6tG+IIh?=
 =?iso-8859-1?Q?qLFJGkJAJ15uOnON1RYqut227VlZ6xAomtunerlsJMBufcutsWZF5FssIF?=
 =?iso-8859-1?Q?M75eOYY+ZHaG6A+p2rtKl9WxG8T7xNYPJlscLOKvdLJqlquHAl8kwCgI5b?=
 =?iso-8859-1?Q?OFFYGm5JfN1/IKfJEsC8SN7d8reYjJfqoISosHVuEbgDlAvpObRDlAKURS?=
 =?iso-8859-1?Q?6XdK8Cbp9Yyl1wh1ntoIh58oWJUvQE84Udmo4pyFCgp0ace3zsxL0/mQuS?=
 =?iso-8859-1?Q?G9Rkrzm9QqdmmgZWbxwUYb63DNFEyhId+U488BP9FdScM2Zkwjj923fVXK?=
 =?iso-8859-1?Q?9yIz6RrDNNpBowd8Rxmy+4lIeo4Z1+ILtQcKbTzkpB43toP3JHJ2Y/hi1N?=
 =?iso-8859-1?Q?Nu4I8NpEQqD3NZxpVCKUyC+DPWBXd6Pk8F0ASksxXNrCwCYRX/HZS9/UaN?=
 =?iso-8859-1?Q?6fx+Eq/Tl4zsAsIIBMFjzCKm2DlB7rsSl4/XdqGnyg56AsQob/VzoxHaV5?=
 =?iso-8859-1?Q?OXZtEIGmS1jMYUIPTjW0av3mGkCkgNxIxczB1Z5DwOZeJXPsSARpNcVVvq?=
 =?iso-8859-1?Q?FKVdA/k1N9tAJYLND6jRTtcXtLW5YJ8H75YvGyHbBlVJpmcvbXdRjiuYhX?=
 =?iso-8859-1?Q?qmZJOw1px5plh2mSrZnVgBMQ0ZLcBXmkqfjAerUaVEcmQVB7H998mAN0JB?=
 =?iso-8859-1?Q?H95rj2LaI9yG/mgbLkrHk/Ml7Psv8KkbvsWk2OaxyBZfHWi4a6VuPq5biv?=
 =?iso-8859-1?Q?GgBm4MFuW0eDGiFQKhBTADheC8HZEJx7yvmOWy1hckfK0w0KKH2X6lgbcC?=
 =?iso-8859-1?Q?jtWYTzofiVCvA48/ZuetR8Pizq4vde4g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?V46EH3A3e8F56aM4+PtVBdp667iRSb5jYTJ+/N5GMvWnyPQk8CpgOJGaQD?=
 =?iso-8859-1?Q?ZyLTagyWgoClh6Qeml52LwTAzerQ4c6bHYAawl+jlT/UUB0u5UeAbIh1Hn?=
 =?iso-8859-1?Q?9Ww+dptadKWQ3r6wujFwT+WBmMTNwYGFAr0t0jg01e0sBmkAKUVdaYSISc?=
 =?iso-8859-1?Q?JjH2Qcshg6QpFgP1sUFtNqgdlvEiHYbG8qvMIHWq9mgrOe/179Mc16xFMw?=
 =?iso-8859-1?Q?qyewAMdnSmRx+aQ3Rms024o2VHwzqs3Kw0Oz8LZmeFVWbpP8AA53r8rd05?=
 =?iso-8859-1?Q?egLbCcrIoTPtVgyNNxIiwMs9EMPlrXFTe07YOfB2aLEgTeEQ9BSXgkJQoe?=
 =?iso-8859-1?Q?VEr1UJ/UhIbD6haqUzHe0fl/jt/O14PTz+R6fzHcs5dRIqz3adFcrYiJ5E?=
 =?iso-8859-1?Q?urd5Cj273aboPwAoDTT0hHH2IXcYPYHoJ4nDmoSYdyCw5F7y6hbamh8cxf?=
 =?iso-8859-1?Q?tdiaMKkzNzipILnRiWht5jAWTSANdnq5uGJwEbttfXtMvu+yXH3XQPmWoD?=
 =?iso-8859-1?Q?GLYk4eB9YExhuMBVaVXSaN82y3M41O3fwmrzPVlGKx25WEWr9dYyVjgRU2?=
 =?iso-8859-1?Q?JzNWQZFQDHXLhZQke8ItZQVD3gHDV5gHlrqm5NDCLZ/CvdWZl43e3oHQAj?=
 =?iso-8859-1?Q?7f8kwnthdJXOQA417+lsPSg5FaTSDbcJnvjefO4qpbBj9DxfMBW3dFP6z7?=
 =?iso-8859-1?Q?CqxLOBBmER5Cll0Sr3NMCjKFP4IP4QFyuLxw1KA56XzsIbZWSTECjV3fpW?=
 =?iso-8859-1?Q?5FKplfyIN81JjSFuRxRtYEd9r4niFMVpJA9NrF3Vgh3gFziZZ0X0IMAfOV?=
 =?iso-8859-1?Q?VjEOC/bia/0HyqM2NmT6Y8vq4cMSbghxRf5rDashaTEmPJqJVsfs1AkBj3?=
 =?iso-8859-1?Q?QAW6xa/l5EyKSjNog8qzPvsl9QZBv/e3YG/SbpSC9rcWKQYRCxO2grSKxj?=
 =?iso-8859-1?Q?wVV6S88t+P3Jh50r36NM5M2haCQ7I57sMu6NniTu2XDKwMsXPTaFHOW9cl?=
 =?iso-8859-1?Q?ujg7FTySadfbfmjYfifyW+N+ajCaHhLtf70GHLOCU4cMfBdUL/4+YVSsOD?=
 =?iso-8859-1?Q?6Nocjnq3ReZ2Tw70TQy35W89+Ul540M5fex33I3UiMsRmILSx875rHPCLi?=
 =?iso-8859-1?Q?jqL/GqMI7lGr+jNroxtqgK6N9iMckMHeisk8NXNltSiYd+JxEPJIgxQc/o?=
 =?iso-8859-1?Q?zkK6lLdA3KZH+k3NboCNSaLLgjxon3/yW+poKGwRrAuzmhhzwbOXGGXfNM?=
 =?iso-8859-1?Q?/B0+AAVsCAGWCmsOoN/US/mb37oAcynUbbaVVtcJmbQVLEVwqgHalFz03j?=
 =?iso-8859-1?Q?GjnWL1miNKRnWQK6Ab6ntABdHJJoCOf6q0IdXF73Hc3xGh0tMnYc8WbL9A?=
 =?iso-8859-1?Q?VcLuEhP6YWtPUgm9Jyc+i1qd4rD1i9kQNXqoREkBnh4k2bU99IpnBvxNuM?=
 =?iso-8859-1?Q?AgvfZzhGxry/5HQ89rYEh9K2ZyM+FdooYPFrMJKpOFVyNdcyZ8vgwyGav8?=
 =?iso-8859-1?Q?wW5fmRYb1W8If0ABuV8WEdc9V26iEcZRJe31AUZO5x4lWs7qTlIlQtCSBs?=
 =?iso-8859-1?Q?N0/+rNsLPXT5JREXi3J9nuGArarNgLQfNN9fSfXg1ar8zoJeT8WWiYrmMs?=
 =?iso-8859-1?Q?mJhIMS+4NAkMcardxvDTR2skMTOexN7CNPPHv392h66TI5m2kyMO05Jw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cff5c190-15da-468b-b191-08dcd1a71f34
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 14:44:53.6028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cdqPvyb+fa2xX6qg3vEvg33ghvpa9Mr7Rto26zAkDcbdaWhmvxqcLe/YfYwt0s1x4m9nYKiS8vkE4Fh33bGPyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7862
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

On Tue, Sep 10, 2024 at 02:18:47PM +0300, Imre Deak wrote:
> Panel Self Refresh on eDP requires the AUX IO power to be enabled
> whenever the output (main link) is enabled. This is required by the
> AUX_PHY_WAKE/ML_PHY_LOCK signaling initiated by the HW automatically to
> re-enable the main link after it got disabled in power saving states
> (see eDP v1.4b, sections 5.1, 6.1.3.3.1.1).
> 
> The Panel Replay mode on non-eDP outputs on the other hand is only
> supported by keeping the main link active, thus not requiring the above
> AUX_PHY_WAKE/ML_PHY_LOCK signaling (eDP v1.4b, section 6.1.3.3.1.2).
> Thus enabling the AUX IO power for this case is not required either.
> 
> Based on the above enable the AUX IO power only for eDP/PSR outputs.
> 
> Bspec: 49274, 53370
> 
> Cc: Animesh Manna <animesh.manna@intel.com>

Cc: Jouni Högander <jouni.hogander@intel.com>

> Fixes: b8cf5b5d266e ("drm/i915/panelreplay: Initializaton and compute config for panel replay")
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
>  3 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 00fbe9f8c03a9..b1c294236cc87 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -916,7 +916,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
>  	 * instead of a specific AUX_IO_<port> reference without powering up any
>  	 * extra wells.
>  	 */
> -	if (intel_encoder_can_psr(&dig_port->base))
> +	if (intel_psr_needs_aux_io_power(&dig_port->base, crtc_state))
>  		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
>  	else if (DISPLAY_VER(i915) < 14 &&
>  		 (intel_crtc_has_dp_encoder(crtc_state) ||
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b30fa067ce6e3..f2991dc4a04ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -205,6 +205,19 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder)
>  		return false;
>  }
>  
> +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
> +{
> +	/*
> +	 * For PSR/PR modes only eDP requires the AUX IO power to be enabled whenever
> +	 * the output is enabled. For non-eDP outputs the main link is always
> +	 * on, hence it doesn't require the HW initiated AUX wake-up signaling used
> +	 * for eDP.

I honestly got confused with this sentence here, because PSR is only a eDP
feature. But yeap, we have the DP2.0 panel replay that is based out of eDP PSR,
and it looks our code is already inheriting and mixing both.

But anyway, I wonder if this aux thing here would depend on
DP_ALPM_AUX_LESS_CAP intel_alpm_aux_less_wake_supported()
instead of assuming aux always on for panel replay.

> +	 */
> +	return intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) &&
> +	       intel_encoder_can_psr(encoder);
> +}
> +
>  static bool psr_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 4e09c10908e4c..6eb5f15f674fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -25,6 +25,8 @@ struct intel_plane_state;
>  				    (intel_dp)->psr.source_panel_replay_support)
>  
>  bool intel_encoder_can_psr(struct intel_encoder *encoder);
> +bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state);
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
>  void intel_psr_enable_sink(struct intel_dp *intel_dp,
>  			   const struct intel_crtc_state *crtc_state);
> -- 
> 2.44.2
> 
