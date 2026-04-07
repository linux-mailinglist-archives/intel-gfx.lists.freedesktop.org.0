Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0HG+DgrJ1Gk0xgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:06:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D643ABBB5
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB9210E37B;
	Tue,  7 Apr 2026 09:06:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/3au0Jj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BE810E379;
 Tue,  7 Apr 2026 09:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775552775; x=1807088775;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0YjtOpUpNRTAHyijt9E3Ez2hlIwBzETvgzpHyJZQH6k=;
 b=F/3au0JjbcsmP2NRBMMf/Yxg5Wx2aEJ8htrCnOKlc6bW+dFph/7HXIuK
 PiPds5fpW7krvoz9AIqa9wf+O4ayMfyal7kkAXq+/dkMI8JIzilKB0/r2
 oHkme34Zy0fzgcIgIeQu0E6V+yL8MsIj6r8+cN5NRK6BXHZU1sjZjeSo4
 iLHSCF4YF2hCWj7ZPAPCxp6sOm+KoiTa/0pNK8Qxhdjk4MB2+EvMY9VR4
 ZJ+HNxh6nBo2vyAUC99IB5lSDuyqL1+InZQfdjca8JQff6uOAABtX7DEA
 zgvfys2yqf5JDSMSq25Cfq/DK891myzcCjTNJm0E08uWmwqHL2sTmu7nV g==;
X-CSE-ConnectionGUID: M6v0IiMmTX+1cOKlwD5xUA==
X-CSE-MsgGUID: YqpgYVzzTMuJSXdGndb3vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87962070"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87962070"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:06:14 -0700
X-CSE-ConnectionGUID: OD4xozsBRGGhYQtjpjI8aA==
X-CSE-MsgGUID: p8DmdJf5TcSAHUOF++Ti4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="224917167"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:06:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 02:06:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 02:06:13 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.41)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 02:06:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dLRmJwHRBDy5h3RttCPsb4/59aCDMqYBwZYnXTy/nxkX1ncdmLLxviX5vasX5G1ibdJe9/aafBTfT3Zo68uJy0vPEJPyJvyLrYE9GpC1lAsfhgAsgewF9yF/S4dyMBsSZ5qsa5vfdZkc7efpQV60kV0lF+bu8zkTI/eqIKzxwGxz2U85FUMHkXKwkPZv64/UFEdf7JdeFmDkQTwAL79laDIB+8XtZqp90qcwK1/Xf+kxI2UniD7W1TTXTZ6jRHwq3Ap5OTu2z5JUZlNLZOmMt4+UpiKRhxCvd54LD9LPNIDOXDf6Wg/VVs7BX8PB5ZAKr+Dkj5E05bX1fL6wKO2hpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GRXwlKEb/SYNjuD1Tc5UhQqJ2Afeos2Tdc2A7NYf1cM=;
 b=XipaMMangC3aujnfXalacMg4M82CTcaGGxyUyZyB1alHd8Y3V8nzlAVaKuebXEt8X9BhUYK3lkvb2RT/yc/HYSxcdgmJ8K2JFloSlaChQ+h2AXCvO+0na4VNOKsN1Hr8eiKvkRdx/rnlbqD/5ghp9DlqcBIl+jsCMO43p2r09nyggUP2oCczpcxFVtUvaI/S961K8gskKHHO1iJXAZCVvBztB8bSmRA808iAVucqC+55mA1caUU1ZnUzOcBmDwfPpucWrE1NMtlFoIxiSUusedNBBfwPyJpDFPC9tX06vqTQAxVH4XsVbkB9ka16SFUvcTiQssP3EldYmGffKb0J+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6200.namprd11.prod.outlook.com (2603:10b6:8:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Tue, 7 Apr
 2026 09:06:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 09:06:10 +0000
Message-ID: <788d3052-8927-4275-9ccb-300de14c53f4@intel.com>
Date: Tue, 7 Apr 2026 14:36:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/23] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits
 for PR + Auxless ALPM
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
 <20260402080425.548702-20-ankit.k.nautiyal@intel.com>
 <ac5JYcs5eP31T7Bi@intel.com> <af89e4c7-d62d-45d0-807c-fa2616db9b9e@intel.com>
Content-Language: en-US
In-Reply-To: <af89e4c7-d62d-45d0-807c-fa2616db9b9e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0280.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6200:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ff76ed0-c128-47f4-0286-08de9484e92a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: uxbfj+uo/BW+EC4FsQ0KNwlOPkcHzqUuQbY0a9LPzn8u99JzEM6msRJKK8g4fABkLrBmPwyn7F4YBE1L+70Wxj5VEHSdKaWC8rpn/JC2ukK/f9Kock6mX68Xm4jWvVkg9CV3Zyf9635h86AI6NJaZ4zbxiLs4h1O58E1XMJhcFGxK2+BHdiZTA14CbQrgisGriwYkmRXqz4I39xUZOi4T7zXTS8INkA02B8VAC9MxtMfdrUtmBNy/c54qAoTDNYB7qxHX8uvDHQAj9ZfZ79+4CD8JmPTkGJS+CG7tGMIT588H4MmiT5pi/EYsIThldkE2httv5KKnkJitrQ1Npph6HeJrFoouiwoWU/uZCdInEhi2BIjb0wcxBtB9u80UtMMXUaP6dXSZihuDONJGTd3KUvpdAhLmuWPI57VZQKpm+U/1suVssiy0a2ckFEl2f/velxrc1zuZxVQTNmMfq9ckOynJRZ6oaZCMuxbtw2zVWRcFvA0OnrPJc/+xiawQP6nhUb2d+QUXGB8Tu+cVduJVtEm/A+Ah9ZxGbvTCAd3ALbs6DeNIy+qqhgdCvGWBnIlYHc8pXoEq27SKLoeaWumBuwmsF3qlXbHonSbCEq1tLCLsq+0vz5k2r5KSOcjV7XL3bhqA266AJ+vm4xKgNZ/OGlsF/CfGmSnRAQ+RTYgczbiZq+7JxdvU23vRSz4IOnhS0IA9HRDR2ZWB3U3T3Hx+Drbq+XwAoRqITeRw/5P/w4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzJqa1JvdExmQzJTQmpVbTJWaDBZc0ZVaks5MXBIeEdqNFRIeEhaNWdQRmVO?=
 =?utf-8?B?WXAxblFFa0xzUTNrUUhTeHAvandhNEZ4OFB1ZGdGYXZTSVJudkRVNHBJNVl4?=
 =?utf-8?B?YmFkY3A5V0JmdEw0K3pUazJkYVR0TFNyTStVNWNMeTQxR1NaQ2phNFdJam9q?=
 =?utf-8?B?aTJlcnZ2S0ZUUUVMcDNMRDJqdFZXL0Mwa3hmQzRJRC9FLzZPWnpPZ1Y3cFQ2?=
 =?utf-8?B?alZsbU5sRGF0bCtOVWhTcmZGYkNXT3ZtQUFqRm5UUmhRb1ZXclBjSkpRYXBv?=
 =?utf-8?B?OGNMY2ppYkFmeXA4aUpERGFKQURZQ2hWb1NDeGkrM3lLM01MdDdFaGRHY0d1?=
 =?utf-8?B?a3Z2enhuV0U5VCtUeUptNVJDZ1IzZFcyUkl5SklWT0RkK1pYOVd4U21zMW10?=
 =?utf-8?B?TkFST0YvWmZnUHA0TlcwT1VNeWpZbjNaVkRRSDRpL0p3aERtWXhvbnNUWGUv?=
 =?utf-8?B?QzNqcVlpK0h5UWs5SDUwZ1U2Q1doeUt2TlE1YnNHNTVLVWl2WlhCUTFFalNu?=
 =?utf-8?B?RFVIb2FCb3plU25BT0tnelcxQ3NadjAzVzd2c3UyV283WGZrRHd6MS82SWww?=
 =?utf-8?B?Wm9oSkdxWDBPTmJ1S3pKM2dBSzJhOEdDTzhFc1drMVVnWG8zRW9WdEF4dWwr?=
 =?utf-8?B?RUVDN0JMT1ZTaTdUZGtHUm5ITTBwY01MYWxSK1ZsV3NQWWJTNFpmaE0yTUdq?=
 =?utf-8?B?dUhCRkdsNnRFaW9tQUNKS2VobkVlSXNyVVhOSmRyWS9ka0FON1k0L1M4UnpY?=
 =?utf-8?B?R3dZalVZM1FoeFhZakJmWmg3ZWdGUTBxLzZCSkF4dENmSHVOb0lJeitNSFMv?=
 =?utf-8?B?NGI5L1ZwVjJQN3lZb0ZCanJocWZ3N0ZxdWYxSXFyczJobHRWOXZwZ1VTUzhh?=
 =?utf-8?B?TjNlOS9zUDFBcHgwR0NpZ2hkYjNlL0FDb3JmK0FKU2FZUy85aytFQkNuY0lT?=
 =?utf-8?B?TjRkZHFkV3g4Sm5iNU56M04rSHpZSERlSUZPN1FpVFFmbHZiRmJiTkJtVTN4?=
 =?utf-8?B?MXB1blpOdXBIYnBCd010M0dUV3lJdTBFVUZNQlpmaUJEY2ZOcHRwMGxENUpW?=
 =?utf-8?B?eVRYMHBRQ3BySUgwMS80NG8yMk1DUm1scnR0cTdiOWJWdkZqelN0ckRNK0hu?=
 =?utf-8?B?OXArQ3Y1NGJWdzFaczZwTjU1VUkyN25SRWVLYkFNaG16TEJyVE0zeHpqM1Rv?=
 =?utf-8?B?Zjd1YW1RSllOYkJOVFdZdTBHNW1DaDllbmZwS0RuQ3dQVlkvT2ZmTHNJZmNp?=
 =?utf-8?B?ZmZOdTdIR094eFArSjgyVXZDUzI0d284Rk1LL1NHb3FuWHUyUzJnMEZjRVZs?=
 =?utf-8?B?TlRoT2t2UzgzL2JyNHNhbjVIeHVhY2FKcXZMT2ZhQ2VXcnRoRjhlU3QxMjho?=
 =?utf-8?B?aWxRazBDb0JCeXFTeHAwaG42dnlJVTBJd2VRSERSb1BwWEw3RjcxblFlbWtG?=
 =?utf-8?B?ckJJS2hBTWtJKzIwdFpnUC85bkgrbE9LVGN1eFNYWVFiL29ENG5OdDRpKzFZ?=
 =?utf-8?B?Z3NGMHJ1bkF2UnVtZ0NJNlZ3NzM2TWlXVzVIRDBmN1JocFVJbGMySzViUzgy?=
 =?utf-8?B?dlloNVdJaXNDWW9NUlVGMXNnM3htYUtMbFpZNTNwZ3dvRkhuVW9iTHdiaVhN?=
 =?utf-8?B?RVZIdVFEcTMvZ05EYjNIemVVczdQelhTRE9vckVqOUhObFJidzRPKzlGazlQ?=
 =?utf-8?B?RGl5dVN6endlUlRSZ1I5Y1Y5T1cycHYwYUdGUFFrOVNKNCsxckllNGJuQ1U4?=
 =?utf-8?B?R2d0SEpmVGJiOUxiNjVjRHRiZFpNRURHdngyNUNWekxlZG9EWE5TemlmeEtm?=
 =?utf-8?B?a3hBODRYZXpUUWZFTytxK3B0MWltcUJhUmY2TFU2UCtRTmhNMHEyWDBTZ1Bn?=
 =?utf-8?B?TDF6eUZMNVQvYTd0cWloSW4zRmVjTzdvMlNjZGF1djI0QUZUVXFQa2dVOTRY?=
 =?utf-8?B?c0RQQTZjNWROdEtNa29PZVc3WHlCRVd4UlNWQ2lZR0RpUWJDVXRZSXZIUzJY?=
 =?utf-8?B?UjJXamt6TTN6eml0YlRQa0tQbGpzTWNKVFZMSkE1WE5EbzluM0ljb1FtMSs5?=
 =?utf-8?B?WUs5UUQwdmVNVlRIZ1EwaUtvek5EdkxLSWtWa3lXdkRZUk5pTWFQbXVwbUdU?=
 =?utf-8?B?d1JmNUdaNW9XVTNNa1BvckVnTDFVNGZRb3JpWERWZXZueU1yeXpRM0VrTHVx?=
 =?utf-8?B?amJybWZRZjlwdkdHR0p2TTY0TktHZUtqa21WL2U4QmVnMVhXb1p5M1p5RCtj?=
 =?utf-8?B?THRwK2J1RWJxVCs0NDlubm5mRHJoQVBJTlJ5N2hOaklaU3AveW51YWtsaHFr?=
 =?utf-8?B?OUh6MU9zVnQrTlZDdUlLbGp0RTVHeHNtaC80QjEzYmpkNHY1Rk5kWnExN3pE?=
 =?utf-8?Q?DhRKejW5R4mMQba4=3D?=
X-Exchange-RoutingPolicyChecked: BI2ViPxvX8VnrbrxeGuSKHCSecznpDQcVIt+Dr3cHDHvUFSj+kFFZ0umECDJi/bhziH06uMumaCuMhiYmcP+iJKy5bicsLTNqXMauenJzts4Xy7kTLzFAv0aQAF9P6OZu0zTDS2av8I15nmfxONurA0Ou8J4PIJJ7+onkIMihwS9thml44PUsJJrtO1BNBP2/WiLuGBOBWF6CLr1M59hObehxYtxi3ms2LxgXPHQEDRiqICY13ukOqewdJXELFYdOUN6/Uh/uEjo28mAsjkOnFiMpWhhVsZG4O8+TVsZlWALk+eTuYHKFGdrLsjexeSOcztDc/r/CRzi3+N7myrCIA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff76ed0-c128-47f4-0286-08de9484e92a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 09:06:10.5107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 55nGk6zi7gE+dDfDs0777eeQclnt/cyBQzVGhcHOvUOefoX6oX9hJK5Y5WOLXVFFbRgdCtumMaa8p5D5QgG3oUf7m+QGujeDLW/lHx1gozs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6200
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 76D643ABBB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/7/2026 2:21 PM, Nautiyal, Ankit K wrote:
>
> On 4/2/2026 4:18 PM, Ville Syrjälä wrote:
>> On Thu, Apr 02, 2026 at 01:34:19PM +0530, Ankit Nautiyal wrote:
>>> If a Panel Replay capable sink, supports Async Video timing in
>>> PR active state, then source does not necessarily need to send AS SDPs
>>> during PR active.
>>>
>>> However, if asynchronous video timing is not supported, then for PR 
>>> with
>>> Aux-less ALPM, the source must transmit Adaptive-Sync SDPs for video
>>> timing synchronization while PR is active.
>>>
>>> If the source needs to send AS SDP during PR active, this requires 
>>> setting
>>> DPCD 0x0107[6] (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies 
>>> whether
>>> VRR is enabled (AVT/FAVT) or fixed-timing mode is used.
>>>
>>> This bit defines AS SDP timing behavior during PR Active, even if AS 
>>> SDPs
>>> are briefly suspended.
>>>
>>> Program the relevant Downspread Ctrl DPCD bits accordingly.
>>>
>>> v2: Instead of Panel Replay check simply use AS SDP enable check. 
>>> (Ville)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 
>>> ++++++++++--
>>>   .../gpu/drm/i915/display/intel_dp_link_training.h    |  3 ++-
>>>   drivers/gpu/drm/i915/display/intel_dp_mst.c          |  2 +-
>>>   3 files changed, 13 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> index a26094223f78..8b21c479ebfc 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> @@ -27,6 +27,7 @@
>>>   #include <drm/display/drm_dp_helper.h>
>>>   #include <drm/drm_print.h>
>>>   +#include "intel_alpm.h"
>>>   #include "intel_display_core.h"
>>>   #include "intel_display_jiffies.h"
>>>   #include "intel_display_types.h"
>>> @@ -34,6 +35,7 @@
>>>   #include "intel_dp.h"
>>>   #include "intel_dp_link_training.h"
>>>   #include "intel_encoder.h"
>>> +#include "intel_hdmi.h"
>>>   #include "intel_hotplug.h"
>>>   #include "intel_panel.h"
>>>   @@ -710,11 +712,14 @@ static bool 
>>> intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>>>       return true;
>>>   }
>>>   -void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, 
>>> int link_rate, bool is_vrr)
>>> +void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int 
>>> link_rate,
>>> +                     bool is_vrr,
>>> +                     bool as_sdp_enable)
>>>   {
>>>       u8 link_config[2];
>>>         link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>>> +    link_config[0] |= as_sdp_enable ? 
>>> DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
>>>       link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>>>                DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>>>       drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, 
>>> link_config, 2);
>>> @@ -737,7 +742,10 @@ static void 
>>> intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>>>         * especially on the first real commit when clearing the 
>>> inherited flag.
>>>         */
>>>       intel_dp_link_training_set_mode(intel_dp,
>>> -                    crtc_state->port_clock, crtc_state->vrr.in_range);
>>> +                    crtc_state->port_clock,
>>> +                    crtc_state->vrr.in_range,
>>> +                    crtc_state->infoframes.enable &
>>> + intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));
>> The bit is only documented to be valid for panel replay capable
>> sinks. So we should probably not set it otherwise.
>>
>> But the weird thing is that the AS SDP DB0[1:0] description does not
>> provide for a set of valid values for that case (DPCD 107h[7:6]=10b).
>> Either they assumed that AS SDP v1 is used in that case (in which case
>> the we'd not be able to support FAVT and maybe some other stuff without
>> PR), or it's just an oversight and the same values apply as for
>> 107h[7:6]=10b as they do for 107h[7:6]=11b.
>
>
> Yeah you are right, the spec doesnt say any specific thing for AS SDP 
> DB0[1:0] when DPCD 107h[7:6]=10b.
>
> It says for values 11b and 01b. As you said, I agree we should have a 
> Panel Replay check also.
>
> I'll just use:
>
> intel_alpm_is_alpm_aux_less() &&


I think I need to use intel_psr_needs_alpm_aux_less()  instead.



> crtc_state->infoframes.enable & 
> intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
>
>
> Regards,
>
> Ankit
>
>>
>>>   }
>>>     void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h 
>>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>>> index 33dcbde6a408..d3ae8ee38a75 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
>>> @@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct 
>>> intel_dp *intel_dp);
>>>   bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp 
>>> *intel_dp);
>>>     void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
>>> -                     int link_rate, bool is_vrr);
>>> +                     int link_rate, bool is_vrr,
>>> +                     bool as_sdp_enable);
>>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>>>                      int link_bw, int rate_select, int lane_count,
>>>                      bool enhanced_framing, bool post_lt_adj_req);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index e8de17834dcd..ffd1cf0aad9a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct 
>>> intel_dp *intel_dp)
>>>         intel_dp_compute_rate(intel_dp, link_rate, &link_bw, 
>>> &rate_select);
>>>   -    intel_dp_link_training_set_mode(intel_dp, link_rate, false);
>>> +    intel_dp_link_training_set_mode(intel_dp, link_rate, false, 
>>> false);
>>>       intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, 
>>> lane_count,
>>> drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
>>>   --
>>> 2.45.2
