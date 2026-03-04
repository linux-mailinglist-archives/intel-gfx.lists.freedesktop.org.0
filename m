Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DguMptfqGmduAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 17:36:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD6A2046A7
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 17:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F52910EA67;
	Wed,  4 Mar 2026 16:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ig8Vs+sY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD72D10EA67
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2026 16:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642200; x=1804178200;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=zbJDqXJ5OHA6NRkK8vudwjbNbfyu0wURSnYpdLpEjxE=;
 b=ig8Vs+sYMClPA5spRjJe6d7tQLEtro3xY5Xn5cCNKIcNi2m8DaRIPfAC
 goLc/YvkvPHbOBnQPvjXju9/Ai5DIo5BcKLpYQn/ngr9PLgoBdVS/OagS
 UvUpIzV+BGkPi4Mvpyq5GHCHmcan3VKkOneD/zUTdT9tHVBrnQv5cv54a
 pqs2zPRZYUQT6ytLHHMCvxucg8p6srFWj/aONXYSf5WtcyRV9xTvfI3lO
 vujhVhMhNUzIZIo7z4zSUS0QprtF/GWDVof+UIqEzOTjBGgLk+SGw7/8l
 Cym5ULRShp4EA+/vFzsr6Vdr4YTMpO/t9ybOjo2kjleqqF1tocst1G0Ll w==;
X-CSE-ConnectionGUID: W2wQenSWRFOKItcI76zwFg==
X-CSE-MsgGUID: 3zmoDUPEQBa7dntPQIi+tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="76310385"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="76310385"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:39 -0800
X-CSE-ConnectionGUID: FbgwCmspScinZGerYY47gQ==
X-CSE-MsgGUID: mihXBWyDQ1iNx3A4zRtrPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218338899"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:39 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 08:36:39 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 08:36:39 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 08:36:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xm1+apY8B+rlXk88WTwKtaxzdm6wTR7NBlj7pcv7YhrHX9fgbYxlyi+rK/kZqlIpJrtJOifbZSBL1xfU76Ux0uoVrVONwqIkiYu893uY7mTs8vlXL9PAN3PBLrWmfQXRGXVzJ2zm2bQFOUvDYeCWt3mQV9dywwTefHKeb6BL2phf5hcOgto/DMgW1YCnD1e0ZWL/SuPqIhBdfTcAMKPBctv/xafmeYGEFnAwK/SYuJkxWwTDJqvtSz8CuGJA1XZdDdIVcvlzKZDD+fruxJ+4ch5Cf0slnJq82SJ+oiZMaM2dEpQiSopgEqLbPi5SBzRBseUyxxbI4wiZ2KHmeusbig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zbJDqXJ5OHA6NRkK8vudwjbNbfyu0wURSnYpdLpEjxE=;
 b=r+tpk1VYegAZXGMKRzV6i6wENVImIE/+LNonX+kTLNQQqylzo3U1UEr8ZyaYhNXc/c9xIjiyZkQXc4w6lqIYNyNkZcxhN+R3B15AYGjLNZ0zQqiW4XxUQ9rEFyIQwuAyegxi65/K2INaA73qSQkmArH+1a19fi8B1P1ZvULk2wEOUtRcRaAcyiJKIETaICkWVctp3/5jOzQu1bqx88cntYiwzcseaiI6Njt6bHs0N75zW2JNCb+3im7PPi8x72XeDZF155ggkNlmbGuBOFwh5LUzZ6nGmdDWVMRKUZy6h0ZOdaWrgnYXP4qO5Ec1kLJjlZmBpaHaxkrxBlEMbmkE+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB4947.namprd11.prod.outlook.com (2603:10b6:303:99::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Wed, 4 Mar
 2026 16:36:36 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9632.017; Wed, 4 Mar 2026
 16:36:36 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 4 Mar 2026 17:37:10 +0100
Message-ID: <DGU586L96FWH.2356290WD8Q67@intel.com>
CC: <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences()
 after fence ops detach
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
 <cda3a318-fed1-4779-9c83-b0d8a5178775@amd.com>
 <70936dccd9ed65e8175f6cb1a0ba1864d82d5a3a@intel.com>
In-Reply-To: <70936dccd9ed65e8175f6cb1a0ba1864d82d5a3a@intel.com>
X-ClientProxiedBy: WA2P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::28) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB4947:EE_
X-MS-Office365-Filtering-Correlation-Id: 4385aeab-e24d-48e2-99a9-08de7a0c342c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 6JYVKNKW9qx6KLI2bo8trtOoTOcwxeVNaW9Usk584aQ78QFWmAuzoEuBtba+AL1oJCNBJAYsC7dyw8RNg6iL13v0EbEW9Y8FCve6pq+O6nEKog0Gy/ugVXoeb3UTYVO4pR50bCWcSiWGsahw9lR+hCDbM27967zWwmZU1KOVt8QSJDtJWOai5RworCsi63x8FlEg6YT/Cex4XDL1zGzh7XpuA3BneROG5GQPqRZlQ/gQ8dJKNw/Ylo8mL8Cq3hgO3d0fjP5OCezjvRCWcUFpXl+oxAEjp5pZCwPdG7aZcQcA8vK2gHfMUyfrZAvMPrMZhyA4SHoQqLUDVWFDI+npidY3ECB/LtfCF2Jjbl48ZhP8WFCUTa38t1gEF1p/7Q5MGvVCYKYBCMpuzx3JVhIyUo4b4vvfULmyKrs4R/eX/rShr0P1Ip2TY/PjyQehEyengW2qLK1Zt4MLSaD4lkCJqIGYImtC1nFXp9vvr0uud3cEXXzXy5oRU9OEpj9pMgdetzQtj7iC4Ws6iD/AxtQ8Y459uADk7ccDXGQP5qCMqf/CA955BU0vg/iE3PBiB6kdlmrMy3Kj1ulsYQBzMW3hAYuPtBU0nDDHBck43EJZTfIf7ZMu395KS4abwYpCBD6mNTrmSYnaW09+E0FAuyQ48fYHLz4JclIiHPjasrnqq744PkPcr2CK19U1yrHkqGCZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXBzZ1RsU0FLV0hhVS9oSGVudkNEQldYMkJZSWpnNmFuZEZVUUZ1VlVFQzVr?=
 =?utf-8?B?SU5DclJndVo1TTNvS01TUTVlZnZqNlpsOEFyZmJoUXlYM2NTd1dnZTBGa1Ny?=
 =?utf-8?B?S2FlUkZrd0dYckxiUkpVdVQzMXkrSFpUUG1hNmJneURTVnd0M2FxSzdNYU92?=
 =?utf-8?B?WERSVE5JaFBmNHJ1VDRMMjNMTzBxV3lVUm9FOW42S0tVd2VBM3UwTWZVYm56?=
 =?utf-8?B?K0hCcEpuUmQyV05Gd2FManVBMTA4Uk1HR0IxRXNUOTFVVDY3SnhOV00yckZh?=
 =?utf-8?B?THNTb1FZZlVWQkNla3MycWJwNDZ4SnVaZXo4QXoyaW40NVU2Y0tFTmwyc3Nl?=
 =?utf-8?B?RHVGRVZLTmt0ZXNWdldiNVZHTFhMY0lsVFk0SllpWVdvTGlOTGVqb2V0dEtR?=
 =?utf-8?B?M2ZaeldibktIWUM1VUVXN1ZPbDJZOTBWUlFqWWpsYkVPTGxDeDF4U1YyQ2N2?=
 =?utf-8?B?bFUwZEkrOGZrcHF5MVNPS0F0Q1pnUFNjSjJ0R3ZDSXkrYjAycmFLaWg2VUFK?=
 =?utf-8?B?L1A4a3k2dXZqeXU0ZUc4ZWtIOXJsQWJyWmJmWGdBUWNsakt0RkU5Ry9Xc3Vw?=
 =?utf-8?B?VDhOM282S2s1cXdINUFneDROaHhZTXBhR0ZjWEtlRUZaRm9STTNrMVBwQm5y?=
 =?utf-8?B?Ty83LzJPbnFETUV3NVN2dU91bHpSNkJ2bEtQMm5DRlFmdlFLSCt0UUUwNGQ3?=
 =?utf-8?B?S0JNTjJ4bXI5WlFHZDIvTlRxZlFoYlNZSDVOUGRRSEFMbDUwaUtXVDgwa25N?=
 =?utf-8?B?WXdEeEozTGlhZWxmL3habEZKRHV0anNMNXMydnJsNGh3VWZKdU1nZnVyK2V5?=
 =?utf-8?B?MVpzTnpmL3pRd0xtaVErMUJPQVdOUmcra0EyM1A3cUY1UzJpVnlQT0FLVlFu?=
 =?utf-8?B?NkV1b0VzZHZQOUFidkpoTzhzT0k2QlhXbk5iSklyWk9sUjFjSVBJa1RzeVFE?=
 =?utf-8?B?R3ZZQmh4MDBQeVdoWSt3cGYyTk1LS25IMmJ1VVVCWXlXdWZpL25JeGdqU29x?=
 =?utf-8?B?L3EwSDY1UWR0WWVQckxPNDFMVm1GVG5DcEhSNWNUZ3pPdmtmdHVGRnJpVWNp?=
 =?utf-8?B?cDRxVkhmd2l4L1Z6YU52UDFmZWM1cXFjNDRINmxYRnY5RGtNNTdMdjhoYlNj?=
 =?utf-8?B?OFd5QjRUZnc5elpLV29NemxjT08zSGNBR2RadHVEMnF5Z1FnWFNvYU5YRjdU?=
 =?utf-8?B?ZEk0YkNITDllSXlCbnRGZWpDRTdacllGMk04N0V5a1NCWWhPay9hMC9mK0p6?=
 =?utf-8?B?d21xbzY3WHFVZjlYcGMrVHRPSGpIUitpTXc2a01sTEZWWFpvU2VoKzZlK2NE?=
 =?utf-8?B?R3J4NmlMQkR5cVZzYlV1RHl0VHMzSGtZKzIyWVdnU3RoSU1nWHlXNHRTUFI3?=
 =?utf-8?B?SFQyS2UwYjBhY09PVlZtUEsyZ2NBc1VlL2NKQ2ZIV2M5dUFkeXdDdFZNNXI4?=
 =?utf-8?B?d3NUbjYza1B4UGNjNWNtSnJsM2FHeVFyVS9lbGRpcVpRd3F1dVllYUtrUVdp?=
 =?utf-8?B?Y0NQelNsbjl2QmkzRHQxbkFTQlNUYTZQeEl5ZDFzT25hK0g5bmNrMVZMMGVn?=
 =?utf-8?B?aWEwY3g0VXQ4Rk1ySFhlTVdsc2FCZnRwNWZab1dWcnprQnVvcVV5akxBM0ty?=
 =?utf-8?B?LzJrTEpzVmpqR1VuVEtJRm8wSU9ONE5lYmV0enB0a29IcC9BK1RQZlVtNVdh?=
 =?utf-8?B?S2lrMFQxNmdrcDJjakx5TVFsdmR3SVk3Q0NUVXVUMWJUY3F3SHdDL0ZTbWZN?=
 =?utf-8?B?WHRDQ2hRNml0UnBHa1k5Q2RoblJPMWIwUlM0U0V2RDZqRVdTSlo2RVV2cVJB?=
 =?utf-8?B?R2tUQ1ZlcURSUmFSNWRuMVAzdGZDMDV1bkdXQWxjaXhURGRsRGRBOG14eUZ1?=
 =?utf-8?B?aDhDTnhOTjZTNkhtZ1hTREZYQzlqMWJOcXdwcXA4eW5IZGt1bmZaT0toQW84?=
 =?utf-8?B?eXZJVTI5K2pjakw4cnA2Rm5BUEMrSHpueHFTZlNTMW5qTkgzMEwrVU5PMTUw?=
 =?utf-8?B?OEd2cyttQ0pPTlhrNUs4a3dFOXdyMldnc1Rab0J4a25HaHMxaGpzN3c4UkNO?=
 =?utf-8?B?U3VaaDBmT3hBb2pnbnZBYUExQWs4S0hjaEJ2b3VUeHZhQ1lMdGcvNGI5eTRP?=
 =?utf-8?B?QzM4SUJmRGZVN0lzTjNSdTQxQ3Z4OU1tS0Y4bVB6dXFZVWFqZkVTUXNOWUkv?=
 =?utf-8?B?NzRxVEF0N2pvNVAyRUFGY3pVaGVYcnRhOHRDb1c1MStiUEd3ZkExWDhFWW1j?=
 =?utf-8?B?UThEMFdhYU54NXZwVVVRbEY5UktnZFljQXJySFJvbnl2U2ZveThiQTk1Nktj?=
 =?utf-8?B?cWJHZDZlT1ZLWXIxRmFKMlRkYm92eVFjV1BCL1RFMmpXcGJzSHlyMEtqMzEr?=
 =?utf-8?Q?kRZml/ITQ6euZJQM=3D?=
X-Exchange-RoutingPolicyChecked: VQXR9orS21VBYjyxmpblVZDU8cvpaOFb/ONiGEgquFDK1eMGqmtIr3DMCQts9nUs719vLdokGXyH6vnMWWxEARZjACpNouog67jbat7zQmrtCrW4FytBcg8WCzpWuhm2GBl19Pxy4x57lhNIRwfCB82bKBYq1x2G9ez4wd5wGRWHqcqTJhN1d10SNjbI86QPgqPkpTARwoBqOi95LDDiJ/BqWELwN7nOO7YvLPtJ+pz3aE19RRYJ6n8c2QKbAMtNpuA+SZ0EYmyhNX1rtjuWrFhQOBLkHBp/za06FusAcJRZU7p6rpGq/LQrk66ZmWcDelhkIeekgIQCyBibwnmp3w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4385aeab-e24d-48e2-99a9-08de7a0c342c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 16:36:36.7933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fI+CpTps2oTCdQGEcaYeTPWdssid8jfieaXL/CRh3VGo2dG+eqSVq3+fGxKW+uiAL/cpzFDQpOuHB9EdCEI6b/10VJ5CwTEJVdbCamgoRwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4947
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
X-Rspamd-Queue-Id: 1BD6A2046A7
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
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:jani.nikula@linux.intel.com,m:christian.koenig@amd.com,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed Mar 4, 2026 at 5:28 PM CET, Jani Nikula wrote:
> On Tue, 03 Mar 2026, Christian K=C3=B6nig <christian.koenig@amd.com> wrot=
e:
>> On 3/3/26 13:26, Sebastian Brzezinka wrote:
>>> Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
>>> fence->ops may be set to NULL via RCU when a fence signals and has no
>>> release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
>>> this and directly dereferences fence->ops->signaled, leading to a NULL
>>> pointer dereference crash:
>>>=20
>>> ```
>>> BUG: kernel NULL pointer dereference, address: 0000000000000018
>>> RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
>>> ```
>>>=20
>>> Since dma_fence_enable_sw_signaling() already handles the signaled case
>>> internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything=
),
>>> the ops->signaled pre-check is redundant. Simply remove it and call
>>> dma_fence_enable_sw_signaling() unconditionally for each fence.
>>>=20
>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>>> Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
>>> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
>>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>>
>> Reviewed-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>>
>> Going to push that to drm-misc-next now.
>
> Christian, did you forget to push or is there still something missing
> here?
>
> Sebastian, for future reference, drm/ttm patches need to be sent to the
> dri-devel mailing list. I bounced the patch there now. See MAINTAINERS
> and/or use scripts/get_maintainer.pl to see where you need to send the
> patches. The intel-gfx list is sufficient for i915 changes only.
>
> BR,
> Jani.
Thanks for the guidance and for bouncing the patch to the correct list.

--=20
Best regards,
Sebastian

