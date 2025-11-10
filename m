Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA66C45183
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 07:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587A010E1B5;
	Mon, 10 Nov 2025 06:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Og90uiWt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381A810E1B5;
 Mon, 10 Nov 2025 06:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762756601; x=1794292601;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=qezSCORmbiC5rXv+gbCe5ZXOWXQzkFZqBdggJ7Pdycs=;
 b=Og90uiWt/iObqh7FpwhI5IJuj5HkhVPJj0TfcUKPxo690hNhQ0O2Argc
 MXXC3bN+hwt0hiaSHcZMvdxHZ0lZLi+HK5beHain6EHncgegtVqDGTxY+
 QqhJZDZSaHcunqIqww0bNYV+SLnG7NkemVTSrOqEEzJ4jGZa1WMtjSS+y
 UdJeTQYh/zJqugiiFhlo72fYZxm9q1/SQW28cLsVvJXTW6yBh1zSXHxJF
 oZqgMRAUJYq4S3aCBO+7AXQPMBZx5tfmF/4Eq92dmDGncPPMG3FHCnwRU
 YzqIosr9lIVYglpjLQpPxW2s7nCQIF3OFcLLy+X/insdx2rnHYhgV69Mq g==;
X-CSE-ConnectionGUID: Mx6V1KkASYeXrtuOPxVIgg==
X-CSE-MsgGUID: 9vWIdY7RSw+bK4DK8GKL6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="64892009"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="64892009"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 22:36:41 -0800
X-CSE-ConnectionGUID: BH/xF+a/TcOeO6uLkSA/wA==
X-CSE-MsgGUID: yjpViIeYS/WebWe6dqai4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="211995137"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2025 22:36:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 22:36:40 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 9 Nov 2025 22:36:40 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 9 Nov 2025 22:36:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qiJKOwhG/IkRy1X8pBskUSgNrfrhg15itYBq3S/YzwbiXxtYDXYQlw2g1D3Efkq7sXQtRkjy3vFBch4sAdu+z88Z4CBaYUcbhbRyJLXUUwjFSpduVKLcIiO5Ac6kh7IBWaykLAWDU7LGD1GQxLyQuhxRzFeYXnFQJiDl+WZlqn4bOVoGt2AQ3yAknosfmKt3mLx7bxvsvqmrYvVevOoG7e98XUfgJx/g2vq+SQwTVRwrncKnu0TDl0kNgd/421hwjAVglvJogjWbpcVzQkQ82LLItGUyHAo75yb8R0sYmDGEsNv7V1EJiIi/cIzZ/c6M4TRRqud1HHs8WuQl3fQkGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hd0aPpOFuK4+5m7EPwKh2SG1DrX5aJvfgh0q6kkzMiw=;
 b=DRmhWVFfPmENCLMZMHBYwuseX+XH3ui0PhxSIcMCgPcaKkIvQN/dLiL2T3Ol6uFE5ly7752nKLiPJdS1oob+i/D/pHG1ge6+nGnDikBghRaLY1bnLByKZbPglOI4ltfmu8BlnBMhD5reP8wEeYvF+LG1MX92M3fJwg69RUWFB2fb9Q6iKL7Se9pQsgEa8nBnkicnvpJ73tiJzymfV54dtlYztS1xSVHC0qFhqdm+/1Pfb55i3RITUsOSlcq4+DsEbh6yzrDgtLJBwLbN8MDVqzFI6xum8MQ0J2bn5qUVDA4VXc4ceKJaFVvH+ZYIrX701cIKeMPkrm9yyrIBrXTOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM3PPF1A34EE115.namprd11.prod.outlook.com (2603:10b6:f:fc00::f0e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 06:36:38 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 06:36:38 +0000
Message-ID: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
Date: Mon, 10 Nov 2025 12:06:30 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: REGRESSION on linux-next (next-20251106)
Content-Language: en-GB
To: <jgg@nvidia.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lucas De
 Marchi" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <matthew.auld@intel.com>, <baolu.lu@linux.intel.com>, <iommu@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0094.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::17) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DM3PPF1A34EE115:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e037984-20e0-41ff-7a8f-08de20238032
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sm42WFFCQSt6MnZFeWVEelRMaWlYY0tacGdVU0hGY1Q0RDRta0xPZThGMzBH?=
 =?utf-8?B?NEg0SmppQ0FxZmovKzVGTHZUUGYwSVlmQ2ZoVHpLSmc4cS9PWDlmS1g2ZVdT?=
 =?utf-8?B?K280L1kwSGRZZG5oNzZyVDZHZUdGbXphUEhvOWtSVEk1cjhKTHhLemkrNklE?=
 =?utf-8?B?cVh0cjZtR09YTjNHVE9nUkN0YUtnN25CODl0T0xaa2t0WXVWTzY4NWp6Z1ZG?=
 =?utf-8?B?UXFLSDVEajdtU1Q5bHRISTdPSi96YzJTT2VnZEJtNHZBSGFlRFFTemkrSURw?=
 =?utf-8?B?NWlCMnNVZFlZV1B0Mk5Hc3pqYzBrSTFCVCtXNXQvV2hBK3pwRkhYVGM5T01z?=
 =?utf-8?B?anp0QW1CRlJRdmZVNDNoWk43cUdmSy9sUWhZK29TT291N0crTjJ6dDBKcEpl?=
 =?utf-8?B?S2dZTnV2amVML3ZxTnB1andKb3NVbUFXNzM5MTVvNFJieXBNSGwwQ1RxQkFr?=
 =?utf-8?B?ajNMVVpGZnpENHhIbVcrbXRLeWJNQlIrVmtSaGtReFF4U1h0c3lZaGFuNHh5?=
 =?utf-8?B?QnZGMFh4dGZ4K1orMGRUdDdQdzRVSHc1bUZRVUR0RzhLeVlJV3BFMlVFZDlV?=
 =?utf-8?B?c2ptb0F5cXc1ZmNVTFUrMmtjOG14RWFCTGpKN0JKdnEzSzk1aWwwYWltUExw?=
 =?utf-8?B?MzZVL040SGlIY202aXFtTGxkQXhzODdtbzFacmhBS01mZ2pNZGhRbFlTNis1?=
 =?utf-8?B?MFdJSTA0dmpORVZnT1JoemJXUHVkdklXbDczWW5VUU4zNHRiS294ZU0xU29U?=
 =?utf-8?B?bW04eTF3RDdqSTZCU2Vkb04rZDRFcTVJbEhid1JjeWJrRXo1V3N3ZitJWkIv?=
 =?utf-8?B?VVZ0THRpRml3UUpycEsyd2R2dFRjMGk1L3BqY3hFMURNSVdHTXJwTmNCbHd5?=
 =?utf-8?B?RzVyMXBrT2RRelRDVjRkUG1DZEtidElneXBiYTN0bXZZNHFYeTlHbUFFQTRR?=
 =?utf-8?B?TDgzN1BmYVZWc2dvRkJrSEZRYlZWTllyaG4vck1jaHdsMXgrTTlCVmRzUnMy?=
 =?utf-8?B?bnEyT2R4bTdqZk11aFhXQnhJWmpzMVJDT1BPUGlUczJIek5PSWZVWjl5VFd3?=
 =?utf-8?B?TE1hV3hRYnRMTWVPY1JhQll1dFJ3bDlGN09iTzlLclhyeDVvcHBlQkRqbGc2?=
 =?utf-8?B?ZG9TTzZIWFZueTI3SklCMVA5ZVQvdXg1M2pMbklXQlFLT2U1ME1vQTRPOGE4?=
 =?utf-8?B?Y01tT2F2OVZwTDV4TXIxWnRad25ORktaMG9NNnNMZlhkaVArRVNTSUhEU3d3?=
 =?utf-8?B?Yng0a2REMU9HU0tuMElrekVxZ2tnOGhMM091Uk5BL3I1YmswTG90SUhMUlEv?=
 =?utf-8?B?VmlpRFVWY2JKQTNReTVzMkwwbGJDU1JCSmFwTXZKR1ZseVFxTzEvdEMwTUxO?=
 =?utf-8?B?TVk5U25YNElhUmxiMTY0WnRWR2lkQXZ5THFkNWtibzhlSTFrYVNGQW9NMlYy?=
 =?utf-8?B?RHFyWkJwQVdIS3Y1eHpzSEJ0TjFDNi8xT1NySjJ2TzREUlgrY0MvamxScXln?=
 =?utf-8?B?NU5GV1RjQlBtL3lOK1FoWFFvUFR4NHJpWEF1SzQ0MFVGY3g5Vk4zeDlTek5G?=
 =?utf-8?B?UGFyTjI4SzZvL2F1YWlwaTNDa01ES1Z3ekZLRGZjV2dvQUorYVlocW44NWlu?=
 =?utf-8?B?OUtoR0tTVU44NS9IOE1qbk5sa0N1Mjk0U2tSTFQ0ZGVCQXFKMS9YaFZsdERN?=
 =?utf-8?B?OG12ZlFXaFpuRDlvSlhYUktuYjFDWGdLcEJWckhKamtvcTdwSnZZekx3OTlU?=
 =?utf-8?B?VWlqR1JKN2VYa0NpM1lJUGpkTFpjenQ2Rmd5WlNEVmdlSzUxajd6bU4xb253?=
 =?utf-8?B?eW5UUDJ6Wk1nODRaVHVCNFpJVFhlajVGd2Vrb3Q0K1pycDA5SjVKajlVVWtx?=
 =?utf-8?B?RS84UlFWbHNQSTFJTm5jcHVMV0l1Umd6TVBzUnhRd3pvblNtWWdCekpmOC96?=
 =?utf-8?B?S1NRU2w2WEh6VlVNd1JkbS9qN2wvNGpwM3lGcjlVbUh6SDBKSzJYaGE5V1BM?=
 =?utf-8?B?UkpvK0l4MVlRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTFjeWJjNjRCdEN6bjFUWGZFUnFsUzRSMUZqK0lhMFNhcVBLRVFqZ0MyVWoz?=
 =?utf-8?B?aXhvQ004MVh1S3NJcDJiaUZ0aXl3aEVyTzJ2RmFzMzN1WnVlY0RWUFV0Wjgz?=
 =?utf-8?B?Wkg4bGp1R3lrK3dxNFk3dWo3YWllL0czcVl6OUNtT0kvM3FEaU80Z2VMbWNw?=
 =?utf-8?B?QlN0SkVYRURoeERsQ2psMVBwL20wMkRVQzd2RGFtSEFzdFFQQ1k1Y1NKM09l?=
 =?utf-8?B?UTlyanp6U3ZrbUoxc2tWVktQSDRWSWNSYVRqZmRVWU1WcCtOY3dTWWQ5eHh5?=
 =?utf-8?B?UE83UTRySHVJOHBWL0dqOW1EWUgydDBuMjdrMWJ1SS9qaVFyODhyZGVvc1BJ?=
 =?utf-8?B?c0tIVGZtNGQ4QkUybkhmUFNrWXRVWWlvdmdBL1lFSVduMi9zVEhUQkdqZE0r?=
 =?utf-8?B?a2srY3YwaFV0eVRzaHB6YTBqOGhMSUVVQXNBSmU3RkdSNWYzbjVSVXp5a0xI?=
 =?utf-8?B?Qzh5QWN5dUpEYTE1UWRJYjFkdnFCZGlkc284VEJlLzFFY0E0ck54aTZtc0FI?=
 =?utf-8?B?eGZkVmQ5OUM1VFdhVWlhTWxOMEhEdmh5clNRWXFTclR3NEJmcVlKNXRhYkpO?=
 =?utf-8?B?VlZLRDNkM3V0Zk9sZm41VE9PdlY2cmcrTlNlRmJQd1FXQ0dNQUJaUmo1NWdu?=
 =?utf-8?B?L2lOajZ3ZkdRbE84YjY3NGd2TE9Qajd3ZHB4OVNyUWNNclVubk96YTRSTkpS?=
 =?utf-8?B?emE3QmdTbTlNODJVVXhYeU1SeGFmYVFyZktwb3ZlUFZQdlhjUkpTdGRxRG5k?=
 =?utf-8?B?TTB4M1B2ZElTWW9IckxnZkdYM3BhSG16Yld2Mlg0eEdzL202L0QyRDdCanM3?=
 =?utf-8?B?U04wRnpDYTN4enluUWhvVWg0QWFpTXkzd1hYeFJQbGV5bGVXOGN2WTJFaEpQ?=
 =?utf-8?B?L21Tb2NWbEV2OTcxbHVrMW0yUHlGMUNKWHg0KzJKSzIyRGdLTm9JdHhiNXhl?=
 =?utf-8?B?SmhjV0FvVDJNNm1Nb1B3QnUyOGFwc3lPbHlaR1Q1T3JMRGgzVS9HcFlMektR?=
 =?utf-8?B?ZitpODhJRkpUYXRwZVJGeG9sSmhpdWwxeWFpZHVRYU1JTEsxQmFaVUVqZHZn?=
 =?utf-8?B?SCtaRzlhQkxBSjJiajVabnltb2w4cmhGTWQ0TVowVEhyNDhPSGIzTEw0Y2hk?=
 =?utf-8?B?SVBBemFZbzUrTDdOcEk5bm40anliK2NKVmVvKzlNaWZrZmFBYTI0THBEK0ts?=
 =?utf-8?B?b1BEU1lJeXJTNUFHVWxmNlNQblljY1hoVEtGdU84aFRHckh2ek1WeXZZS0t3?=
 =?utf-8?B?WEFCWWRtaUliYmcrTm9ON1NvZ2lRQWFXV2NqR3ZHd0FTeW5IWEExekFuVDRh?=
 =?utf-8?B?bGJmU3Q4VytrTytsUXcra0d3YkNYTkg2TGNLRUptNmY0ZkdNWDhtRTBoVFd3?=
 =?utf-8?B?bW90RlZIVllVOVZzbk9vSUlMSUY5eDloS3ZQcmtDWEdyQXBtYTV0YnVXRW45?=
 =?utf-8?B?QVlSNldERHpjSzlrQUlKZkpXdHQ2UzVsVTZqbGxZWmhGT3p6N2IxSXB0dlh5?=
 =?utf-8?B?ai8rYUx6eFBqbk5xbGFWYVE2SG1VME5WKy9DMlhPYWxPc3VVUVUxZEtMYktM?=
 =?utf-8?B?Mzd0WW1OZTNHUVVxYnErQjdkdTZVK3JjQzdYM1Fmd3E3d0g1M0E2S25CR2ZG?=
 =?utf-8?B?SjFlY0lxSmQySFV3UFJTY0dKc3ZYS2FDSm84aXBBd0M4cWJyblBzdXJmbzRN?=
 =?utf-8?B?djB3RzF6RE1hS1ZxdUdRUjZyK0lJSGs5VUJ1aFFGbGVMc0RUbG5yYW00Nk1n?=
 =?utf-8?B?dE9ySVdlNEphdk84ZlY3bjlHOFoweDVmb0xXdEs3R2xTdmZjNU5hY0Q4WHFL?=
 =?utf-8?B?V0JDaG1meWdEbzVxa1B0UHNSaTc5cGJIUkxQUWhLYTQxWC9HZ0dKUFBnWURz?=
 =?utf-8?B?ZFF6YlQrbUY0RHpOckl2Szk3K0xCam5jdWUzZzYxMFp3NGRnVDU1L2ZrTnNS?=
 =?utf-8?B?Yk1JbW1jL0t5dEFRQTU4a1g2SEJRZGRFajg0ejUyWldjSDBtUUduR2E0UW51?=
 =?utf-8?B?VVpjTHVDVDlEQVdYeDltSWttMXVKZ2N4VXMra2F5RFFyZ3lOb1hSNHV0VGdX?=
 =?utf-8?B?dUl5bXFZSStoajRlWnc2M09JbW1lYk1LaTFWdGhaUE9CWkN1MjJzY29EeE9F?=
 =?utf-8?B?WDRsSnBrY2M1d1RMNXlMMlFBNm9TYnVqZGJCR0RuT1JZM3dlUTl6cHhyTHpX?=
 =?utf-8?Q?AokJIMu8drJaR33ALMt45fQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e037984-20e0-41ff-7a8f-08de20238032
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 06:36:38.2937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jnRkbY2aU+QnagH/CuSxuIlGt8JxpNf+E42K/olYzLGbvXSnpnaS0KKZgCtLyK/fj9SeboYKmegWTTv9CRMn9mEpsjyzAQjX/SQNH+fn00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1A34EE115
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

Hello Jason,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20251106 [2], we are seeing our tests timing out 
presumably caused by a GPU Hang.

`````````````````````````````````````````````````````````````````````````````````
<6> [490.872058] i915 0000:00:02.0: [drm] Got hung context on vcs0 with 
active request 939:2 [0x1004] not yet started
<6> [490.875244] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
<7> [496.424189] i915 0000:00:02.0: 
[drm:intel_guc_context_reset_process_msg [i915]] GT1: GUC: Got context 
reset notification: 0x1004 on vcs0, exiting = no, banned = no
<6> [496.921551] i915 0000:00:02.0: [drm] Got hung context on vcs0 with 
active request 939:2 [0x1004] not yet started
<6> [496.924799] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
<4> [499.946641] [IGT] Per-test timeout exceeded. Killing the current 
test with SIGQUIT.
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit d373449d8e97891434db0c64afca79d903c1194e
Author: Jason Gunthorpe jgg@nvidia.com
Date:   Thu Oct 23 15:22:36 2025 -0300

     iommu/vt-d: Use the generic iommu page table
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We could not revert the patch because of merge issues but resetting to 
the parent[5] of the commit seems to fix the issue.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251106
[3]
https://intel-gfx-ci.01.org/tree/linux-next/next-20251106/bat-arlh-2/dmesg0.txt
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251106&id=d373449d8e97891434db0c64afca79d903c1194e
[5] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20251106&id=ef7bfe5bbffdcfa033beeeb068c6317f71730679
