Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0PbyLaAKOmrO0QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 06:25:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190D26B3FC7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 06:25:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bvekKqqK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8450F10E932;
	Tue, 23 Jun 2026 04:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A147F10E930;
 Tue, 23 Jun 2026 04:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782188700; x=1813724700;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G73AGWxRd0nhaScR9snb82KEmzaNzVQIw1sMuLGdgk8=;
 b=bvekKqqKXgFTccvqQiUjb2klZHhIdy02kpY9iXk0T2LVPgLR+G6lbWDE
 sQR44qZr+n8yQmfoq0L7bH1viDFVY21VVzqQw60vdTjy0yNy3JfTfv+vL
 88eX435Atwjbz5ddy81nSTe4Sm3eyVdMoN/JzGeeOmMwWBUKUQZjVnzJu
 saPcywuHqSPAiEgjmFnjrrxgA+A7yy8CeR+B3PgyISMz+L+Be+UcbmizV
 3gM8lpsjzy/cO+iNWZx0bR6ekF/ftAUULBa62VK9cuoEzNaw7Q7PpHK7p
 nuWijlNpsf1r9EJ0m0gdFBfIfpj8e6+96tx4vq7dSFyVvHs+nbxZDv4GA Q==;
X-CSE-ConnectionGUID: Iz8mL1YTQAmZWGMynxSFxw==
X-CSE-MsgGUID: DxJJ48ruSiCdDvT8tpZmdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="83015672"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="83015672"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 21:25:00 -0700
X-CSE-ConnectionGUID: id2xxpOaTACVqOPGyrSScw==
X-CSE-MsgGUID: lVu+mnt/QhGQtq/x8Uebjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="273464642"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 21:24:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 21:24:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 21:24:59 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 21:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uZywN9UsCYQcz1Vxlo7f4jk/fPhBDl4Xczgm55c30voh7foMKE9kU4Mp1+NdsY0tW+VjemeEo9YY8NtMH+Uoe5z5AdidljUyvSOhBmOZKVbDWAnwPBUjqeSIk/GfE1RpCwRMameFSRM48UEPtY13dpQFGyj+5AAmGJ09OGUtuAtFZnoBJ5NC9riyFVYZgAJLUyvljnthLLnI5WK2jqanc56CfkLygqztwRIXp2enfySt3bax8DmTXjC1kl6qVxczYihsTpJbfT37/tzWmV+LSOZA/DNBD0jxU2Rb+dT79wcE5BFRGZZA43+ia8Sp7zfJEo6oCWJmOP7C9g+jEucmMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BMNW/uoYHMjGKShLuvxMhz5YUtJK8FpXulnOmnTaLo=;
 b=HRfKjfpJxNkFf/rzVzrf+pQPRioz5YQre+RxE6TY0lrG+ptAvzMv6m9wl5l+HUYGgVzLfeCFY6ztx3MhmztaUEKNKxmIZtHturx72TwC1F8Y4aaDizIlPXbViwDtXmCT3KzIZP1phrMZMboOX8qBWgZ4VI/hcNW1xJgZmGhwbDQUe5KWJWtwDVNtVq0s56UuGH54wDoLwf+MxpgHen1qsrPn6mxtfCQZJh12/ZvQAXJgEu517qOwSP4sw9yd/nVr806Il7Np58bjdSWhwiF80S3UkNPrv+tcDluizlsFy7jxfzr4AxHwNQcpcVqQ+GF7vi/Re+/Ye/FTTKNNTrU1zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DS0PR11MB8083.namprd11.prod.outlook.com (2603:10b6:8:15e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 04:24:51 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 04:24:50 +0000
Message-ID: <2b61e031-c3e1-4489-99aa-3d992de35ba5@intel.com>
Date: Tue, 23 Jun 2026 09:54:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] drm/i915/panel: Split VRR vs. fixed refresh rate
 fixed mode selection into separate stages
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
 <20260622213602.7244-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260622213602.7244-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0030.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::14) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DS0PR11MB8083:EE_
X-MS-Office365-Filtering-Correlation-Id: cac1c0c5-64a9-4357-57a0-08ded0df5dc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: /sTsefOS8IJO2kr9816NSvUu9jUiQypjAHP5uefftvRA5mADbv1NgmHSC7MyMMKvDN8Pwt3OBMkEU8lGEyCZgUvAGvb6dOUulpLhjtI0AIxp03hwCLBELQITD+3AldiN08Kdc7gIr8Bi61MAaoKw04RpWparAzJYgicuYvQetwI8cIQu6iUkwKE2W5hcMfh91IN1Wt7n5Qy1v2GYGtfHz3l/W1ZP3hiWb14b36X5VXeLQBQkHQG54tk/CwyIgoRbpfXc4SVxi27ymhRIu16XMedC5LDFXf2IJhgpiCB7ClMWl8VriHVwOBQs6M8xN7J1SiCu6YAUYJgeGFdwQb35yEfg19N3ZGoMtK/ZPsjeGuHAxnIyf5mX80Yeq/Ee1Tg/dJJDlj3nYUY+WN9rFHScVZ2k/dOZ4EceVEboG2wpDkHkuQmayEbBYxGEXIor6A3f9BEgnOc5nHtQSUfUrxbi0JGq5fn0E5FubBckRdfJMFAm8MZ/FTIBVMBa+exSW0/4aUoNsfHyrKgBPifiXGfzgD0NZR/5UVzyqi4d9HAlXQhNPiVuZU8wElpK6/F1d/RAJaBTu98oU5yatodn3rUQun3UsoJnAE8WkYf0I5wSQNGGqashq3HqMcyv7vlXSIwnYxwMApPjSBOOCE/8ntGSjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckxoZHI5KytmK3BRSnJ5aVlZdC8xYnNRWlpTZHVGTXhtZmFOWGVPcWdoSEVh?=
 =?utf-8?B?SktQQ1U5bStaN3ZJc1BOZ3NZd2pGZTlNS0hxTGx5UlhwK3Zsc0RHVG9ja0Zk?=
 =?utf-8?B?amlETitSZlN1blhqSEVVYXhlQ0dqVS9mbGxhSVVqR2pkN1hPWlpWeW1ndkV4?=
 =?utf-8?B?eU1OMGl1SUdGcnFVdGNoazRZaHZzMWFtRi92WVlmeWlHUmVXb0JwL29qTXdj?=
 =?utf-8?B?NldyVzVlZlhlYlAybXlrTGlYQ1h5UHVxSWRFYjVXUkRYSkhvdzg3SS9TR2hP?=
 =?utf-8?B?bzg2VDhTc1p3NSsxRUYrRk9ZSE1xcllKdGM1OWhrc0x3MXFCV2lXY3BEV1pU?=
 =?utf-8?B?ZVN5OFNaR0VjaHJvcDM0QnRCZTVKamkwTzkrUFhGakllNUR5dUVlTW5xLzRi?=
 =?utf-8?B?elFsVmVaR0ZwUXAybTJaaytsWWhFbW1LK2EvQlNkWjZJRHJQSWUzVnpyd2p3?=
 =?utf-8?B?ZHFxVEtOeEpSUERqTXhpT1pmdUNjaWVoT1IyUFNPYjQxUjVLNkRHRW9kdStZ?=
 =?utf-8?B?QzFSWGcxM0F0VjUxelRndEV3K0Y3bHpzUkl4ZWxGNWtHdFI1SHo2cFNaV1NI?=
 =?utf-8?B?dEMyWXlRdURpNVl6dkpQMVNFVWtqYS9yVFhwbVpNa1lHMHJoUFBQYXVzbFRT?=
 =?utf-8?B?N1hKVTl1QzNDYmJoUURFTWhSR1dYSUFheGhuemFiMHhtWnpnTGZSTiswUDQv?=
 =?utf-8?B?UTVmQWpKZDc2b1FCV01WWEZuaHppWlU3REJtZEJ2Y3IyODRUOWlmMlM4cHpW?=
 =?utf-8?B?NVZUN1E5WUN4aDAvL2xENTF4NzVWckdhZVRsUU9VdFRUU1AxUElyMy9MbmVj?=
 =?utf-8?B?MmN3U0FXQ0t4Q3RLOFdyNmRlcFJtNjR2UThjRGhGeHhiVkJqOVlSZHRnbXpa?=
 =?utf-8?B?NmNjUFNITUlQNHgvbHVVRVVXMlBwcEFPczdIb1I1SEQvN2F1QXFETGd1VExX?=
 =?utf-8?B?d1RRMzZaRzVZbGx3RUtJUGpBVThJelBocFh5ejVDMjdYRVBCSVYrQ0xVZWVN?=
 =?utf-8?B?ckRYdEZUcndFSlYycXhqYlJGRS82akcrRXRWSkpBZzZrNUZpUkNacVgwQVA5?=
 =?utf-8?B?RkZzM0lsVVNuYkNXSlZUeGovSkZGU1cwRWhxWTVVSm5iNHhHeVN3NEhZVW5N?=
 =?utf-8?B?d3dxazk0Y2JjM01uMTZad2ZBL0F4ZUFIbzJDd0xUNHdMbXB4cFdqM0Q0QVhy?=
 =?utf-8?B?eGI1eVRubTdzUk5na3E3Z1FrWjJLa2Q2enRoTXZZVzFpZzFaVk9aT0JrR2xU?=
 =?utf-8?B?c2Z3VzRaSXNiVWVzeW1sU2hDZjZrS3JMaEs1aEZwU2pYNm9Uc3h4a09lUFFR?=
 =?utf-8?B?QUJ1RDZ6K0U1U0RYdHNySjhQbTA0bnNibDJNWGE5Z2JlZmFqeXRybHlzOGl2?=
 =?utf-8?B?YVFiaUNFRGp1UnZQRWsxWVFTNUxLbnlhejlrNU0zQ0YyT3RKVUNyK0lkNlpo?=
 =?utf-8?B?ZXllTlA3aE1tc3FHQnd3dmlWdFpFbnhRNjZ0SnVyUFV6c3VERFJXZkJMTmN5?=
 =?utf-8?B?anB3bzFjZjNqT213MUkwSEZDT1VtbzN3emRDcDVoRlNjNklTc2ZiU2FscjE3?=
 =?utf-8?B?SmsxTERYZHh6dEcyQU9PN1hYbmFsYUI1N3ZiYVFJbGJRUVFiZVpHU3hIdGth?=
 =?utf-8?B?dXBBM0NBbng3Z29SN0VwcGFhUllpeUgwSXhScGlOeHZLeU5qdmZ4M1RkdnMr?=
 =?utf-8?B?NUJtYWFFSy9GQjRxWjFnVjhhUWZzMEJFTURNaDUvTmFVU1FjUU5OcElySHlV?=
 =?utf-8?B?R2lBdDF0NThBb3o3YlNOejl2UVljVGRmRHZub2s2RWpDNWhDNjc2TkxmSGhQ?=
 =?utf-8?B?cGRqekg2VlFOZVYvdjFSMzZ0eXZhc0w3bURYNGw3c2ZXcnpFMmFVcGVMQktC?=
 =?utf-8?B?QjIxWG9MM0dwbjUvT2RJRW5Kb1RnM2U2NHQxQmlGVFd4Y01taWhncnIranZa?=
 =?utf-8?B?bldrVW4zMGJCcWQzNU83bnQwT2Jld2dwejNNYW5VOUhwa3Zrb1VLZUhrOS9v?=
 =?utf-8?B?N2REaTFvWEk4MHpvU3l5VjZkNzZZdzBvNlBIMGR5S1RIZDd2aFNiSzVOL2k1?=
 =?utf-8?B?dy9BbWhEcWRzb2tUNDBweGtYV0svMzVodGlaU05lTDhaT2Z1SWFRREpLWVpJ?=
 =?utf-8?B?T0tHL1F2QVpiWDdzUUlBc3FUdEh4ZUxVNjAxVktGZytIUkRUM3pkOXR4MjVX?=
 =?utf-8?B?U0NzZTBUT2Njek5sQmI4NjZ1NTdlNmJiS3VQRU5EQ01kbi9weTBtdCtHRXg4?=
 =?utf-8?B?QmpaY01XRWYrUWFWSlJrRXVLaFY2WmVWdU1YUE9nNnVTWWRQYWttTlZaUFlD?=
 =?utf-8?B?d1dLNzdWa3BZd0F0M08wQjlqd0J5ajhpeWlzRW5pbExKUkdUdytDMzR3VGsv?=
 =?utf-8?Q?BhEeFQ79kch6aJlE=3D?=
X-Exchange-RoutingPolicyChecked: kY4YRyH2XKM40Zc3DGStOwirsFVYsYp/e3NhGCRKJO0ZQkxmHPCZ0FE/Dal8hMDbyObb8A8G/aysdAf6/GUrSCDLwpv4HUn3H5mA8y1SM/mHPX06R78NDoJTxbsqOPjq0kRvcoIoYgBQr87v04OmgLTir4D5a0Tebaipdb3g5anIYyqsXEC1r6Kz4Ipgz/T/piQmwaJd6xGkdo7/FNqwQ4+kfv+dS/wJOxFfdTaswJA7B+LO/C8+ZwlEeqMsJ8Fq2Te/eZ5f9RJfpDVEzAk/le56AW/wtG7CGT1AxgDvKltE49eUDFfBmISmdNFbumxq6GA8gRL5IuAz6g2C4GGyGw==
X-MS-Exchange-CrossTenant-Network-Message-Id: cac1c0c5-64a9-4357-57a0-08ded0df5dc1
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 04:24:50.5986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4SBBLmlYN0qL3qe1/0GbDEjFDpjMW4HHS2DXdkM41KZtwJZ1ePWvHPo+HFWQUjpROOylWn1tuzEYJau//BopNWFNx2c4aISWdlXOQW6obf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8083
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 190D26B3FC7


On 6/23/2026 3:05 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Split the VRR vs. fixed refresh rate fixed mode selection into two
> completely separate stages. First try the VRR method, which will
> only accept fixed modes that are in the VRR range and whose refresh
> rate is equal or higher to the user's requested mode's refresh rate.
> If the VRR method doesn't find anything we fall back to the fixed
> refresh rate method of simply looking for the fixed mode with the
> closest refresh rate to the user's request.
>
> The main benefit is that we will only perform the VRR vtotal adjustment
> on fixed modes that have equal or higher refresh rate to the user's
> requested mode, thus we will never end up in a situation where we'd
> have to shrink the fixed mode's vtotal. This avoids any risk of ending
> up with a vtotal that is too short.
>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_panel.c | 123 ++++++++++++++-------
>   1 file changed, 84 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 81fb349ece5f..12a27edf8bc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -67,21 +67,43 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
>   	if (!best_mode)
>   		return true;
>   
> -	/*
> -	 * With VRR always pick a mode with equal/higher than requested
> -	 * vrefresh, which we can then reduce to match the requested
> -	 * vrefresh by extending the vblank length.
> -	 */
> -	if (intel_vrr_is_in_range(connector, vrefresh) &&
> -	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
> -	    fixed_mode_vrefresh < vrefresh)
> -		return false;
> -
>   	/* pick the fixed_mode that is closest in terms of vrefresh */
>   	return abs(fixed_mode_vrefresh - vrefresh) <
>   		abs(drm_mode_vrefresh(best_mode) - vrefresh);
>   }
>   
> +static const struct drm_display_mode *
> +intel_panel_fixed_mode_vrr(struct intel_connector *connector,
> +			   const struct drm_display_mode *mode)
> +{
> +	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
> +	int vrefresh = drm_mode_vrefresh(mode);
> +
> +	if (!intel_vrr_is_in_range(connector, vrefresh))
> +		return NULL;
> +
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> +		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
> +
> +		if (!intel_vrr_is_in_range(connector, fixed_mode_vrefresh))
> +			continue;
> +
> +		/*
> +		 * With VRR always pick a mode with equal/higher than requested
> +		 * vrefresh, which we can then reduce to match the requested
> +		 * vrefresh by extending the vblank length.
> +		 */
> +		if (fixed_mode_vrefresh < vrefresh)
> +			continue;
> +
> +		if (is_best_fixed_mode(connector, vrefresh,
> +				       fixed_mode_vrefresh, best_mode))
> +			best_mode = fixed_mode;
> +	}
> +
> +	return best_mode;
> +}
> +
>   const struct drm_display_mode *
>   intel_panel_fixed_mode(struct intel_connector *connector,
>   		       const struct drm_display_mode *mode)
> @@ -197,47 +219,23 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>   	return connector->panel.vbt.drrs_type;
>   }
>   
> -int intel_panel_compute_config(struct intel_connector *connector,
> -			       struct drm_display_mode *adjusted_mode)
> +static int intel_panel_compute_config_vrr(struct intel_connector *connector,
> +					  struct drm_display_mode *adjusted_mode)
>   {
>   	const struct drm_display_mode *fixed_mode =
>   		intel_panel_fixed_mode(connector, adjusted_mode);


This is not needed now, we are overwriting this anyways.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   	int vrefresh, fixed_mode_vrefresh;
> -	bool is_vrr;
>   
> +	fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode);
>   	if (!fixed_mode)
> -		return 0;
> +		return -EINVAL;
>   
>   	vrefresh = drm_mode_vrefresh(adjusted_mode);
>   	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
>   
> -	/*
> -	 * Assume that we shouldn't muck about with the
> -	 * timings if they don't land in the VRR range.
> -	 */
> -	is_vrr = intel_vrr_is_in_range(connector, vrefresh) &&
> -		intel_vrr_is_in_range(connector, fixed_mode_vrefresh);
> -
> -	if (!is_vrr) {
> -		/*
> -		 * We don't want to lie too much to the user about the refresh
> -		 * rate they're going to get. But we have to allow a bit of latitude
> -		 * for Xorg since it likes to automagically cook up modes with slightly
> -		 * off refresh rates.
> -		 */
> -		if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
> -			drm_dbg_kms(connector->base.dev,
> -				    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
> -				    connector->base.base.id, connector->base.name,
> -				    vrefresh, fixed_mode_vrefresh);
> -
> -			return -EINVAL;
> -		}
> -	}
> -
>   	drm_mode_copy(adjusted_mode, fixed_mode);
>   
> -	if (is_vrr && fixed_mode_vrefresh != vrefresh) {
> +	if (fixed_mode_vrefresh != vrefresh) {
>   		int vsync_start_offset = adjusted_mode->vtotal - adjusted_mode->vsync_start;
>   		int vsync_end_offset = adjusted_mode->vtotal - adjusted_mode->vsync_end;
>   
> @@ -254,6 +252,53 @@ int intel_panel_compute_config(struct intel_connector *connector,
>   	return 0;
>   }
>   
> +static int intel_panel_compute_config_fixed_rr(struct intel_connector *connector,
> +					       struct drm_display_mode *adjusted_mode)
> +{
> +	const struct drm_display_mode *fixed_mode;
> +	int vrefresh, fixed_mode_vrefresh;
> +
> +	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
> +	if (!fixed_mode)
> +		return 0;
> +
> +	vrefresh = drm_mode_vrefresh(adjusted_mode);
> +	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
> +
> +	/*
> +	 * We don't want to lie too much to the user about the refresh
> +	 * rate they're going to get. But we have to allow a bit of latitude
> +	 * for Xorg since it likes to automagically cook up modes with slightly
> +	 * off refresh rates.
> +	 */
> +	if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
> +		drm_dbg_kms(connector->base.dev,
> +			    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
> +			    connector->base.base.id, connector->base.name,
> +			    vrefresh, fixed_mode_vrefresh);
> +
> +		return -EINVAL;
> +	}
> +
> +	drm_mode_copy(adjusted_mode, fixed_mode);
> +
> +	drm_mode_set_crtcinfo(adjusted_mode, 0);
> +
> +	return 0;
> +}
> +
> +int intel_panel_compute_config(struct intel_connector *connector,
> +			       struct drm_display_mode *adjusted_mode)
> +{
> +	int ret;
> +
> +	ret = intel_panel_compute_config_vrr(connector, adjusted_mode);
> +	if (ret)
> +		ret = intel_panel_compute_config_fixed_rr(connector, adjusted_mode);
> +
> +	return ret;
> +}
> +
>   static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
