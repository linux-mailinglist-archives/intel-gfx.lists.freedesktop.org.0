Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E69C30CB8
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 12:42:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E5F10E5C7;
	Tue,  4 Nov 2025 11:42:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZ6nIYYy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EB610E5C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 11:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762256564; x=1793792564;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:references:in-reply-to:mime-version;
 bh=AxBVZPfNGceWm+0KX9AEROri9dT8S4puvOpocfgAW64=;
 b=MZ6nIYYyqxrEfyUsuM/GDe+xtQdculjjqEoVUMUQIipUhBBHYIZTynax
 lbqyb6i9dUIE1udDiwchObWfmAoIzDAxXilr6TVjy8V288/IfiHAoRmCW
 W+I/O/FyjQslp0c86l8r5oIJOpd1+9SJEtgUacyzCcBVKl+DQGFtV80sI
 2OhuJ3uxou3/g/kp5pmXpM+l5drU6fGhqd2RL8veRK229fpUcNVZF5bx+
 irmDR6EP/rWNtK9kFpXbSbABcfFV+zxD2H2fYT6OpJjY7UqCXpfTv5yHD
 0k39BBPETmdG0lKoepye1BDfId9uyAc8egXLPE+O0GmshjmMhWcbYD6He w==;
X-CSE-ConnectionGUID: jeJFkrvsQuOEgKk1UnXYtQ==
X-CSE-MsgGUID: uZ9dYCN7RNC/gGVm4tZ38Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68185197"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68185197"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:42:44 -0800
X-CSE-ConnectionGUID: ZXRYwWEqRP6xkVvncZYn8A==
X-CSE-MsgGUID: eCEOA1+zSS2ZHxjotGeeCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="217780570"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:42:43 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 03:42:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 03:42:43 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 03:42:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FJSIuDnSuhkNHVlLfgN83pfuQZqdLCU3zf65RsJWy4/TqGl6SXD56a7XDuE2PfkMmqikotF3xqzhU74IAc3KKBLa7IfUTn17CVWgXuOrdXZHJXb3xO5yHUpBerV6kE77RPs8v6AMmTZaAG238bpMeAYxTzeTaQmSSTHZ3h8psIehvZ3pIwXLhh6OnF3UFxhV56tKAeZPMNyQS2g9yO7V9xDOdCEcgRsTZnd4SedKc7BZvq1I+z02mczSIyxMNNwN17uM0EEETAUMxyJCCBHf2v9J6NBwDaHfRqqCdm5vsYhiHPJtVUnDKA+HJqarrprR918J4cTJpleDOVaD8KsBaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzeYAgxNnVWiB7Ko8CfA+fKyj+jOCDLUnIKWfEhOCho=;
 b=PC98V04gXlcGQh+HZ0ZCGmuKKDav5tRmLwok/Rnun6+1Jd6Jt4ZeP+nJwaeFEtcH7ctGaWwHs3PeEFRiaEL7inCEwmdtYI0RrIKf7vrq50dG9oUq6dFlcKvvdbYOOSd1gKiBymblvzVMfcgCa7cX+l7Fygnnh/4iQch9yRB9ZjB/tn6IM4jEF9Q37Hhz6nDe5+7KDyfrsl5V6mWp+FHikvruIRrm+tSbEJYjCcT1krIpkoM3DI+dENetd6LDZcCg+KLtbHEav2VyTwcDB0jopc+h3f1tWeCoRLAN0WUSAsGlmslqGTmS4A5bZuSBmjwwrfbUMxuDctkeAe2v8Lj6Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 11:42:40 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9275.013; Tue, 4 Nov 2025
 11:42:40 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 4 Nov 2025 11:42:36 +0000
Message-ID: <DDZVT9PA03KT.LR5IN7DU0JXA@intel.com>
Subject: Re: [RFC PATCH] drm/i915: Use rcu_dereference() in hwsp_offset()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <krzysztof.niemiec@intel.com>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20251104113318.3823840-1-sebastian.brzezinka@intel.com>
In-Reply-To: <20251104113318.3823840-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DUZPR01CA0077.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::15) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MN2PR11MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: 6353e92d-337e-4044-f704-08de1b974295
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDkxenQxZEdnV0c1RzBjQkJGYWFkQ2JvV0VqYktxR3dlT29LOHhneEJPVER6?=
 =?utf-8?B?SVBkWkpYdENxU1MvNFYvQ1A5YnNCY2M2b1JIZCtlaXB2MnA0MTg3aG1jVGlS?=
 =?utf-8?B?Yy93Ujh6dENnUXcxOUUzRVQraEVPaVFwMDlyNmZiR21IVWIycWxuSnFwQld4?=
 =?utf-8?B?djlQamlNZDh1dlJsakxZQ1JCVHJxL3AxZXdvaFJUWnpIaGJ5QkV1KzJUTHRa?=
 =?utf-8?B?QXo2Rk1mM3lIdmJONHBZYzNlTTBsbTBTeEZ6MUxpMDVaWFBDanhXaXQ0RkZo?=
 =?utf-8?B?L2FzZWMzWlh0Qk1pZzloMlQvL05NakYxeUw1TC9aMmZsT2syR2xENFhRd1Uw?=
 =?utf-8?B?dm5MYlFXUitUYnV5S2hSZUZWRHhlVTc5WDV1R2t1dm5SL0UzRXpUSzVtMkJ4?=
 =?utf-8?B?dDlIZjRHMnVpVytPVXVrcUpnRHVoWG45U2NnZ0laZTJLSld6ZmIrRmlrSU9E?=
 =?utf-8?B?ZERzVFFoOVR4UksxSmRyTFRyNXdieCtFQmN6cWpIVDd5SmNnalNiMGZST3Zh?=
 =?utf-8?B?NjlhZ1dQSHFMa2pnZWlXZkV6Y2JHbmcxWTNWaENWVG5pdS9tNEdQUGRMaENp?=
 =?utf-8?B?Y1l3b2VWT2prVW4yMzgrRHhvQTg1cDZScnZpbDVBeTFuci9kQWxEa3c5alVv?=
 =?utf-8?B?ZXJsTitJdjIyOEwrcW83OU5hNDNCSjNPbU1IS0xvUmJMN2JGdDd1WEljWWts?=
 =?utf-8?B?RmR4NDhQYU4yUmNlTGR1QU9yeXg0STFYcFNuOTludFgwNWVCOG5iaEJZd3BJ?=
 =?utf-8?B?ZlVLbFFIb0I4UFBoMDVwL1lGSy9mMGxVaFlaVGhobjd1bUl4VkRacVZwS0pv?=
 =?utf-8?B?dUQ3RnhTL1FkUGRTRlQ5dUpJYi9ybkgwVDlsMWNQM1VGdDNVUXUrZlovK2RY?=
 =?utf-8?B?K3U0YnFPY3FzMFQvVWNrU3BJTzZvaWVDZCtSRTY1REo2bkJ5RGw5OWNmWDhF?=
 =?utf-8?B?QmxvSDRtZy93L0RDd1NIazZnRnJNQTdrSmFpNUNlS3pVYmlrQXlZaHVEbWpk?=
 =?utf-8?B?RktGWVQ5U1Frd2tRSU1FOHVzNVNHRi8vZ0M2ZmljZ0RJSWFvWFJSQ21YanJV?=
 =?utf-8?B?TXkrL0VjRjlRdmZyQXpjaXkrWHc3L3Z5aXNEVHhabmNQWko5blFJaHdaUmFh?=
 =?utf-8?B?c2Z1SWg1MENMcG5xUUNUNUlJdkEwSjZ1WGxHZ0NZOThodUkveHJ0d04wc0JD?=
 =?utf-8?B?VGhkZ2xKaldWdUNNV0Y4SHBlT1I5Z01XeGY5dDg2N05xWjhadGhubGRLMmNM?=
 =?utf-8?B?UlU1VlA5MGx5UHhDQXdzMUlOZGFQZ1dqZ25tdk9uS2p6VTBTd3RPYmUvck9t?=
 =?utf-8?B?VzlzY1J4eUhtd0ZNRUFLV0F6eDA3SG5BVXM1TUkxeG5JQjU3M0U1TjlXNjJM?=
 =?utf-8?B?aTFNeEFaQUUrT3kzb0laSEZIUm1Md0V6VG5XOXRnQjAxWDM5ZW1acFlScUlC?=
 =?utf-8?B?SitxemxvYk9EZlJwb0ZrSERyQUh3eUxWNDJNQTdSZ2NiRDEweWxkeEVUdnJQ?=
 =?utf-8?B?QVNHUUw5M1AzTVgvUWcxNFlhVWdQeDdVNjlFdW5kZm1GUkltcXk3V0NHRVpH?=
 =?utf-8?B?RXA3bjkvMnJyYmtjV01GUTl5aUxYQk00d2RtQmp4RGFOSDNJMUZJbnpwZzF6?=
 =?utf-8?B?TnE1czNGbmt5Z204N1hwTE9aQVFpa2JjdW9uNTJaZXRML2xRTFdsbndFbUZK?=
 =?utf-8?B?NjlhaE02dFlJMDREbGEzNVF5blRlOVhobUtEQnl4RzRjQzV0VXB6SVZxZDYy?=
 =?utf-8?B?WVVIZW1pY1l3Tzd5bTZtN2xxMXpmczdTQUExL3NKVFNzL3FYZzNFNEJNL3gy?=
 =?utf-8?B?UHdmbm1nUmg1dVhCWHF1SlBXTnlMY1JTOHBnQjZOSmxkQ3JXUXFWd3Y3b3B1?=
 =?utf-8?B?VXN6dHNYS21xd29vSER5ckd0MXBDZURIS2g3Um9Qc2ozK21YejV0QXdSd3F1?=
 =?utf-8?Q?gLoV93ZVQ0kB1QAf7Yrg55AmSptY3P4s?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzJSbUp2ckxFK1NVODVXS1V4Tkg4Mi9LNjZWZHkvaUErWTYrQlUxeld5VHpy?=
 =?utf-8?B?YXlYT2pGa29MSXlwNzNkZXMvZTd1dDh2MHQyUUFiaDJLeW95YkZwNUxiSU14?=
 =?utf-8?B?WFI0STRvRFdhN3QvWkg5TnRqU3JJTHh0N0VyZmVac3ZOcUUrY29zWWFYd2hB?=
 =?utf-8?B?THNHVUhkNVF4RnJJcEFQZDZlZ21wNEU4T1BBeWpxbmsvWGpCSFprMStJV2hz?=
 =?utf-8?B?L0tPazVCRkZDdnNjTm5wckVDNS9UWUFLOXRqWVdsa0x4S2hMS01MSnUwR3E3?=
 =?utf-8?B?bVdEVkU4UkJXQXhJd2Q2WXpETmRjSHh1SitLTzc5ZmdqRkRmVWNFSkw2d3RO?=
 =?utf-8?B?R0ZqbWx5YUdyc3k3U2tvTnBUNDFVSTBaRTdXZ0N6c29kc1k2dUlUbkQ3QWNz?=
 =?utf-8?B?VS9hR0VmanM5S1VtR2paZFRXNzgxWXFTZ3M1VFY5OUpHZjFvTTM5NVBLOFdC?=
 =?utf-8?B?cFBwdTliem5pcDZjLzMzazcyUWF6WmJsYjZDb0VYQ1ZFWDM1cVBnZmxJTW5m?=
 =?utf-8?B?Tjg5R0cva2o0VjBJWWVLa25FTk9MZmpMUkZ2SUNXMFpxdUVPSUtnMHZSSHYx?=
 =?utf-8?B?aUk0V3FvSWFQVG9tRzgyNkI5dTNVd1J2c1A1bWpna3hGUXo5bEZUTlFGbGRy?=
 =?utf-8?B?QkgyelJNUXQzRmhnTmtsbEZBaEZyV1QxRWJsYVUyUEVXR3hVUDM0bGdxNXBx?=
 =?utf-8?B?UytUbWtBZXdQL3dLRnNMNXRKU2IwQW0xMVZxbFBMOFJja0s2VlVoM0FTVy9Y?=
 =?utf-8?B?VVAyeTFLRjB0R3VJVjUyUXBiL0c3Ulg2TUthNFZySkdqdW9KSVNPendWZHBo?=
 =?utf-8?B?VHptV2N3NUJEMzZmMTVjeFNNeHJiTktXMVFhdDduc1U0ODNQZ2w3RHhwYUxO?=
 =?utf-8?B?a1lZZllTcmhTNERlTWhFbzZKcDNwT2RJbnBtR1locndTNDRJZkVsdE84NHov?=
 =?utf-8?B?SWx1TWhPamt1a2dSRmdUSncwYTJPN1lSMDE1NU42ZjU2NldMWU0yL0dtWmZ4?=
 =?utf-8?B?c2htVGN4bGdBOGx1TXN0WWRPRFEwR2FwLzl6bGJiQXBYa3NlNTRFWmpkQjlD?=
 =?utf-8?B?K1hVR0Y1MmxuQktJV0tEeXVDbTVWbW4vclRpZDdSL2dOWEFoRzlmajZQa1Fs?=
 =?utf-8?B?OGNpa3BPcGVwVm44cEVoRy9ETlI4emM5QVlrL0VVQ09ZelZhMHh1THJ6ZlR5?=
 =?utf-8?B?ODVJQ0tLVytUY2RNaWsxY0RuZklsNHNaWDNjeEFjMlROLzZqSnVMSVF0Yy9s?=
 =?utf-8?B?YmRRaEpPOWtpS05XOXJ3Zzc0SGNLUThWczQxM0xwSlRteGg0QXRGU3lkaWVG?=
 =?utf-8?B?ZXlkU2NQc00zSmMvWE8zZmxoUXpKMWRxa3pvTGFuZTRZNzJnSUs2Wm1GdTNQ?=
 =?utf-8?B?RkoxUi85UzVHaVZCZ0FtV3NTZUM2T3IyZmFZeVVTanFOWWs5SHRzaXRnVlFB?=
 =?utf-8?B?VEZVcHllcHVnanZQUEZQeTJTQWt2aVBucE1WRDVkVkdYbTA2ZWhBWDdhOEQ0?=
 =?utf-8?B?Q2k1YlBZdG5qbENYa3lFaDBnR1YzUGdZYUVTZXV0N2JmSFYrRDIwaUM4TU5J?=
 =?utf-8?B?UE5Jd1EzT2FEWDJSQWlXa0xGRE9lc3AxaEZ5dUsrblRWdmpMOVVwVU4yamsw?=
 =?utf-8?B?NXJ4Z3Jkb043VzlNd2E5NU1wRjRGK2NIMmM1YWZRNkkzWUpXT0NUbEdCVll0?=
 =?utf-8?B?NWFZdUlTMjdhUzRIekx1bEVTMTJ3cEY1YlhLbjZWQXM2bWJlVTJHYUM4T1dn?=
 =?utf-8?B?bUd3aW1JOWtvZEhlSkpHOHFPdk1IekpCTlUyUlhqUWkwejNCN01xRkZPSFlJ?=
 =?utf-8?B?bHRCaVFuYWcxYi9VZmZ4RlRYMGxYdm11c281NTh0bnI0eURFZ2VCT0czZUhu?=
 =?utf-8?B?TE1ESi9zL0tQNHM4Y2NET1I2bHkvbXdPR1lqbFZnMk1KNlI2TVk4eStKRC9M?=
 =?utf-8?B?c3hpLzFUMVVTbW9VVE1hQVVxa3htWER4OE9IQ3pNaytkVUozUTU5QW5icCt2?=
 =?utf-8?B?UC9Nbm9pZmorYzZPUkZ1czJsWWlkdHZZc0I3WWRzMmNyaVNFTmVSTVd5Sy93?=
 =?utf-8?B?MEFDcm8vb21yMUpyWG81Y2VjRVpHbFR3WUNkWFJhRU9WK3JFZmVqS2FGZWto?=
 =?utf-8?B?QitrYkhDdzV3cWFFbktSeXFac29WK0NtdWxkakY0YVoxSlV6R3lTZG1VdHYw?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6353e92d-337e-4044-f704-08de1b974295
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 11:42:40.5254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3aoeinc80x+mhDjOei//HmurvcSAOCwpsoq5+IHJAHLZurarSV47g3LSVsjBrp+IYHsxjk7hVWrUbh3Bo+LoTWnfJs2FUHf8EieTn5sFtpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
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

TL;DR:
1. If rcu_dereference_protected is intended to prevent use-after-free, it c=
urrently doesn=E2=80=99t.
2. Does anyone know how we end up in this state and what the proper way to =
prevent it is?
   Adding an if check before engine->emit_fini_breadcrumb feels like a hack=
.
--=20
Best regards,
Sebastian

