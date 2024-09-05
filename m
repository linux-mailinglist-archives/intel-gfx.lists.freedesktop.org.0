Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09A96DC0F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 16:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFEDC10E8D8;
	Thu,  5 Sep 2024 14:39:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8JAGlL4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F68510E8D8;
 Thu,  5 Sep 2024 14:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725547181; x=1757083181;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d6Pag8q60L6kD9K5rE2wAV60nT31DB76F7O31vtMSsM=;
 b=K8JAGlL44SgWb72mkVv8yzwEs8oV822LWXbA2aYQinB8jdwXJOKn+wrh
 9qHqvQ55MQcyobGXWwsqc4vK+tf2+qAlBetepoH/mpq0JArjUiFrOAJwk
 UjSKzCSLByCgmaEN9q4XdcXLiPZKYHFna/tCIGBj3tSS7t2HINGK2i+tr
 lWerMLpQQ8woM8sx8N+ACF9pYlqcRCFry5WduMbJS7vfHy+z5Q5DDEg74
 wSC8vps4FS4bUKqDBBV3aW0hq6HJ0gWCKGZktOymnCfuw2dIU3BI129sY
 DrKRQum+cyy9alswPUHWjKSEb0zO/1cDDw8uwpx0yuwYec7Oqw3/K76xX A==;
X-CSE-ConnectionGUID: b41KcaYaSoCQuPDVNkCWHg==
X-CSE-MsgGUID: 5sQ8mAA6RCmFhSfS9bIf9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24412410"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="24412410"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 07:38:38 -0700
X-CSE-ConnectionGUID: Fs39diCfRLK7MzEgfWxQXA==
X-CSE-MsgGUID: jCTHL+9fR56hif6IKtw73w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="69781287"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 07:38:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 07:38:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 07:38:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 07:38:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aI9XFMy2nzbeVEIkatrEuV6re4co0+PeImKEueB2hNbgcsxNw1QE70njT5tJX1WClk2Hao0Xp3RKj136GFnjZpYbXW+Yzt0FuNQCWjEOh1tPVY+fYlm57orFbu5N4f5+4gY8fd975tDhGQrJkq4s6DlcD8McCZI2Uq8G1glZnuc+iBQIyrrJiPjwmHxfo6mQEmwz9vaOgF0tvLWKpv/M17D60A5bTcFLFF8e2nnwai8EYXrHFnPMRxLM01wa5c+KDecJo9xdbW1agko1OXWALuZ/Le+F1aAgrzhrvr0Sgrze6KqQtsneyH8Io2MyC1FjVLhe3gcb6o3wVgOfzsUpYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cKOJlZPwSx1Y08LcnbvsLpwn+j255m/kvrH4vER0W9U=;
 b=q1baS86hyzPpTlnz4yudWlTLWGmKHh5/+sYb9N3W9ip1agcsGNuNrSLXa5fUH7OybEa6EOEyeWuqH+StlJVT947KLxInl/qGzR4E1rqmJUT3W9E2BzztTa18eagFkofx4s1rYqbQRjV/+YBnN0Bn/DNQSwwytsrom99cZu9mb5N1IP5wtwj/nQPfn8Yo9LEnFlCWLHxsHOI9fprdGNl+191cP8t1GTViGd5PohSBYR9ICzm93Py5S+LYHX7FW+TLQpXkBtkwrCWeYXlbaO8OamtgZ0cOnSvlV/Bcf2soafoP+Oo+ZyUT0I6j9yWFJiz6dkEq9KPBypObIKR+7udzvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6442.namprd11.prod.outlook.com (2603:10b6:208:3a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 14:38:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 14:38:29 +0000
Message-ID: <2c9bbf4d-6440-48a2-a43a-415e9e585428@intel.com>
Date: Thu, 5 Sep 2024 20:08:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/display: Add bits for link_n_exended for
 DISPLAY >= 14
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
 <20240905115505.3629087-2-ankit.k.nautiyal@intel.com>
 <87seuep750.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87seuep750.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6442:EE_
X-MS-Office365-Filtering-Correlation-Id: 4afd2cd9-e9f4-4f45-16bb-08dccdb868aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0ZZTEoxV0UxbjZOYkh0eGpweWthaUQ3ZlFUb2l3VVJ5dWxuQkFsYzJQcXo1?=
 =?utf-8?B?d0tJR2lJVE02cERuYjJObkwrTktQcHBiWHU0VnhpSTFzTDdxcjBDYngrUWZP?=
 =?utf-8?B?UlUyVFFMdXRDYnRHNU0veGFoSGFMVkREdFcxWjdEUVhVOXBEbGpFa0Vady9q?=
 =?utf-8?B?bEJISnUyeDRVcTdLdE5VbmIrckpMT1crT0pUTUova3VvcWhwaWVncWFGa3Q1?=
 =?utf-8?B?NXo3NUFveG5EK1RkdkFFcVphMHlCZXpTcVc4eUdHTHFlKy9DWWdUMFhCMVFs?=
 =?utf-8?B?UWFBT1ZFQjREVVpuMW4zSkZzellFVUE2V2RYRURxQ2xaVmJQbDBNL0N2eThR?=
 =?utf-8?B?TTl1NjV3cGlCVEVTUTBxVUlwajB5OFo3WXBJbFBZcW1QNUVVb0NpVDhxZWlH?=
 =?utf-8?B?UXZKZEVCb2pWdExzd2dUVXllY1JEWnZUOGw1YWtnenl3R2Jqa3MzN1U2SUdx?=
 =?utf-8?B?T0JERVJCUm8vdlJ4NVNQNDFEc1d0V0YxVnovM1czL0N3bzdGSDJwdGFLcSs5?=
 =?utf-8?B?RGU1a2hTd2xpaHZ2azdKYjVRZy8xRVBrK01CcVROd3ZFUUp3UExPZzB0L09m?=
 =?utf-8?B?RXc2QVJiQU9KZHRqRzhmbVFySm5rVS9GUFo1OFVMMHhPSmdEeGdEcm5PT3V5?=
 =?utf-8?B?RjhLL3U0RW1oazRyVVI4L1J6WlEyc1dsanZnTFp5TW0rVnd0ZDBjRmsvREY2?=
 =?utf-8?B?UGl3MXFFdlloSFdrSUc3cC8xRm1rd0M4dklITTZZT0tDR3dPS1FrU0lsOEpP?=
 =?utf-8?B?NG5JREhGM1B5MzFFaWU1NXo1RnFrU2QyQS9uUFZJaXlyMkFRQzV5WUxReXdV?=
 =?utf-8?B?Mk9maVU2QUk1ZDJhWnBzMzdPYWozZ0NpbklCOGFCMHpkTll4ZEI2R2JJenVP?=
 =?utf-8?B?MGdZWVVQcUFRdVZsMjJMb3BsekJWck50bERNc0NCMzNqbUlGTkI4R1ROYTdK?=
 =?utf-8?B?SE05UTc0TzRGRk5aV3FvRFBTNWtRcDBPcTNOalNYaytoNHlKdzJZaWJZeFZR?=
 =?utf-8?B?Wit3UEp5bFk2bnA3ZTRLWDZ5UnlWTXBjRW9waUcxZEQ3SldjOFhNWUxONWxw?=
 =?utf-8?B?WldWSndwcDlMOVZhV3RtbGZFYkU4SWpFb3QwTjRvM29NZGRxMUxEL2ttWHVa?=
 =?utf-8?B?dThIR1RqTVorUEV3a3ZNYlY1cU9hSlVqOCtoNFZ5S25NR3ZWeGEzbHFEdyti?=
 =?utf-8?B?emJwSXVyeExxbW1pYzZ2QnZFZG1LbTdPeDdhdE0vRGVlZm96NnI1VEo2c2Z5?=
 =?utf-8?B?SFUvWW1YSitWeDJBK0ZzbmNjcE0xNWx5V3BlcWZCOUlGand1QVpRMTZBMXVQ?=
 =?utf-8?B?NmFkMnFuQ09DczNKZHlRSi9YRWJIcUVnNzFzakZqcmRjbWJ3TUQxMHNLNW0x?=
 =?utf-8?B?MkRCSGI1Y1paWnVFblZhT3dXK1V1Zm9BbFFZZ1N3Ymx4SmRpQmZPTDRkbldt?=
 =?utf-8?B?WGF5NHFJd2NiclJkeHBpa21WdGVjVlFoQ2tPMzlDYXI5cmxZcHBUVXVlSi95?=
 =?utf-8?B?czc3Y2Fvc2dlVEl2UDJ6RUZvWURhdXd2OElaRWZhTnlMOVZoeEhmc3hBczIy?=
 =?utf-8?B?VmVCeHlXbU8vUVZOeGRjazRBbkp2bW9RSEFPNitnTUswV0JVaWJCaDViQVdV?=
 =?utf-8?B?eWgvZHlPZVEzbnNyQ2crV3dqSGZCc2JERVlqR0w1dEtBMVNxNjRoNTIvdlJ3?=
 =?utf-8?B?YUVHK0hQR0ttMUdSWFhGRFYvOVN2NW05SEhPRHd1VThKbTFoc2xFeGFySVRR?=
 =?utf-8?B?MUVBTDlSd2lnbEdDbWs2Sk1qNWhBVVovZWw3Z3Z0MUFYMERLRiszVlZTV0Qr?=
 =?utf-8?B?ZWdQM25iQkMzVWhSQjFvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnVld0psSjAyK3RkMkNWUFo1eDNqU0dHdHR6L25taUdDRFhkM1piVmp2d2lZ?=
 =?utf-8?B?Y1ltZXUvdzI0aFZobW5kMTVBMGpxN1dOWmZLSHZ4ZVVRYk82Z3grRlFSeFFM?=
 =?utf-8?B?TzIraWZpbnUxaXA0bnhNV2NDNnNUbmV6dGN6V29PTFNFV2NGb2RuNjhKUHVP?=
 =?utf-8?B?R2YxUGxnai9Ra3J2Q1IzeWE0emZmdnNISHB0S1dXN0Zob1NYUEtDOEU0UFp6?=
 =?utf-8?B?a3ZEWmlieHF4clJvOGZaSDZBMlFLT1dNeFk5ZURidU5OcHlNcTc5ZEJ6QU1z?=
 =?utf-8?B?ODAvMk14ZHg4MGliUVdXanNoRDQxVDVFUkt4eGdrSnFxU0o4TEtmWlc0aWFJ?=
 =?utf-8?B?OEs0aG8xeUxuTUI2ZEljRTN1L1VjYm15eDh5VXMxeEhVdUlicE1IUy83a0Nz?=
 =?utf-8?B?ZC9nQ2FKTXU4Z3AwemlRdHdkTkJkMU1MZWg4bS84ZXV4bXF2QmtFRUpvMmZ3?=
 =?utf-8?B?V1JSZUxVak9rTUtZMFBjY0Zia3BGRHdQcUN0OHViMFBCaHpBQWE2UGNBbndS?=
 =?utf-8?B?TGZNTXpTaTE5a0cwdFo1aEpNczZKbEhZbjUrMnBHb2VTa3VGTDRHb2ZYK3gw?=
 =?utf-8?B?ait2dDBFdVN3Vm1vaEJ0dWIzVlBkN2J0ODhhNjF2UWQ2S2RIYlc1eWwwVjRI?=
 =?utf-8?B?dVh2UDc2VkNRY0lkbkZHZ1VHZXMzS0dqTS9vUVZEWHNZdVpjSjNhSXd4cjZl?=
 =?utf-8?B?MitObWVncjdRUTNNK0JkU2RYRkNXN016THpyRFdVWTBEekY2cDgyT2JodXc0?=
 =?utf-8?B?My9ka3krR1AxSDZIZW50clBPenVYeHFxQThqejVMTGJNNjBzTlhRWXYzZnpG?=
 =?utf-8?B?TWxaSG1wWE5nTkIxUmxZaDg3L1A4SXRTNVhzL3MxSno3TUZBM1J1V0QvdGVF?=
 =?utf-8?B?QS8vNFVPdUZTTk14UUdXL1RDbWxWSFRXR3Yzc21vUE5DS2E4WW9mWVF4cExH?=
 =?utf-8?B?L0ZJaktsZW5EV2RCT04yVGdMUDZUYWtRQ1FseVBaM0oxSURrdFJ3WWFPeGZm?=
 =?utf-8?B?aTBqYjFvRXA0clF6YWFtU2h5bnpnRnd2ckNlL1BvcTRSQlA3NUFuSVZvUlNJ?=
 =?utf-8?B?YmFlS0FaS0JpWVJGLzh0VFRLREdPU3JBQTBEVHFtOTBuSGQxbDIrS0hVTWcy?=
 =?utf-8?B?YXQ3RU4yUVh2L1MzZ3M0Z1VTT0JNdzBwbVBZOURDTkZCU2lJYUx4V3V3QVBX?=
 =?utf-8?B?UGxyczNIajRHOFY2Q3dLbGtQRlZPeVpQVlY3OVRwUkxoODgyUStMUmxxU1Q3?=
 =?utf-8?B?R3lpMXV6M1VaWlRKVmFIVzRhbVdsYmhXU0IzdFNXS2QzcmJhVjI2cnJRYXF4?=
 =?utf-8?B?LzI1UXlISVFESWpzdG1sb1gzT3VmWiszU2VtMG1zWWZHUkFlMU82UnRkbVZq?=
 =?utf-8?B?WEVKSWlHY3FzQktNN2xEaCtuMzRidVgwbzZxc0dwWjNRSjBNM0ZLcmlRWjlw?=
 =?utf-8?B?K29ydHp3cEFDSXRyM2k0cmI3VHpFb2FJbndTd0xDSnlXell3S1ZYZFd1K0NZ?=
 =?utf-8?B?bCtGcGVJWmJXVSt0dGtDdUZBSzVuTVJLMjRwZEtQb2hqM3pQVTA4ZkRyZkkx?=
 =?utf-8?B?L0trUWNnVEVpaVpuUmtPZXJ4d29JaGZjZlZtanZibnhzRW15WjlMNVZEYUlM?=
 =?utf-8?B?NWdUTVhiUXRVM1pEbnBtbEFuT1dJS2N1a0JtcllBdXprbnRGSThXS2lvTS9n?=
 =?utf-8?B?RFhkUlVPQVBxOWtXQ2N0TmlOVUxsN0t3aUoyOUp2aFd5eDFQa3R6c3hBbGUy?=
 =?utf-8?B?bjhDcStqSk1CeGlxTHRoUHh0VVFqQzFRU3VKUDFZeldkNDhoeU9YWkNraFY2?=
 =?utf-8?B?cjI1Sjc2Ykt4T3d0VVh3amg0UGhkUWtPSXdVVU5BdG1ZQzRSY2c2TkdzZSsx?=
 =?utf-8?B?QlhOU3Bpa29yNzlrMlhsL04vWitIbmJqTWZXS2d2V2tuNERZL04rRXF5SXFH?=
 =?utf-8?B?SCtwbDRFK00xM25zVG5hR1lOM2VJYUZBSXNVMEVSelFQV0tQTHlmTm93WVpV?=
 =?utf-8?B?SnZJblFKSlhxVEtyQWVTeGcxeVBpb1cxZXE3RVpDVWNwVUhWc1BFYlRnOTAy?=
 =?utf-8?B?L21oSGlIQlZSV0psV05SWmFvemNIa1FKaHBidDUzVURFQTNtdDc1WWNTeUN5?=
 =?utf-8?B?K3hVbTJKa2hjRXFQaUVhUWhCMVV3eE53bm9RVHBCYWUxKzVta3JyZ2RVYXFF?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4afd2cd9-e9f4-4f45-16bb-08dccdb868aa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 14:38:29.6869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tlV9Wqqos29Mbog4xkTrAzaTdAYn9aW577B754i7R/J44iVxeNibQ/kYoFVm0obXG+mYmXHsbeJJOfxkUsD7Ob/8v0eh8oCAUQkzSAs5Xeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
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


On 9/5/2024 6:52 PM, Jani Nikula wrote:
> On Thu, 05 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> LINK_N register has bits 31:24 for extended link N value used for
>> HDMI2.1 and for an alternate mode of operation of DP TG DDA
>> (Bspec:50488).
>>
>> Add support for these extra bits.
> Please throw away the link_n_ext member, and go from there. Most of the
> changes here are unnecessary.
>
> Mask N after reading and before writing to 24 bits on older platforms,
> don't mask on display >= 14.
>
> That's all there is to it.


Yeah, this would avoid all the hassle. Thanks for pointing this out!


Regards,

Ankit

>
>
> BR,
> Jani.
>
>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++++----
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/i915_reg.h               |  2 ++
>>   3 files changed, 28 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index b4ef4d59da1a..60cdd7a37b03 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2595,6 +2595,8 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
>>   	compute_m_n(&m_n->link_m, &m_n->link_n,
>>   		    pixel_clock, link_symbol_clock,
>>   		    0x80000);
>> +
>> +	m_n->link_n_ext = 0;
>>   }
>>   
>>   void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
>> @@ -2632,6 +2634,7 @@ void intel_set_m_n(struct drm_i915_private *i915,
>>   		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>> +	u8 link_n_ext = 0;
>>   	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>>   	intel_de_write(i915, data_n_reg, m_n->data_n);
>>   	intel_de_write(i915, link_m_reg, m_n->link_m);
>> @@ -2639,7 +2642,11 @@ void intel_set_m_n(struct drm_i915_private *i915,
>>   	 * On BDW+ writing LINK_N arms the double buffered update
>>   	 * of all the M/N registers, so it must be written last.
>>   	 */
>> -	intel_de_write(i915, link_n_reg, m_n->link_n);
>> +
>> +	if (DISPLAY_VER(i915) >= 14 && m_n->link_n_ext)
>> +		link_n_ext = PIPE_LINK_N1_EXTENDED(m_n->link_n_ext);
>> +
>> +	intel_de_write(i915, link_n_reg, m_n->link_n | link_n_ext);
>>   }
>>   
>>   bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
>> @@ -3346,8 +3353,17 @@ void intel_get_m_n(struct drm_i915_private *i915,
>>   		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>> +	u32 link_n;
>> +
>>   	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
>> -	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
>> +
>> +	link_n = intel_de_read(i915, link_n_reg);
>> +	m_n->link_n = link_n & DATA_LINK_M_N_MASK;
>> +	if (DISPLAY_VER(i915) >= 14)
>> +		m_n->link_n_ext = REG_FIELD_GET(PIPE_LINK_N1_EXTENDED_MASK, link_n);
>> +	else
>> +		m_n->link_n_ext = 0;
>> +
>>   	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
>> @@ -4843,7 +4859,8 @@ intel_compare_link_m_n(const struct intel_link_m_n *m_n,
>>   		m_n->data_m == m2_n2->data_m &&
>>   		m_n->data_n == m2_n2->data_n &&
>>   		m_n->link_m == m2_n2->link_m &&
>> -		m_n->link_n == m2_n2->link_n;
>> +		m_n->link_n == m2_n2->link_n &&
>> +		m_n->link_n_ext == m2_n2->link_n_ext;
>>   }
>>   
>>   static bool
>> @@ -5133,18 +5150,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	if (!intel_compare_link_m_n(&current_config->name, \
>>   				    &pipe_config->name)) { \
>>   		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>> -				     "(expected tu %i data %i/%i link %i/%i, " \
>> -				     "found tu %i, data %i/%i link %i/%i)", \
>> +				     "(expected tu %i data %i/%i link %i/%i link_n_ext %i, " \
>> +				     "found tu %i, data %i/%i link %i/%i link_n_ext %i)", \
>>   				     current_config->name.tu, \
>>   				     current_config->name.data_m, \
>>   				     current_config->name.data_n, \
>>   				     current_config->name.link_m, \
>>   				     current_config->name.link_n, \
>> +				     current_config->name.link_n_ext, \
>>   				     pipe_config->name.tu, \
>>   				     pipe_config->name.data_m, \
>>   				     pipe_config->name.data_n, \
>>   				     pipe_config->name.link_m, \
>> -				     pipe_config->name.link_n); \
>> +				     pipe_config->name.link_n, \
>> +				     pipe_config->name.link_n_ext); \
>>   		ret = false; \
>>   	} \
>>   } while (0)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index f29e5dc3db91..1328e2e89786 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1028,6 +1028,7 @@ struct intel_link_m_n {
>>   	u32 data_n;
>>   	u32 link_m;
>>   	u32 link_n;
>> +	u8 link_n_ext;
>>   };
>>   
>>   struct intel_csc_matrix {
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 41f4350a7c6c..941d273dbf8c 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2172,6 +2172,8 @@
>>   #define _PIPEB_DATA_N2		0x6103c
>>   #define _PIPEB_LINK_M1		0x61040
>>   #define _PIPEB_LINK_N1		0x61044
>> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
>> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>>   #define _PIPEB_LINK_M2		0x61048
>>   #define _PIPEB_LINK_N2		0x6104c
