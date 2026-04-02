Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBDUKoQTzmmnkgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:58:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26580384D24
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D4010F118;
	Thu,  2 Apr 2026 06:58:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iYCk3eop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF04410F118
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2026 06:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775113090; x=1806649090;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l1tjKR6JdpkkF1N42ncolIywyutULUKj2Uk4/V9WJyU=;
 b=iYCk3eopEanwDxKoPxFSH9B1idpAQRhUn6dx/MBKn8NtWZN3B1uX5fW3
 qtuJ81+e3w09yvAHL49Ey1y0WJRSY7H2mVrdLZm9CqhnEx7UwEExM3E0W
 HylW6k2YzXrcyFWdcafmdP5sLdK8XjBa9vqh2Vh19xdQYBLBTnDvtp/HL
 VA8eXoTJE47Pv24MzYstdenxdl54feGQmY4xT+rm3j1z42gJoB3fVUQ0Z
 mcbhnyUU+/PcNI5inMsXBUjqAXr2ke6EwOT0JZ7Z2DlBtBZ30HiFKQS+N
 QGM/01C2+mEHH1yzBGhqU3kfZbxB9H7mqMhuf2RKLBTGe4bxZ2BdFa1Kh A==;
X-CSE-ConnectionGUID: om6gMF4tTT2hZgvTRIMXxA==
X-CSE-MsgGUID: Br/KbaiPQt2FF04oZXpq/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="93749021"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="93749021"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:58:09 -0700
X-CSE-ConnectionGUID: /fv6H+S3QweqKxjraiRocw==
X-CSE-MsgGUID: NDjNCWE2SfG/Y7f1lRs0yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="230963000"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:58:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:58:09 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 23:58:08 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:58:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=czFT17PdvwfEce8keC4eFF+btdBhtMKdj6mA4pwEeaVQayLEkFbPnoD4XpJH5s2wI0GuDGQDK1W3jZ83jFkdawp79sM1Nh9vGri/FVVZsUkMQ8EvMj8tUF5sEkrjST9QCg5XBO5gL2xv4fJlwyY+Tayjacb9QxBxi6kCCO+SjEJd7JiQoM91cRGtFGBZZXPxcCqgDj33mnSQTMj4fW+9erN4CspsjLWQg0AFkInmfm8I4lHI2/hdprrpeT4kOKSq9yzMJB4OPCT9hJDOWcudV5tppr5najWhpwsfdpHBZepxSUeKpNNyLCTfad7eu2abDLH/mVi/5+bwWhCafTzy3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iv3uJhzjO44pr8YVU43m/A5keMULol9BpQgvb0lVdwc=;
 b=Hj7t+knnbX4YiG+FJwqMTOyrmEE+uhDnck2X+eE2nVybe02gcgC7C4tHE3VBnpIzG/llrKXwOGU+0cwGv9l/7yyckDYN2+tSgikAXNZTyKwy500Konryu676lS+DCB4yN7qMED9ag9U8bu9ctv+veG23C1YRIsgyhcisNHJkVMIhbhsw6DUx+yU8nf0i/GsOUHO4X4cK/ObAoO5Kng6xBfAR+3c9hViUb/soxMEOw/5x8FXeYIkXpI/QxsxS8mruR9isg2EAWt6kFMNzr/6Q5+OlgxJx+hjL0OiAeF/Gt2XtmukwInQmBkfbnO1XQ/b33nJZuT7s3ZNVxjKVYXtgBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA3PR11MB9373.namprd11.prod.outlook.com (2603:10b6:208:57f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.14; Thu, 2 Apr
 2026 06:58:01 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Thu, 2 Apr 2026
 06:58:00 +0000
Date: Thu, 2 Apr 2026 06:57:49 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v2 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <vnw7oq5hfhsgpba5pkweqib4onoi5q6tz2mwxdzkd3zlzgx52q@ngytd2sxplqb>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260330102916.1158786-1-krzysztof.karas@intel.com>
 <20260330102916.1158786-3-krzysztof.karas@intel.com>
 <ac1AoWPGSRDwEXOE@zenone.zhora.eu>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <ac1AoWPGSRDwEXOE@zenone.zhora.eu>
X-ClientProxiedBy: DU2PR04CA0005.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA3PR11MB9373:EE_
X-MS-Office365-Filtering-Correlation-Id: 3faf1b62-cdcf-480a-a707-08de90852cf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: qVTi09jx8VQd23mZn3C8bByA0Vi2WY86gh65HuA6VifvZKGlMMemjK95Efu4TaU4X5LcIQWYrDzr1vyRRLFSBBlZKCtpS8JXK/ekCXhMeJUrzgSF4TbpMM5vu7ikrm3f/erOKuwiGqYoeJ/eObcakUKIjp4HZCRR36K/Q11WV5Pu1lJHzYanqzXg2GGOq5iDqlkYyuUfw8xbp3Bwgya0gE7UsKS96CvBF422hd6Uz8azQD6oi7PuBAzleIf4FXe4zQbExv7ZbMranCmk7IOf6kQeblYnRJjK03mG4Q7TN9NWswBw/9EU01tm3/SFMivG89sJnF4cNwQWAT0YknvgQPDVPWci09pH/9+g2YZszHzDGbi8uKW+E5bpUo0efGy9GYcs+GpW6WeURJ3xAi2N6/+kOMjn5peE29KiPFhXMrm+su64zLJmBu9kDt0KUdZN9WPTEswo5FDOrvdHJgVb7Uxwk52USWPfmhp9a4ms9A8qmROjBKIlnBoFJau0ICFZZjyBeMR2f1j1KJ7gVxsz0/SKj1IdT1s52Lw8fKUx1Oty9pY9f2Fh0WWF6kDha8LEsriifQtuZFQHsbgc6joPXqnJEYp/pCdBksHG1KsPmHQbesrtse5y7FqYo5yMv9fpGSwfR38XBY8dY+yhYowuTa4jKMGpdY7AKryLNwol95vRLZTo8N6uxTZq1/6g+SN7PUgDfS9SjoNAQKx+PHYOoSdiTlxtKVjJdKe9mgTXqMw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVlSOGdMU25uejg5WWFpVTVkWjNFUERLUzVGQmo1QTludGk4SmJ1SlNxSVdS?=
 =?utf-8?B?djVFaDd4MWY3eHR5T3orRHB0WFdma1lMa1NmTjZTY2ZKNEVTVDkyMlB1R2ox?=
 =?utf-8?B?ZnIrdkR2eE5nd0FKNW5IaGg5eVo2ek9ZMjQ2STBTSlFzOTFQUFRWV29yOUZv?=
 =?utf-8?B?enRtb01XN05NMEJVS3J4QzdVM2JNZjcwd2tJcERZY3FwUmNqTUtVOTJDWFJN?=
 =?utf-8?B?UGlEZy9zTWdSZENtQW96YWlXVzQzVWRYdGU4M0p5TnE3d0svZEJVeUs2MzhT?=
 =?utf-8?B?Wi93R0t3Zlh3K0VWbXFTRTNqYUZidVM1bGNkZTBMdmZBOVArTzJwdm1tVzdx?=
 =?utf-8?B?OG5uUVVHaUJwSFdMUDZmZk5WSExjdmpmaFZUeHRxcEFnSkxBa3JWU1k2b08y?=
 =?utf-8?B?bXhTNklHTHI1ZktKbHlidnFSWjVkWDVhU05tMDFnRnZkN3VTNzlzYzY3VEJr?=
 =?utf-8?B?VnFBUWFJeVFJZnhOWnZSODZuL3ZnbjFvODJNYzNzQjhaU0pqVzBFWHExeTJW?=
 =?utf-8?B?bngrSk1ZZlBLU0Q0RkdybFE5d2FBTmRGZU1tekxNMVAwdzJKT1hMSWpnOGVy?=
 =?utf-8?B?ZytFZldNdjByellIOEZpWVIzQm9MM2F6RjlYOUxhUGd4aHhFWjVNdHBYV2Rx?=
 =?utf-8?B?aVdnZnNoNHpram5uaEJoVGJnRGxyYTN5UWhuUFFzY0p5Ymppb215T2tZeDF0?=
 =?utf-8?B?TEQwVG1QTnJaa3cycnd5SUIzTWMvNG1SdFAwcEJGZ2sxU1R2dkNYL2xCenJO?=
 =?utf-8?B?ZUpBWkt2YTlMblNvWDhxYVVVUHdtbDRHSEZBYnVNK0ZMU0hKZUlTQnJMTlFN?=
 =?utf-8?B?ZnRaWUNZTmtIRC9vMFFLTXg3M3dKY1FwOHhrMVJXNFFPN3RTZUppOUVkODR5?=
 =?utf-8?B?R3hwZVhIbytmWExmTE9iWkJvdkY0VndqRUM3MmhLcE0vY1NmV0p0WkRtYTQ5?=
 =?utf-8?B?T09NVU5CcCs1Z0NoVXZlcVVYN0xYWmN5M01QUzhGa2hvbE5VbWJQZ09vL1VF?=
 =?utf-8?B?Yll5aS9zN2owdW80THh6UFFPaHppbDRWUWF5ZUwyVEdaeEhscStLeXdaUHRa?=
 =?utf-8?B?eXVySlNwNkZmOCtEclZScjE3QjRMaHBiU2tEOXRHUEN0RGNPUU11WG5wTFVw?=
 =?utf-8?B?ZTczdlI0c0Y1eDIrTzA1RkJkYnRmSlloNEVnZWgxUnVXaGNUc0QrSTlkdEEv?=
 =?utf-8?B?V3dESGFuOHR5MXYvK2EwZGVOUkJiWmdZVDZjQUVrK0x6VkNjaFQraC9RQXNR?=
 =?utf-8?B?UFJsMTlJdG1xV2pGMzZka3VUQTRiMEdhOU41VEo2WjhsZUxsRHNWbHdyVmFX?=
 =?utf-8?B?MGFSeGxPaXRYUWo4T3FKSzVDUjRZN2xKK2xpYjVyZFlKVVM1L2FLR0M4STY4?=
 =?utf-8?B?TVlZZ2c5S281dElrY2RoMG9SUXV2S3RPeHBaMTdaaXlkRU9PWnduSTFXL2l4?=
 =?utf-8?B?QnZHcGdidGFqOXV3aDFSbU1GUjFpUGZpYk5USmRiandjUTR1bmQzVlVqQmcw?=
 =?utf-8?B?bWg0TWFwWTdkSUpEQUk5VVZ2TTJVSlhGcGNMTlhETkZnc2g2TkpxVFZ4OTdI?=
 =?utf-8?B?ekxFY2R3dUxsSHFwRWpOcHlPSVg4NzEwUGt5ZFV4ZGNxOHh6QXptYUpOU1F0?=
 =?utf-8?B?RDFPejZpektoQ2tMNGExeFVCZ2Q2dWNzTG1RU01rdHlhTFpCZTcrTm5YOG5W?=
 =?utf-8?B?aEowc2RabDMzV3ZDUXN0VW9pcjZ4d004MUlPZDV2OC9jemtLVlA3RHRoTFc5?=
 =?utf-8?B?RCtDai83UEF4RVlJMjNUUmlhcGZocWU5TzF0emRCQWMvMjdrTldlY2Z4dDNo?=
 =?utf-8?B?bVNhTTlNYk1Nc0EwRlNFSlpRQk5pQlI3MHZOaDZHQVdPMW9weDdSMXRhemFs?=
 =?utf-8?B?RHhLWHNEdWgyaG9CU3Z2MVdrT0JKd2d1RnFPeDBPOTVFV3plcHI1dlpyNGtJ?=
 =?utf-8?B?NWwwczcyS1k3WUhKSG5idkNFY0pCOXRQVm82dnZ2RGxCcmtDSUhLVkdod0JK?=
 =?utf-8?B?OTNsZGpRUmNCRnZaMmp2cTF0YlVyN0UwOEhZMERlTVhNa0dkb2ZXNS9Hd090?=
 =?utf-8?B?dVdZU0s5dHVSZGMwN0orS3pKL2J5RStyQUpOcU9WZ2x6a0FFNE1uT0lqOGVJ?=
 =?utf-8?B?azRGUHoxRFgreWZkR3dIQmovMXI1bGU2NjNCTVd0SU9uZk5hOXBDdjFCbTJi?=
 =?utf-8?B?M1BkUG40ZG1od1N6ZE1ZalNydk1ZYUZkMERGVEZoOTV5em1JNzhvWTBZb1FQ?=
 =?utf-8?B?NzBpYkF1Tm5rUERQblFIaXVpb293U2lNVEEwTWJjQ0RkOWs0VXhOZ3VlUVJL?=
 =?utf-8?B?UXdoeDljMGNiTVFYVjFWczNFL0NKenhwOW0yc2lwRUN6emdsK0x4YXZlaWVP?=
 =?utf-8?Q?7TCINcf2m7D94sds=3D?=
X-Exchange-RoutingPolicyChecked: FLssyzDoancYn2O0iAdaImzBT0tjiErjjvMqoD/zuzYywO46oMBwTQ6qun2UClgjqgW4Wrr+cTOnMA18PT2T/i39b4fP4zHkx99PxR9r+kdgCt7cPDqpjZ92pQhx6DRE4R+GdTsZDkju/VoEKhseW6EKJqPJIW54po5yV22ApYJtjYV1M9KGwRdDs9S3yXfQMbeOEHN5DKqHaDIIvn+PHZCRRCt2r2RLKED6fbZcqzT4DOVA3w7DW8xJ4SdY0KNXwwNPbKSUtvj+s83NxFuYEkiYt41VbwpUZ8BhfP4na6xM2fVjX1bfF7RfuUf9axuzB/SAcC5TG0QCRtAsrxUmHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3faf1b62-cdcf-480a-a707-08de90852cf1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 06:57:59.9811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HWPZPPeTmEgBGZYqlnriey0S1iBhFQc81JMzdPNl2Wxtj1urYcUchA4mYzLS/jjhb5cz9eGgjgUcmuEt4cW5H2dIUoLAMQ10qbZGSc0MEOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9373
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 26580384D24
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andi,

Thanks for review!
I agree with your suggestions, these seem like valid points
(especially leaking and double mmget, which I completely missed).

I'll prepare another version.

On 2026-04-01 at 18:24:17 +0200, Andi Shyti wrote:
> Hi Krzysztof,
> 
> ...
> 
> > @@ -201,6 +204,39 @@ static int __run_selftests(const char *name,
> >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> >  
> > +	/**
> > +	 * If the user passed a valid PID of a userspace task, then we may borrow
> > +	 * its address space to prepare a safe environment for the mmap selftests.
> > +	 */
> > +	if (!current->mm && u_pid_nr) {
> > +		struct pid *u_pid = find_get_pid(u_pid_nr);
> 
> here you are leaking u_pid.
> 
> > +		struct task_struct *task;
> > +
> > +		if (!u_pid) {
> > +			pr_warn("Could not find PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		task = get_pid_task(u_pid, PIDTYPE_PID);
> > +		if (!task) {
> > +			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		mm = get_task_mm(task);
> 
> here you are leaking mm.
> 
> > +		put_task_struct(task);
> > +		if (!mm) {
> > +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
> > +			goto run_tests;
> > +		}
> > +
> > +		if (mmget_not_zero(mm)) {
> 
> you have already acquired mm.
> 
> > +			kthread_use_mm(mm);
> > +			unuse_mm = true;
> > +		}
> 
> how do you know that current->mm points to this mm?
> 
> > +	}
> > +
> > +run_tests:
> >  	/* Tests are listed in order in i915_*_selftests.h */
> >  	for (; count--; st++) {
> >  		if (!st->enabled)
> > @@ -226,6 +262,11 @@ static int __run_selftests(const char *name,
> >  		 st->name, err))
> >  		err = -1;
> >  
> > +	if (unuse_mm) {
> 
> you actually don't need unuse_mm, you can check directly out of
> mm.
> 
> We are going towards the right direction.
> 
> Andi
> 
> > +		mmput_async(mm);
> > +		kthread_unuse_mm(mm);
> > +	}
> > +
> >  	return err;
> >  }
> >  
> > -- 
> > 2.43.0
> > 

-- 
Best Regards,
Krzysztof
