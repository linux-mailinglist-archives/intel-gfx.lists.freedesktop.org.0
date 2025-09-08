Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973F9B48C10
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3893310E12F;
	Mon,  8 Sep 2025 11:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lDnXU2db";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A569510E12F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 11:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757330756; x=1788866756;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=o/oS3C5/4Z4OIOy6KSWlRPPHLgznHnwi7mH3MXLv9JU=;
 b=lDnXU2dbd0tY1SEnDZXrlnYn7oT8mInCjJ7eV1XDahV5uRYgDGfiSgMj
 yYk2MEWBfAwpgfxbMQi2upnLBUF+Dw74mmLYPFRpvK3h0wfZXqovpz/Ha
 K4DUuOX7fupOwxf4qLJ5U62mglIsU7UlOfkYj+IQrNDI+9BlBGdh5dbzD
 0VgZ9Kb8xPvr9QNNPbDZ2owhWDi7WmUY3dfSCPDJSezgMPmNiJHh2ccf4
 eySrsn1a+HgQK3vXrdfkdvl59ExLf09agLicuY1RSntkIAg5vZwpPChBP
 f5+hZwE6h3kGIGd37kM1LnogcS/pwnBiAUlrViKZHLRD50ceHKYQcbNQE w==;
X-CSE-ConnectionGUID: PWInHzE5SFi+AfBk1mHhUw==
X-CSE-MsgGUID: eB0+2aHDRliN4Ue3TmOwyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63411524"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63411524"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:25:56 -0700
X-CSE-ConnectionGUID: Qv8ggO2/RY+tHPwkxzvHSQ==
X-CSE-MsgGUID: Stlnb3Z7ShS8lYvnTaja5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172333665"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:25:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:25:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 04:25:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.76) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:25:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VuLuyKTgB85tiji+O5VSdoucStaeprv/qVXcn+JiV9leBggYYApEANBZ3B1OH1WjOrkQC4R3ofo8RCLW4M4+G9SzrnVArNLsR/UjsiUrjIRmFa7hTbNH/LMiWNcFy0C+chP1dpPQ1coxKnRLgkZ9PHgUbSAPYVa8gfFmPv2H+7e8UK2W/KYzX4hozZjtjO8k82ubkhALwq55ufqme0AOu98kHNnX9yecfnf/u8RWE1pOjK54zw6/EAkRWngi9VaJ2+yQdeOmXl8zvB4/AvpA3alUM5onm5T5T4U74OjV9PVgLgDHHewOUBphaheDBWKx4Xt6O9Gp2ZFV4HDpzi10mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4UgMLIjwwJJX0ckE8R3fTNmSLtRBVZZdL0YdEw9ksY=;
 b=b82jSNaEUp5SoKltI/fx1xtc3Dswos3zmozct7SBflperJiqRI/CSbxx8Fmu0EttU6PLGjx9Zaf962ZtFXG0yIu0A9NAhQh40Eul0kdzcxwagL69p6/Dx7gN5FxldP79SpjQNcOh4pVnOQo4EPVvwgyBy3y53x87BrcYkS0DDZsmjg87KuVhIIyLNwdpVfqQHlVLvpW/Tbe+Xo+5MDaghws0Zeqm5u3pZq0nwgrT5bSVWy1A4mhjgxJBcm+8hXkQ3bvdd4/VHmU1SPQk3AaoiqA0JGkB2dKkrIS74aa5ckNEjvaI9wWrA+heCvDknIgLkUXyEoz6BK/fFRlsjI38wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CY5PR11MB6283.namprd11.prod.outlook.com (2603:10b6:930:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 11:25:53 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 11:25:53 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 8 Sep 2025 11:25:47 +0000
Message-ID: <DCNDRCE1CJC3.1WB11BZ0Z6XSM@intel.com>
CC: Danilo Krummrich <dakr@redhat.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 4/6] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <f47461f76315069590390f3dd9fa115d293187a7.1756995162.git.krzysztof.karas@intel.com>
In-Reply-To: <f47461f76315069590390f3dd9fa115d293187a7.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TL2P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::12) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CY5PR11MB6283:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c60a6b7-ead4-477f-66b5-08ddeeca78aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjgxaHhZdWlyT0UyUXNyblZYT2lzKytpd0pUbFFnK0tUNWs1bjMwN3hiNEVv?=
 =?utf-8?B?UUhpNW5YYWwzdjJKdFRTVGpVc1hqbTd4eldpUVZpL0w5R0VOQUw0Qzl1QStm?=
 =?utf-8?B?VTNldk9paldCeVMwd1BsUkxDMGI4MGVOYWY1NjNaMlFscis5MDJ6eVVzTzU2?=
 =?utf-8?B?Zkd0bkdHK2xoTng0Vk11MW5xcU5pQlZaN0JvOXFkY2pQYWdEZUtQbTV6ZXZE?=
 =?utf-8?B?M0dzNFRLT2hqdU0zY1ZmSHVsWWhpbVdydFRyT1c2VFZyZVNxTmdEQ0VvM04w?=
 =?utf-8?B?NXhjRmlPMUJ2L0JKeWZNL0sxSjNHSmpkS3JGdXY2YW9nN3gyT3I4b2pFbktK?=
 =?utf-8?B?UUZUdGJwR0ZqSytLRFR2bGlWQUdZdUo0MnhLQ2QrQ3RDRDRLM3pEbFI1Mzdn?=
 =?utf-8?B?d3pSN0JNYTVGZjVxZ3ltSVJJd3RicG1TTGVRaDBwTEVFbGthZVhBbzcrMDJV?=
 =?utf-8?B?b1JXQVR6dlQzcy9vbTh5ejBSdy9XR0xEYnQ0elljUWdVL285QkdZaVRxTi9n?=
 =?utf-8?B?ZnMvYkYwc1BxMCtzdFQrYTNpelZwbEw1ZVRuQTFXOVI2UFJFejY1UFNFanZC?=
 =?utf-8?B?NmNiVjNjbHRENi83YkJzc01XMGNPdENENDZmNFhnanNsTUtSK0FGNGZRU0Jj?=
 =?utf-8?B?RkFaTi91S1B0MnR3akdVRmdSK09RcSs0b3lSWkM1VkRrM2R3WFF1dExvZFNm?=
 =?utf-8?B?T2hwTTFodDl6MFFEaityNzhneExVR0k1V1VtaXBCT3lQZjVTSUhaTXNoc3pv?=
 =?utf-8?B?bU5Cbkg1RHJqUzcxMitLWVJUUHd6dnl4MCtiRHpVT3VlYjdSLzNqdUE1T1Vp?=
 =?utf-8?B?ZjBkbUY5SzNkT0xIM2w1dERWWDQ0WmEwUkxGcEU1aTNvbmZMelgvc3ZMNG9o?=
 =?utf-8?B?RHM0d3p6VjlBYVlnQS93YXZYM2dqNTF5NlRQUFZtQkZRN2RkT1ZlQ3JETjgr?=
 =?utf-8?B?WnE4SW1zNGkvVnROajBTMXIvV1AvUFdidGxEcUJwenBIZW1GTVBPVUgvUzlj?=
 =?utf-8?B?Z09obHEya2RtMWJqeWtRdjVVL2lJeUVzVmdIU0RaQjZsdmZiRjZXUm02bUpp?=
 =?utf-8?B?MUJuc083V0hVZm5yb1dYRjZBWE5FdUdiRzRmemVHaDV5dnpiVFdxMGpxSVA4?=
 =?utf-8?B?SUpCR3VzeDZ0R2dSNkhkVk5meEdVaExLTnZGaVVhYVJEdk5CZVYwaXZMZW9G?=
 =?utf-8?B?STRDakprM3VJNUtuL09jNHZEVU9jMzVGejRsSkRrSjNCMGhxK2t3TmlpZGZ0?=
 =?utf-8?B?dHlqNDFvcmQ0WG5ZbG5YcnVCa3FIMHZDL3dMQ0tkbkJtZzlYUldVYVlSWGhQ?=
 =?utf-8?B?KzUxTGJkUEtwTGUweEhVWEhyR3NnenNXMk9CcU0yY2RjQXAwNDlZUG8waGxn?=
 =?utf-8?B?UWIreGpOZWtjM0dWVGtVSFVaQ3gwemZGWTI4SGZwMy95anp1ZEZubFZ6SFlz?=
 =?utf-8?B?Mk9aejNYSStCaVp4dnE4MlpOYk05YmFHWXB1OUh1OGZCY1R4MWxRU2ZGdnhl?=
 =?utf-8?B?dXFMdVNnRDljUFpwb2NtQUhHTXhTZHlRcHRWOWlFS0hoRVdHZThXRVRHNmV5?=
 =?utf-8?B?a1ZMdk9QTVBTZEF0M01Od0djM1owR29pMDdiQ2dNOXhMTmpYUXptL3gzWXZD?=
 =?utf-8?B?OGxZWjE1V1lRUkNwTEIvRVloYndTa2hqQUlwN2kxRmpkTDFweEhRdlpOSUtk?=
 =?utf-8?B?RTBzS2NtZ0VUYWg4amJtTWp3bXVQRHZYMnEwZnRWODZ0bEt0eUl2SVFZVWd1?=
 =?utf-8?B?QnlPeTE3TE9nTlBKV2wyRDFFMlFmVGxWaE0xWVVlejlKN3plNlpUcld6ZWhu?=
 =?utf-8?B?cHlNbXZmME8xdjl1dDlrSHdwRkwwVVFKRjM4enh6Z0FOZXdxQkFvdG5qQW1v?=
 =?utf-8?B?ZjNxOUJKdk9JRW9XTE1UcDZCemFLMi9tTDJja0hRZ05YMGxUQlAvNDd3V25O?=
 =?utf-8?Q?cqZEJud+rSY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym4ycmsyR3RIbUZ4akRyTHFvU3lSNTd0U2ptdzJ6RFBqWnlCQWlkdDJSYnVW?=
 =?utf-8?B?NWNQMHNJVDZTK3Z2WVBsQXhZNFpZMmZZOCtwOEJMb0dlMkVEa1pSVVduM2ZO?=
 =?utf-8?B?eHAzUWV0R2gyOFdHSDhKdjFzQ3F3OWpEczFaSzNIVkRCUWxnUXUxM3ZmdE4v?=
 =?utf-8?B?UlNKN01MTDVRaWx1VkVNSkUvc3hWOXhObWNhLzhkZlpoV2JyRUZCa1JseW5x?=
 =?utf-8?B?dS80QnRPNFh0dVpOZUg4Z2xVNHBWbDd5MG9JbTdKdmRKUjRDV2xKSHZrS3RS?=
 =?utf-8?B?T2NvUmFMTFdYbGJpRHhkMmlRaFdWc29BMVFDYllrTjF2WHlZK2Y2aGRqODZL?=
 =?utf-8?B?Ym1oNkJ3R1VDdjVpanozTW5pQmtxVCs1MFpIcEIvNzhpT1dhS1E2RllYVWRr?=
 =?utf-8?B?aENYangzYjJpMDQzVlNta3FFZk5EdHpuZG1DWUZjc093UnQ2L0hqNCsyc1g2?=
 =?utf-8?B?VHI5L0p2SzV0TStMUEtaR3pUUUtBR2NBY1drTE9qRmdRKzN3dnJBRVk1QjBh?=
 =?utf-8?B?UEIrcWI1RVc1V2NIR0pQSFpwcE5RRFJuSGUzMFJQTDc1RVJzSms0QjVDazhi?=
 =?utf-8?B?aldEUVRUN2RDQkFsQlJpdVVZbHZCNFQ5U0YzaEFkTzJEdGlnenA3THVoU1Iz?=
 =?utf-8?B?M3lnc3JsclpWZ2VtdG5PMkt0T3BKZVhncjA3SFpYVkV0SFFBNWgrQktuT3oz?=
 =?utf-8?B?eTM1a3VDVFRLdG9Ga2k5Q3hSOWVnVUNnWm5nSFdyRkJkS1lqUXZCRUFnV2VC?=
 =?utf-8?B?WXRKUCtKM2FVZzNjK0ZnYmdUSVN1RkQyRjNPd3dOZ1ViVG1oVU02TDQ0eUkv?=
 =?utf-8?B?Q0FuTXArTk9Ec3krelFRd0ppV2RnVFRIaFVudWwvS1pZUjRwWDVFOHhKdjVW?=
 =?utf-8?B?TlJLV2VBUjN0RHNwbG40d1NOaHdoWWhSa0s2aFJDcGJlVDZuOU9rckR6VXoz?=
 =?utf-8?B?RkQzRERqbERXRnVpcDJ4MFE1LzlyamloSW0yQWd6ZEYxeElMTWxoNnVJZHc1?=
 =?utf-8?B?cGIzMXgzakFhUlZWeElQSUtqRGlDaXVNWkNxdTEvSU14aTdPcUNSQVlhVi9w?=
 =?utf-8?B?SThRM2tPQUFSM1E4VEQ0a2lybFJnRnBCVVVSTEVleEVDZ1ZCUjRtR000V1Q1?=
 =?utf-8?B?Y1Exb3JzYmxKQldKVnJnVlNkVUhLTkxJL2RvLzh3eER3VngzeERSSmJKUmEx?=
 =?utf-8?B?SVhJMW1MVHpmcHBoU3V4NllUODlzMU1rWkx3cS9TNzBVUU9RcXRLVkRFbHhs?=
 =?utf-8?B?SktVMnQycGNGK09vejFWZ2FDQytOTkJpUDd0WCt0STNEYzlDczd0MjBESGFU?=
 =?utf-8?B?WXZRTTNKcCtRaTRzYUovbjJGZDcwbTg2bmtHRGJVUWo0RmFHQnZGRWRYMXZk?=
 =?utf-8?B?Q2s3OFdqTHBFanJ2UUJ2cDBscUtMTk5oZmZtaVhSdU5XbFFVUGpsdWtGQWlB?=
 =?utf-8?B?T0VaUWVhYWV1bmFhSHJuSkdwcHJBUlFxMzhRVWorR2toQ3puWmRISjZYa3pX?=
 =?utf-8?B?ZWRnV20zbzhlUHZwV2twZ1lqNkRYSmVJSndwbjhrU2lSQ3UvZEhSZXZVdWZx?=
 =?utf-8?B?VkRwWVhEZ2ZQbFNHR29xWjl0RHA0ZXRLM2puU0xFVlFQWWg1dEJEODZLUFQ3?=
 =?utf-8?B?aUVIanZJL2RtY2oyenpRUWdNSVhJK3cyMllHcWNJejZhNjVCVmpMZjJXUjFY?=
 =?utf-8?B?QjlUMDZ6OGNCTkR5ZlBzZkdkVnNJVlRLSjNtR1hCako5VjBRdlRoenBYK05k?=
 =?utf-8?B?L0F5ekhTR0FpTmJSbmtlSDZUZy9iaVRvcENRQVkwYUxjY08yYVFwcUtEVm1j?=
 =?utf-8?B?blZHUG03N2dQV0NTTEl3VlJZTkRLelkvbEVUS2p2cXNRTGFPcnhHdGFvbnlj?=
 =?utf-8?B?eExpdzRPNm9vMUJnU2pTdjZsTENBOTZzcnc1SmpxbE5YSW56cmI4VXFwS2h0?=
 =?utf-8?B?TTNhUDBhakZMaUt0YU15REJGWmlSQXFZd0E3L3pwU0JYckUwQzE4VWU1Mkg0?=
 =?utf-8?B?d3dIaEN0aVlJZGtybHd1RnpySngvYnpzSzNmbVQ0ZnlXd1RjNUJjOFlUdGNt?=
 =?utf-8?B?M044bUI0c0pibStKdEZRdWdzblFjbjRjTG52V3FuVDZyL3drUDlVNHZoUndv?=
 =?utf-8?B?d1RZcmxiaDJrVko5MFNrc1ZnWGJFUkJWVWNYdktTdktIVGJoT2g4TmVDVWdp?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c60a6b7-ead4-477f-66b5-08ddeeca78aa
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 11:25:53.3521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKSNNWpxheVPOdFxVJY79RfJyWxZi9TqlE4prnNCW9/UGNl49Hdtuvv67RJvWa0cb26e188fNcpb/FTDpURc45jsOS6L1TjI88yvwbyD8pY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6283
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

Hi Krzysztof

On Mon Sep 8, 2025 at 9:25 AM UTC, Krzysztof Karas wrote:
> There are two unsafe scenarios in that function:
>  1) drm_format_info_block_width/height() may return 0 and cause
> division by 0 down the line. Return early if any of these values
> are 0.
>  2) dma_addr calculations are carried out using 32-bit
> arithmetic, which could cause a truncation of the values
> before they are extended to 64 bits. Cast one of the operands
> to dma_addr_t, so 64-bit arithmetic is used.
>
> Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr =
=3D> dma_addr}")
> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: <stable@vger.kernel.org> # v6.1+
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
LGTM it could probably be split into two patches, but the changes are prett=
y small
and it doesn=E2=80=99t really bother me. drm_format_info_block_h/w can both=
 potentially return 0,
so it's good to verify their return values.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

