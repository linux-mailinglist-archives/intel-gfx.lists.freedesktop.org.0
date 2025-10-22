Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C90BFDBCD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 19:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B329310E828;
	Wed, 22 Oct 2025 17:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8B6u+js";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBB710E828;
 Wed, 22 Oct 2025 17:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761155892; x=1792691892;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=xsNRRBr0wj5mQOkvpYdOCc76Q6NjtpNpNdPRMPVt59E=;
 b=B8B6u+jsEB+GBYupsw0JkFp1bZnxXxmCeW3XIhPtdiN8oDa4GE4XAUcd
 DmzNZfETJ37bEDQiRad3tzQfB1WFoar4J+eJPWwEWyyCw5kG4myxGEcQg
 meGFqLQaHcxAkEwUcNDJ206IQIHK8P0LNQZsF34JptpCd8s7hL/RLfHYW
 bEs+EOf/FSeYKl9izd1pwnEzfGnEM1tKKTUz0SJ2d71bRaLoMVsq892MS
 9Vr2MPVb+Z3MlN/abUeBTyPAd89NPKxqC9uLJ1LRz1t4AZrnGjz9LKLqN
 o90N3iE/UD/QVxTzx2A4/NZ6p/RiDQ+ez8WSGrk9mcF7vP8XwhwoISkLK w==;
X-CSE-ConnectionGUID: miEHzlvIRtysEXFxfw2wVg==
X-CSE-MsgGUID: KSwdeAO4S8yETUq6hRdAHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80942316"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="80942316"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:58:11 -0700
X-CSE-ConnectionGUID: 7AjRoQynQHegKguAIFRrWg==
X-CSE-MsgGUID: tS4ICrNVQk+DwAPg2DWDXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183107409"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 10:58:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:58:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 10:58:10 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 10:58:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xovV0zuKsOo8VkLpKgaxwVlOxsqu015aF5H7gKsoqV7MpjvpNe7XM7z07eJCZfaR8MzqUHUEU3q7/kBAIt2GAKdtWr4iOxg3f+qm6XwPHBbtJch5rSYtx546AQexAGzT9XWL0Vlh335sK8Mbd+bSiTeNkB2aWF68ddhjFIYgakSQEukU7tIEkX1cM6IDZjqtiCx+5dSk+jxQFEsy8hJmn4Zdnj4k21oUz9FuvO/+utuSZjFD2oN6zf8aR0nAlL0h7BH5qCbohuGt+k9Bfu9pe3soclVu6kY5lnrKp8NI446r3CNpdJ0N/e0hEUyMuvGUXfkvuIWctVof4jLS0B6cYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/FEaSkz64/BgAMJ2gXmTg085lKRiTJa7+wgqDAySXY8=;
 b=PaHs7TwUyhWQE5JiGvyMCQWGXWN1Jw5J66YcMH/NGhBXvUA7pjA+7X1rlSh4FaZdFkko8DK42yTT5zF3mDlSJH2DUdgCcKU8hCkTFkwnllztiV6GCGfgdoyuikCZT838VpXMCg/CFm7gpysw2ktWFKp0ZMl15+uCzB1coQUQElHgc4IMhp31hU0xGedEa7NLxL14Vk+mHRMiJflsEFfymbP9vAIT0LyeRzzRTj4qrMXJ+ytgTe1pN6smU2npZxLQkQ+dS66uhrHHVoF/Ya/8cf9tJkcfAwJ1eaBEF2fzZEM2/2isLm/W9fdd1MSNbYCNcoYI0h+HPGk2D9eA53nR1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB8228.namprd11.prod.outlook.com (2603:10b6:8:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 17:58:08 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 17:58:08 +0000
Date: Wed, 22 Oct 2025 10:58:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH v2 07/32] drm/i915/xe3p_lpd: Support UINT16 formats
Message-ID: <20251022175805.GI1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-7-10eae6d655b8@intel.com>
 <aPjN6jrrJsMcD0h-@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aPjN6jrrJsMcD0h-@intel.com>
X-ClientProxiedBy: BY3PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:217::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB8228:EE_
X-MS-Office365-Filtering-Correlation-Id: 58f14a2e-baca-41d1-91e2-08de11948ee4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Uw6lULXJAv8St/DryLMl+hevUNTgHZ8mTFMYIWgP01VpBoq9Sq3vrARnZW?=
 =?iso-8859-1?Q?10rDTbo3ffDrmKmyqoa4jysn2KclcxpbUPNkVKpfsF/BbpKfWVbBDxMU/a?=
 =?iso-8859-1?Q?+SYEv4ZYFylqGQhZ4jmJ7Rk7gafsRyWrZaWbA0JmeC03k3GQrVM8+RLifZ?=
 =?iso-8859-1?Q?jsZggWA7SKQ+41Gmw7xNt8ki8oMeZnVeJYzYNvCsEHc3esstHIguC0RIgt?=
 =?iso-8859-1?Q?qCp0XmCwOyl10SJYL78bHrTB0nVu9e32DVEL6XqAbHpSNoisnBbJJGlOR/?=
 =?iso-8859-1?Q?EVvmF6T5YoqajH8Oh/jWJ8cwE+cnJ1Y4og2Hf73C0wGKzLJXQOsFju4xNe?=
 =?iso-8859-1?Q?kCtY0GixQYzyGx+Qc0zjTqHxXbEYTRAT3p0PTIZ/p0WREj0zqWdVenxkZ7?=
 =?iso-8859-1?Q?LvFgsKC2BL333d6K6YF8ht4EuOC1XBURdS47OF8ALOYbHLem08tgCuekW/?=
 =?iso-8859-1?Q?HMTRrC5pWuXqGgGX7GAE8lr0vItt1MUL68fW4kS8HGm0frAiAoO9VTcMto?=
 =?iso-8859-1?Q?VChemPqzTLFidbgDGhZbD7DvDU+y5h3Tcu/Hkcv5AyrNtsgfhP8j0FUYxw?=
 =?iso-8859-1?Q?sR+LuIv3UyQlrQxyLnVhQ138Fty3BTDIsohIVAb96F1VtN67hAmLQN9g0J?=
 =?iso-8859-1?Q?07zZxDRFsZLDq5emLYI3KYcsO6lgxKfwCybxohQ/RJj8lywkkCrkhx5OrN?=
 =?iso-8859-1?Q?F1rg51RXK0azpBZUVv3agf/yxa/lmC4EmiRsKRqeeT7w9mCskG5x80qJfa?=
 =?iso-8859-1?Q?Uxj9CFML3klhKglyxCHNCkqlVJAmtLS5zDFp6JN04Aid5iWXsKqFgJYSF0?=
 =?iso-8859-1?Q?Dw1ZXMHQqBE+bF1qoEZPgKr9zGZrRu4a36T0MqxIBqxWtpNpm9xJbrzeoM?=
 =?iso-8859-1?Q?naOygVOKZhOdbUsG36zOYiPS5PV/cUdzm4UZlrdhwoPghQAoL8TugRvIsB?=
 =?iso-8859-1?Q?R0Yx4yG8ily2SNnJ0UXTa00yPVUoxw6+2NvO5ayecOMHwjtMpnknEry/OU?=
 =?iso-8859-1?Q?LTuxaglNKpkfYdLup/gRg7L6/9ATYBITn/qVHqwbNmCbeskW+VSLmsyfMe?=
 =?iso-8859-1?Q?bJ0vVYwL1YWxCm3n47Idk6auwXAv5pkThiZykKGyn6/7spxNjlSseoyTEb?=
 =?iso-8859-1?Q?w7OJnrCnON5OjMJBK3txhmcb8WDLWApsC3Yw9lMkHFjUlLmmr+oXcSIWdc?=
 =?iso-8859-1?Q?U0NNGL1+0GlVT9QRz60Bt+pFmC52L1We872V5WwdlNvuxY3B3z5nmnJodU?=
 =?iso-8859-1?Q?CFTh5JCPZwbQ/kua7nuqnGDBgnIqnmtZLtgnz2Fg/sFA3NC1YG9YuYDVTg?=
 =?iso-8859-1?Q?KXpF158X6s26a2rDzPXIuJAGZkRZ4iugDGebP57/hdQMH7um61AUMSIcSU?=
 =?iso-8859-1?Q?G2XqoG1ulrXbrhrU2I101TQ/jPXGhUTHIXwpQnAMRb9k8vuUfDMnyNucmR?=
 =?iso-8859-1?Q?gdWP5X5xbvPnoxERGUUxwcriLixQ6pTByNPpIroN6R9lb45tyMPzS/bXsA?=
 =?iso-8859-1?Q?c8RSUG8uZduIPSVwm3M2wKzwvh2K2B2FJLr6RF7h5DQA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nS0VtG60aowqmfvzLNPGHMCcW4SgqH+7Ypp+9uu8vKa135kZpBYnwDL4LX?=
 =?iso-8859-1?Q?K0et9VF2LYM6DDH4RUnUo5Q06s3DgsYwpDz8oka3M6A8yhXsQSaEMD5NSk?=
 =?iso-8859-1?Q?o/dK2BI6GuIXBVvpt9H+is/e8eYXW/GoC1YJebvdbQuga1IkH1PTX+QoJg?=
 =?iso-8859-1?Q?X+QiS742mu+ajVS64jgvlXG1vcOpwCSsC20Yey9J79IIGDDIzjRVmzeqv3?=
 =?iso-8859-1?Q?B0qQXVV4eGi/n0oe7DHjwxgfiwPLr8Y/AC8n5QEemLZTBbg0+YK952KFeZ?=
 =?iso-8859-1?Q?aHKzcnnYp0c9p1Y0sEgYu4hfwNv+FgnSlnlDJ037vGyw2CPtsTPiwn2XRW?=
 =?iso-8859-1?Q?I0w8TlDIN75CBAIl5hWaIYrhRQeDpwrH5npX4YRNc4ZkMOglSD+s0tbAzT?=
 =?iso-8859-1?Q?JwZc6sWHPsolQIceARLziex5k4z4xIb+gqn+mswnquvep8iHyXoOjMsAvq?=
 =?iso-8859-1?Q?MGWQ9lANop0fHeQSH85N3cH1Rao1Txtpx0xnD5Fd33NzoZDtLBZdv+0esp?=
 =?iso-8859-1?Q?UhF7YpLzd1uz2TeahbzdcjpRWtN6PWteodGtnrunlzv2kB2I2bJi5i6gVD?=
 =?iso-8859-1?Q?d5j8Swrb0LbcV7dvPYAyt3JfOyhP51SV8STAqQt1u7+Wb07bXSJ5q/JJEF?=
 =?iso-8859-1?Q?M4NfMNi+X5Kd6LgcfYRzmgq9wP9AbemJf/iaQq7/ax+3kU17NewKmXciIo?=
 =?iso-8859-1?Q?W/8PXRxr6+jY4mbiiFkfQNYGPvIwhkcF5jcc40nzBxnpReYX0WZgH24vsU?=
 =?iso-8859-1?Q?puajPYOVBsVkmpVnZotp6ehB3xtJSg7rixlSZkgK+36mIKOCJqKLumorqQ?=
 =?iso-8859-1?Q?kaowPK+SFIEkC4YqDN6dAqkYNT7tfxxoDolQeXmdDGrIOuWijEbUw/GlOa?=
 =?iso-8859-1?Q?pz96fyTNEpbD5HPEzsaQxyjV/m6emeZAiMS0QhbLvC/zVeRS+L0/aksgbe?=
 =?iso-8859-1?Q?zKxpMYuk8F+lVETWY1hQ9Ba9F9EtSBCkl9S75+6fNksAY4uuQzFRFkboPE?=
 =?iso-8859-1?Q?ezEYU2OksMCUVKEySqFT3nrpJ9cb+EVCX4avkSScU03iVNhWbXr1Sp/VU5?=
 =?iso-8859-1?Q?DGrwiqlo8wjTQOi2WHcUYiZk7TNWNoBrvDqiasFYQMp8ScI17K54AFm863?=
 =?iso-8859-1?Q?o+FYOaYR97U+LGmaqvFallds76Ecyo0NNtVapZNBzUjnvCvY9W353VE9FT?=
 =?iso-8859-1?Q?ohi0qZs0ya/dh5mX2l2rc7YhMPVLXaSX5gG8nz4raPAz9xnoWQQupZhggh?=
 =?iso-8859-1?Q?YmDfXpLp6M+7cAE2Oz5TJSHAAOaXYdydEXD2ZghiNqFbmbhVDfgYHWbCqO?=
 =?iso-8859-1?Q?xA5ube4TIghjmr9+MFX78azv/vMuRi52ckEO/Hs5gZqcW5CKHcAZKiIQ7C?=
 =?iso-8859-1?Q?z2Ab3GgY5kgu5h78C6YoWhVwfEdLNKrDYvQwqpBqesoHoT1LKH+E3fzcil?=
 =?iso-8859-1?Q?I4nByeIwa6OK1rE252+UDFHBt8hRoTYE/IKntTP0xakQ2CNSXPzIo5Spy3?=
 =?iso-8859-1?Q?lNrwItFdcykJfNM90ZyU7mdAxwCEHg3scbBJSpg7dQDvNhwfcENHYaYh/k?=
 =?iso-8859-1?Q?ckqnGvBoE9v4CcnIfVi6tr9hg9QzCx3fEZTHPqFZF65PZNytm8v6lQ+ztU?=
 =?iso-8859-1?Q?rHoEh0lrnEl7YYcIaVkyl69mbbpcYr6hcfl6saAWQYjljzKdLzenIURg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58f14a2e-baca-41d1-91e2-08de11948ee4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2025 17:58:08.5306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZdEYbapmnxldpF5jjg9AGnepPaktibmqdds/3RcwmR02UzHIr4RUVSMz3ungwHJ5xMLZSUsFBZ+Kx9tvVyBjohqGor4BAf94XCaRtpS8veg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8228
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

On Wed, Oct 22, 2025 at 03:28:26PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 21, 2025 at 09:28:32PM -0300, Gustavo Sousa wrote:
> > From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > 
> > Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
> > its corresponding PLANE_CTL bit and add the format in the necessary
> > functions.
> 
> Those have been supported by the hardware for a lot longer
> than that.

Agreed.  General support was added back in ICL (bspec 7656), although it
appears that it was unofficial and not productized or fully
hardware-validated.  It appears that support has remained unofficial
even up through these current platforms.  So I'm not sure we really want
to enable this if we don't have a specific use case asking for it; it
will _probably_ work, but there may be corner cases that have problems
because it wasn't intended for real use.

The only thing that seems to have changed is that UINT16 formats got
added to the list of formats that FBC can handle as part of the same
change that added the FP16 formats to that list.


Matt

> 
> I have an old branch that adds them here:
> https://github.com/vsyrjala/linux.git uint16
> but I never landed that.
> 
> > 
> > v2:
> >   - Add reference to Bspec 68911. (Matt Atwood)
> > 
> > Bspec: 68904, 69853, 68911
> > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++++-------
> >  .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
> >  2 files changed, 68 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 0319174adf95..530adff81b99 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] = {
> >  	DRM_FORMAT_XVYU2101010,
> >  };
> >  
> > +#define ICL_HDR_PLANE_FORMATS		\
> > +	DRM_FORMAT_C8,			\
> > +	DRM_FORMAT_RGB565,		\
> > +	DRM_FORMAT_XRGB8888,		\
> > +	DRM_FORMAT_XBGR8888,		\
> > +	DRM_FORMAT_ARGB8888,		\
> > +	DRM_FORMAT_ABGR8888,		\
> > +	DRM_FORMAT_XRGB2101010,		\
> > +	DRM_FORMAT_XBGR2101010,		\
> > +	DRM_FORMAT_ARGB2101010,		\
> > +	DRM_FORMAT_ABGR2101010,		\
> > +	DRM_FORMAT_XRGB16161616F,	\
> > +	DRM_FORMAT_XBGR16161616F,	\
> > +	DRM_FORMAT_ARGB16161616F,	\
> > +	DRM_FORMAT_ABGR16161616F,	\
> > +	DRM_FORMAT_YUYV,		\
> > +	DRM_FORMAT_YVYU,		\
> > +	DRM_FORMAT_UYVY,		\
> > +	DRM_FORMAT_VYUY,		\
> > +	DRM_FORMAT_NV12,		\
> > +	DRM_FORMAT_P010,		\
> > +	DRM_FORMAT_P012,		\
> > +	DRM_FORMAT_P016,		\
> > +	DRM_FORMAT_Y210,		\
> > +	DRM_FORMAT_Y212,		\
> > +	DRM_FORMAT_Y216,		\
> > +	DRM_FORMAT_XYUV8888,		\
> > +	DRM_FORMAT_XVYU2101010,		\
> > +	DRM_FORMAT_XVYU12_16161616,	\
> > +	DRM_FORMAT_XVYU16161616
> > +
> >  static const u32 icl_hdr_plane_formats[] = {
> > -	DRM_FORMAT_C8,
> > -	DRM_FORMAT_RGB565,
> > -	DRM_FORMAT_XRGB8888,
> > -	DRM_FORMAT_XBGR8888,
> > -	DRM_FORMAT_ARGB8888,
> > -	DRM_FORMAT_ABGR8888,
> > -	DRM_FORMAT_XRGB2101010,
> > -	DRM_FORMAT_XBGR2101010,
> > -	DRM_FORMAT_ARGB2101010,
> > -	DRM_FORMAT_ABGR2101010,
> > -	DRM_FORMAT_XRGB16161616F,
> > -	DRM_FORMAT_XBGR16161616F,
> > -	DRM_FORMAT_ARGB16161616F,
> > -	DRM_FORMAT_ABGR16161616F,
> > -	DRM_FORMAT_YUYV,
> > -	DRM_FORMAT_YVYU,
> > -	DRM_FORMAT_UYVY,
> > -	DRM_FORMAT_VYUY,
> > -	DRM_FORMAT_NV12,
> > -	DRM_FORMAT_P010,
> > -	DRM_FORMAT_P012,
> > -	DRM_FORMAT_P016,
> > -	DRM_FORMAT_Y210,
> > -	DRM_FORMAT_Y212,
> > -	DRM_FORMAT_Y216,
> > -	DRM_FORMAT_XYUV8888,
> > -	DRM_FORMAT_XVYU2101010,
> > -	DRM_FORMAT_XVYU12_16161616,
> > -	DRM_FORMAT_XVYU16161616,
> > +	ICL_HDR_PLANE_FORMATS,
> > +};
> > +
> > +static const u32 xe3p_lpd_hdr_plane_formats[] = {
> > +	ICL_HDR_PLANE_FORMATS,
> > +	DRM_FORMAT_XRGB16161616,
> > +	DRM_FORMAT_XBGR16161616,
> > +	DRM_FORMAT_ARGB16161616,
> > +	DRM_FORMAT_ABGR16161616,
> >  };
> >  
> >  int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> > @@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
> >  			else
> >  				return DRM_FORMAT_XRGB2101010;
> >  		}
> > +	case PLANE_CTL_FORMAT_XRGB_16161616:
> > +		if (rgb_order) {
> > +			if (alpha)
> > +				return DRM_FORMAT_ABGR16161616;
> > +			else
> > +				return DRM_FORMAT_XBGR16161616;
> > +		} else {
> > +			if (alpha)
> > +				return DRM_FORMAT_ARGB16161616;
> > +			else
> > +				return DRM_FORMAT_XRGB16161616;
> > +		}
> >  	case PLANE_CTL_FORMAT_XRGB_16161616F:
> >  		if (rgb_order) {
> >  			if (alpha)
> > @@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
> >  	case DRM_FORMAT_XRGB2101010:
> >  	case DRM_FORMAT_ARGB2101010:
> >  		return PLANE_CTL_FORMAT_XRGB_2101010;
> > +	case DRM_FORMAT_XBGR16161616:
> > +	case DRM_FORMAT_ABGR16161616:
> > +		return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORDER_RGBX;
> > +	case DRM_FORMAT_XRGB16161616:
> > +	case DRM_FORMAT_ARGB16161616:
> > +		return PLANE_CTL_FORMAT_XRGB_16161616;
> >  	case DRM_FORMAT_XBGR16161616F:
> >  	case DRM_FORMAT_ABGR16161616F:
> >  		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
> > @@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct intel_display *display,
> >  					int *num_formats)
> >  {
> >  	if (icl_is_hdr_plane(display, plane_id)) {
> > +		if (DISPLAY_VER(display) >= 35) {
> > +			*num_formats = ARRAY_SIZE(xe3p_lpd_hdr_plane_formats);
> > +			return xe3p_lpd_hdr_plane_formats;
> > +		}
> > +
> >  		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
> >  		return icl_hdr_plane_formats;
> >  	} else if (icl_is_nv12_y_plane(display, plane_id)) {
> > @@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_RGB565:
> >  	case DRM_FORMAT_XVYU2101010:
> >  	case DRM_FORMAT_C8:
> > +	case DRM_FORMAT_XBGR16161616:
> > +	case DRM_FORMAT_ABGR16161616:
> > +	case DRM_FORMAT_XRGB16161616:
> > +	case DRM_FORMAT_ARGB16161616:
> >  	case DRM_FORMAT_Y210:
> >  	case DRM_FORMAT_Y212:
> >  	case DRM_FORMAT_Y216:
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > index 479bb3f7f92b..84cf565bd653 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > @@ -64,6 +64,7 @@
> >  #define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
> >  #define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
> >  #define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
> > +#define   PLANE_CTL_FORMAT_XRGB_16161616	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 18)
> >  #define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
> >  #define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
> >  #define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)
> > 
> > -- 
> > 2.51.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
