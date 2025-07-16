Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B83B071E5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 11:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0121110E76A;
	Wed, 16 Jul 2025 09:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DtHJ0o3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A915610E76A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 09:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752658650; x=1784194650;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ny5tWuCjUefnwMMGDzyuWPdJLl7s3sHQD60UrQMGaAk=;
 b=DtHJ0o3nRTdBFRA13xBDIhuAgXMmCVDCYbngVCqFcLeAid2sjwWViFrJ
 Z4Csm9ZAW/0dl0bCGbTsnnERP0wsVglFF2fR59Gx3w4mcGR2zs/txW3H7
 sRau2HG+WIsqy8NHbB2yoNQosqddMFrhCHS9OfEBooOiKiGHTi9mZRtaK
 Z86qseI1PcIh5SloyQQOkjDrHVfZGFESvzUsc50zu/2A5U51TCO5awbQk
 +8NfJu1+hqOqj6/C7jPVELkDznzAY3q3EGHa97XdKMQaVlsMFUVj3QHmV
 txzAL9Wn4krY1Pk9BR0tPMvLkJHdVg/1yaRT/xxupPQ+iFNqmBRgk9sGn Q==;
X-CSE-ConnectionGUID: EHvygj16QmSB2NhY0C06bw==
X-CSE-MsgGUID: XvpkiDzFSKS8grjLLlHDrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54007461"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="54007461"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:29 -0700
X-CSE-ConnectionGUID: rbkn9wRGQAeTiV3B99CQ5g==
X-CSE-MsgGUID: wJBCs0NmRReEPmtjYtHebA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="158008777"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 02:37:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jMkqcJXWxbNnjky4FvgYzmLGiJFkHeDBR1ROLGp0aAH14uT1wq85tCnAmBQqB6/GQ26qbEWdqiKKtNDSEBUz0Gszp80iQ4f3noR8hZsScXIVpCs4sB0eesXtFtX+994pF7xup/147WdXIuOfjgEs2K0K9hVbZm0hirl/Q+Itiv+s9T44atBh9zSnxz/GHGYCDphEAeJxz2yRJHjZwE2qRRMvcfiSonUxwh7j6jcSS95MVSfmJ4rehdutssLuNYbkMEvfhEh5WsEF2Q/GH8Yvf6w2hsf5Kf/SCdPh9KJ+H3YtyqkYoEzMokopwaUrN1SwpzhivFoJERFJW+OKn4oRxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWH266BQXSTt+0MjykhAIbJPd5+V+BkjNxV5WgKBEBg=;
 b=MehbTj1w5H2Zhnk2E7noeKmYaeDhBtP8oIEp8N928wDKi156YIYNNkMCPIFDwfyXuzvYJN55xEgxs3r0t2Gnr37o2YT/lmOghxetGA5PYRbubQqafXd0Vtysb7Pejh4mVMEHjmf7aXUZOCV+kvyOtWWMLieOeuN6V/vt6VC0RVN+ZUrwHZabOkviewZ7khkh1s9lgjjCB+v7VZ/uTnpnnqfCb/Bc9O9F3nXSCsdLuvs6YaH2sGnuSvNZYuPEdE5kgm7WXxfMJyNB9D8BTqV8iafD1jxMRbe8/KfwLYBD+06uN7kQqvow2ikmPdLeVv78MnGiESysgJ+E+7jXezizJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 09:37:24 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 09:37:24 +0000
Date: Wed, 16 Jul 2025 09:37:18 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
Message-ID: <20250716093645.432689-3-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1P195CA0065.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::18) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|BL4PR11MB8869:EE_
X-MS-Office365-Filtering-Correlation-Id: e3139895-899a-4374-c265-08ddc44c5eb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFF2RmV0OURUZCtlNGc2Q2svbzZ3MDdHR1VVcldscXkyWXFscFVJSzVqTnBw?=
 =?utf-8?B?S21pRkVKUThHREZUaHM1K2E4d2R0WUhPRlNwb2Nyc0p5OXVUZDgxbnpIeklp?=
 =?utf-8?B?Z05wTXMxOFVLTnBSRkk1WGFVa1NYZjB0WkE0dER2SzF5Qi9GWVc4TlQ5dXdm?=
 =?utf-8?B?Yk5IbEJhV0VCeC9OTFFzTEVmU0syNXkrUkQvSFFFQUMvczl3MExQbkxPaWVN?=
 =?utf-8?B?bHFvdTZ6SytiSnVGSGdwUlNuKzB3ZndrQlIrRXlvalpBbysxc21yQ1hEWGIy?=
 =?utf-8?B?dG1VN1EzVVhTc3NrOVI0WEhRUFNIcUNveS9QSVZWcmVXaTc2WEdUdGJmK0Nm?=
 =?utf-8?B?QVB1eHorNkpwK1lrNFlNOG03OHJ0SkxlTmN5UCtCMU9IaHlXZjNlcDlDR3NZ?=
 =?utf-8?B?NVVWWnpxVVhhd2pBZnFCdGVQZUpraWNDYzNqdHBaZEM2aE52QXB5Y0xuSTlv?=
 =?utf-8?B?ekRlVjRkZTBWZVpoWS9VdytseEQzTXRXdDFQVUxRdkZBQzZHdURLbmdwcXFZ?=
 =?utf-8?B?ZDA0a01LWTQxcjN6WDVYL0VXQk5zYW9tNkRZd3RIL3pESlV3N0tUR3prTGMr?=
 =?utf-8?B?bUJjSWNieGpJck1lcndtOHhVRkNCNmJzRm0wVk8zSHd6NVZyK2dOQlVKYU9s?=
 =?utf-8?B?NlZua1VIZzB4cUVzbnlZaFpSZW5EOGg1OS9JVGhPRHV3MmFDbDZtT0tETnI3?=
 =?utf-8?B?VkZsOTR3SWZmREkxenROS0FxU0hWUGtlWkFYVVRLZmRsVGE0cmlYMk16UklN?=
 =?utf-8?B?S1NFY1lZa0FzYUVjRThvejZ2OGUxY2FGTnJ3ZWVJMnU1Z0dsUTZDSVVDQlEv?=
 =?utf-8?B?bDVvVkM5YzRqS1FaZlpwSU1uN0diNHp0SVN4TG9VRzNwTHR6Wm9OTHQwUjEw?=
 =?utf-8?B?Qkp2UkFLSmZsVk9qaDFRTnZ4WHRldmRwaEZnOThoOUc4N2E0NWNVV3dySEZr?=
 =?utf-8?B?S0xuR1VIUXhIMFhhUUprZkFDMUl0K3dUMlRMQmJUbjRHelZxUnJBSWtwYm9Z?=
 =?utf-8?B?bnB4c2FOZlcyUHZ2Z2xhYUhFNmtBS3M1dGw1M2pnUU1IWDVTdkhtSHZIcnFk?=
 =?utf-8?B?YWJ1UzB0UCtNdXl2VW84SERZT2RNK0pKUEVudTIza3EweUwyU3RHOGttT2dS?=
 =?utf-8?B?VGV2Rm5DTGlnamxkQ1hiNDdZUEhHTTZWZEwraE1wSVhJalFVZGtMVUt0YlZJ?=
 =?utf-8?B?VXBxWjJBUnVNWXMxOXZUcUVWTm5EVW1LdUNpOXZ2WHI0SU5sWkhIL0VaVENL?=
 =?utf-8?B?MDFoYi8ycysrcEtJQUpzMUZ2QUxkNzhERjJmMkFBUUhzRUJicWF5VkRwNExq?=
 =?utf-8?B?SFFNR21kZE9KMTlFeld0RUNEd252NEVoSU9acS9ML0tHQlFaUkpMOThiaTdX?=
 =?utf-8?B?Q3N3Z1p0VHBYVkx6eDdxb3hEc0FqWDhkckxkdjFjMkM4RzV6UnJRK2JKNDlF?=
 =?utf-8?B?dzUyT2VNYnB4N1BsSEc5enF2Y0c4OWxkSCtJR3QrOFhVcE85YjB2ZXorVmI3?=
 =?utf-8?B?blJrTXhER2lGWkNZNTRKM0plcjJLREtPY2RXai8vcDA0TUc3eUFlQ0w3aTdh?=
 =?utf-8?B?QmwyWHRoNlFDRTNWb0Q3QzhxbGZ3UDA5SE9OMy80Rzg2K2NFb0JOTEdXaGtG?=
 =?utf-8?B?NEVacFJid0R2enN3elE2T1pWdzQvNm1tVnNhb1h4TVphUnhNL1ptZnFxUWph?=
 =?utf-8?B?QitwZmFzY3pTek1LQTdJSFJ1VUpZM0VrWjA4M0NPVkJoeS9BM1RVZlMrZDh4?=
 =?utf-8?B?dEs3SkM4RUNQK3VMQjd4OTlOZHNWTDR1ZkM2NzFTTHY2WjNHamFFd1VWeEpm?=
 =?utf-8?B?VG5jaVRLcFpPWVFITU84SlNlVEdrYms5dGZ1VzhoZEZGWXhVZjlXZExtbUVr?=
 =?utf-8?B?dU1TQzFpbGMrZ3ZvVUo1WkFOSm9NaGdVYWo4NUJQRkRPZ2RlY0ExNm9uY2dZ?=
 =?utf-8?Q?MJfr1EB2fV4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHBzeWlNdnNqWUJJWE01eG1JQVFDZVF6NUIzblgyQWRldFJ3Y0VZM3UraElB?=
 =?utf-8?B?WXBlZGo3ckprL2ZWUXJtRkRtbUcvUU1UNkt3clF5VXc0SDdKejR2QkpQWTVt?=
 =?utf-8?B?MHFSMnlMbjY3ZCt3V0JWNGJYM08ya2hlNmhSZ3VmQmNBWUFGSHVPSFNpQnV1?=
 =?utf-8?B?ZlFqWUovbHpldGduN2UrZ2h3RUpTeHZVMGd6VXI5aWdIM1YvQkpXK1ZJeFlH?=
 =?utf-8?B?U3pZN0xHT3BqbkNJWGd4d3NrYzFJRVhWZUc3Ni9Md25PQTlsazQ4VXZTREJD?=
 =?utf-8?B?a0JtN3RqOTZFTGQ4cW5BMEdSVDBPVmhxT3VHdk1reXlMVXJQMkNXSlRyemFW?=
 =?utf-8?B?T3ZWbU9jNnEyYndGV0s5OWQwckp5c2hqZWpnUmJaODVhbG5KenRMVG1nbE1S?=
 =?utf-8?B?aGtaQXFVUTJJZjZ2NWxRdTE4REhGWUQwMFZpRjVFMjBnNGtiTEszTVZ3MUJ0?=
 =?utf-8?B?MEltYmg2bnNsbTVSanVhSTRmVGRWRE1NZ0pBKzBCS3VWSlU2dzBrbVdmLzBC?=
 =?utf-8?B?ODgzVUhUVFlhVEZtenJHazhkR1pLNERuN0NCUmNTbGZQVml5N3NhbzlaVlll?=
 =?utf-8?B?Z2xZbWhxb1hTL0xmcy8wNEI5UHd2WTkxeVA1MkxObTlaWllQaVlwRDlEL09l?=
 =?utf-8?B?Tk5sbkdqRkNtcjhwR1pNdnc0SlhvbEdoSTBucmtxbUdwbkoxYitldXJURlJy?=
 =?utf-8?B?ZjZtR1VBWUFyRGtHeFE5U2RMdzF3OUdpTTdDL1Z1bi9FUDRsRDhoZGJOQ2tI?=
 =?utf-8?B?bXhxTjhTcHIzdExqd3BCeFl2TkJxd2cySG9GMWM2bEh1aFZCOXVJVXNHdjU0?=
 =?utf-8?B?QTNIZXpUczhaWktMUzdMVm1EV2lkUktuaVQ5QXJxT3B4Q2pHMVhzNFI4NHFJ?=
 =?utf-8?B?S1ZuUS9LZWhxTGhHZDVkTTllNVdwRDE5RFNNODNUbm9mWnN1ZWRnaStoZXZx?=
 =?utf-8?B?RFUvdmFtbXVvOUhjSERuWXZxN2U3Q2VybzVrU3hYYzI2ME9ldkdhTjVZT1Jr?=
 =?utf-8?B?VU5HTThDMDRDWjdWTk12ZVNZK1lUYTk3VmtjSTJaR0NHSTdZZ0lneFRwNFVx?=
 =?utf-8?B?Y3B3cWh5NkVxMFJDM3BGTjNZelVqdzhzMXlJSm5vTmFvc056NTVqSG9HcE5i?=
 =?utf-8?B?Tk9pNmY2N1daQTVzajZWa1R5QnM2N0IvRlE0NEd4N2NONFRYMFpVdG1zSG02?=
 =?utf-8?B?MHpxVDRVcGRPaVJuQUNIUlVYdGJoczhNc0E0Q1l4K1Z5ODZJT3V2eWNoRnpk?=
 =?utf-8?B?YmlXcWhIZjFXUW91SFlUb0h2cUROL0hSZzVuSC9Ca2U5dVFjTUsvQjVoeG9q?=
 =?utf-8?B?SDFDSDNOR1IxVjFZNjNiWGV0dm9xTWdqcndiRm5WMzVva3gvUEljYnhyNjVj?=
 =?utf-8?B?RUJFUzM3bWcxVmltcE1tY0RzWXRRcmY3d3RqSWpCRXZNRkVjN1Z2TlFXS1lD?=
 =?utf-8?B?dzhja0YzdEFrUzV2VVA3cndOU1ZYaXhPTXFwT09KdGk2eDhQUDhPWEZzT2pz?=
 =?utf-8?B?RXVuUjZVRHI0MWV4R1FiM0xEV2IrS3lyWUJZK2NNSzhQNzNKTW9OaXJFWVNS?=
 =?utf-8?B?WERhY3RldVJNRGRhZmp6b2tTTUdxNjB3dFRmOE9mYVZONEpSdVdaQWkwS3Rr?=
 =?utf-8?B?eW1tSFEyVDJFQjJwRE8vUTJ4VE9hZG9sRVpQSTZ1Tzd5REoyN2VBRWhVOUYw?=
 =?utf-8?B?MXhQaUMzM3pTelZyeXQvVHltMzhmYUE3ZG83cWUxOTRTdnFHaENSdmdhNWpQ?=
 =?utf-8?B?LytBelM0NXBMNlEwaVFIeXMzOWtKY1NJVlhLdmRtMXpXZ1htQ3Y1bnZodG1H?=
 =?utf-8?B?TWFCRDBMamhLYWw0Y3NyRTZyb1ZOQ0JkbHBEeFlNT2tja0tsWXF4U2QvbTN5?=
 =?utf-8?B?ckR0c3RoSTRFYXBodFpqcm80cURGQUxVQVZBNE5rMFh1TEhra3RjR0FQZEhQ?=
 =?utf-8?B?UnFlODJYK0dyTHR1SFl3UjFLZ0JaeEFuRkdySGFPRnljZ3lIQW50N0tSUEtw?=
 =?utf-8?B?THRNdVhndzhPcXl6SVN1YkZIM1JYaGV1MXZzS29Ya2l6UUtTSWV3bHltWUJ6?=
 =?utf-8?B?ZFVlNnpWQ1dBRis5dWlVNUpNRFpBdHcrbzlkY0pjeVJJNkN4WWJoWktOZGll?=
 =?utf-8?B?NmVWTWRrRG1JUXNtendUTDdiK1Y4QlZTdjMyaVJQWEZESjRSbzNnWmdLbkhE?=
 =?utf-8?Q?niJBaMppAQTwZrR03MSPIVk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3139895-899a-4374-c265-08ddc44c5eb6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 09:37:24.3235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tCjlWSym7VetsfqNOUlrp7IPLRaxu3gocgJ17KN1ZcY5avgBVhlSzq2UUNfY3lyDziN9b4i0Dh8WO0I11NIKm6Y40Dd6Ru9NTVWFsIRTJ3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
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

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b2d940e89bbb..b2660445bb51 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1382,8 +1382,9 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 		 */
 		if (flushes & CLFLUSH_AFTER)
 			drm_clflush_virt_range(addr, sizeof(*addr));
-	} else
+	} else {
 		*addr = value;
+	}
 }
 
 static u64
-- 
2.34.1

