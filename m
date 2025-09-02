Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12BDB40309
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A0E510E6F1;
	Tue,  2 Sep 2025 13:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REB4nhWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5491310E6F1;
 Tue,  2 Sep 2025 13:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819666; x=1788355666;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=nP/pDJYnvL0vI6FigA63ywuYDhKou2RKvNfNj1VAkcY=;
 b=REB4nhWEmRYyXafzyvtkqRGbJ0VoclUQNtk8o8B8wNRNBGT95zbbmRsw
 ef2sYJ2pFJ7aPn1UrSEiySRihpTLsFVUOcjC1kzFlqys/ro2ScBr1pH/j
 N4lsHUe+9Jiz5Mn4yFFCD1iF0E7xnYILRGb2YCxt65dkUeIE1z0ofwTZ9
 kZ2zbqegSbFlY3ICDDp0NMREFAtSJK/KhHj2X099bLKsIgDowmXJbhjGC
 oMjx9n22kMh7qmmjswh0YggiM2oim1PITnY9Cc2uMPObHPkGKshnlc9gD
 l732HLjblPZSXmdQQehcWnrFn9KPelOSPpcx3YKA+jn1+uhI4TtxHnVox g==;
X-CSE-ConnectionGUID: lHsILfl3TpWe5s6k0HN6eA==
X-CSE-MsgGUID: XpRAWkzBT6i76AyVLHPQgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="76536195"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="76536195"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:27:46 -0700
X-CSE-ConnectionGUID: nud2WWPdSX63HaCK5d3gHA==
X-CSE-MsgGUID: Unc3TVKwQ+Kgc322sKiRAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175413045"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:27:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:27:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 06:27:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.88) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 06:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHd41YXHaXsVt4OpdSAhBBjKXUCGy5l4U5ql2ua09Pk+7JxzwclobDcZ4/o5oqB+UnmztvyG2cvIw9uUWoi1tUnv9B9P5u3334jNv1Nz0at7Lkyqmv7dqxer3so3uVHu9g+zglAgeXE3oNd2HRIdAmmO7mwwI+hR86X0Tc8AnlOABapMSrQnWX+BExR/QxSfrR2HhzF0hUBkEdYMoAqLFg+0h5U3ZXq/TZVvNtsxGqSUx2mKrWZe88eScZOMSbIHpUKWpxUadFszUJ44sgMLU1L8jjzDj/2BO+AlYJXQnXDG8DECCpKf1bU97CCmGXtAYdph9k1LVCw3lU3jqxau0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nP/pDJYnvL0vI6FigA63ywuYDhKou2RKvNfNj1VAkcY=;
 b=X0DuGVyegtW31B+bcE4zdzOWtNIOqhs5wV4fDuW/UhiKxiHM3bZyXRx46ZxW/Sf6Xq0sctRmocEmhSY3AfB4X9w2rB0d3Sq7jqc8RnPtl+GPEEn/cqLrMNTXXmQ6FmSL0igWnpsQH7b5+OWgzK41gLmFpzpcjDP16JhSZcII0YHvQbLVajgYfwpKKzBpoLNgmKZMLAwf4lCgJoZiLBy09SF5eq+99ibgHUYsSmHD4Xjre3UHG/UsVbN4KpAnjhD5Nyk4fuQX8U+1nBbdBMLln8axWVKnDeSOB2W4+pE6X12/SwwluO8hmAVn5jvuS3QgGmZhdWwiC7LSs3iMtcgIYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by LV4PR11MB9490.namprd11.prod.outlook.com (2603:10b6:408:2e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 13:27:44 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 13:27:43 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 2 Sep 2025 13:27:39 +0000
Message-ID: <DCICLDOBYASE.12PDTHVNECTUV@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
Subject: Re: [PATCH v9 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250901170003.1582933-1-michal.grzelak@intel.com>
 <20250901170003.1582933-2-michal.grzelak@intel.com>
In-Reply-To: <20250901170003.1582933-2-michal.grzelak@intel.com>
X-ClientProxiedBy: WA2P291CA0035.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|LV4PR11MB9490:EE_
X-MS-Office365-Filtering-Correlation-Id: 24b116ca-7a0d-4c67-4738-08ddea247f5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHdLcUg3R3ZwQjNvcEJrWG1MTmd0R2lxYnQ3Z2lCdHo1cXk5ajZHSVByZVVv?=
 =?utf-8?B?elZPM3lEanJQN1djUWUvMHgwYUN4WVNzVlcvRGF5eWwrM3ZJeDdNdEs0QUVQ?=
 =?utf-8?B?Vk05SFdiaEhzQURlZjA5OUdyamM4ZStxcEQ2dUFpMDI0VUZaOGJ2aGZ0OVNv?=
 =?utf-8?B?MzVVRStCWkp6QlB1TWVVU2h2M3NTa3lWSlpmR20rWjQyOXBOSVZQeUFTVmJv?=
 =?utf-8?B?YmNBektURVVHZTBYWkU3aFYzdW93VmllcGoxQjVmMnRIa0xCZXF1aXhFWlBL?=
 =?utf-8?B?TjlSM2t6TG9aSEhjZzdzaHlEeGEwbWhaSndCMDBrTHJQVENUS1N4QmhnZ3hE?=
 =?utf-8?B?SXJSN01xT3ZvTnQ5NXh2YkNyaHhnSDdxYlQvT1BZdnk4Tjdkeno0NzN1emJN?=
 =?utf-8?B?UFg0bTVRVkZKRjk3NDVHQ3JkYTJnTmNUTmdtRUpxVEtrbUZuN3REUHQ3Uk16?=
 =?utf-8?B?QTQyOU53VUNYUTNxUFlWOFBRbXJoa0ZaWUVWSFpjeHkwbWdLMWYyRm5FOSta?=
 =?utf-8?B?RUtTSm1wSXA1Mm1JeThLL1RFbFdoZnREci9jNkk5QXpwVHExbDhISnU3bTQy?=
 =?utf-8?B?M0Jqc3FFTTRtUUtSR2xNZzBCM1d1d3ZMNThiTnp5UENYYVdPdnZSSHRLQXNB?=
 =?utf-8?B?QW41bmFDV0p2SXlMdXkrVzJGRE9pTFhuUUNzTTBOSUhkcWlqeWpVWVdoVEpN?=
 =?utf-8?B?K3F6Z2tKRUFxYTVhQWpqVXAxZUllbzh4cUtPS1FkWUNvejdlZFo1aVpWTTV0?=
 =?utf-8?B?Y0JhS09DVCt6aE9HTnJ3cEh2a0h1SFp0QnduZUVScjJISmZNUEJPV3lsRlJX?=
 =?utf-8?B?NW9uTnpDekJqNi93NmdpcVVQNDZOVzNjMHJKMHV2L1ZQc2pUdWhITDhVSGt3?=
 =?utf-8?B?aXJabFlDano5Ty8xMG80MVc3YnhyOFE5cXB5YWhSRlRRZmsrRXpubEh5SE9L?=
 =?utf-8?B?eFRpTWNuekVXTTViUkpwbFJKdHNaTWtwSm1oVk9sanV0cWpvejhidFMyVlBh?=
 =?utf-8?B?YzQyWU9ReVc0OTFMa2ZYeXNVT2M5SXE3UW1POE1GeVhrTUNsaEwwbGJiZjV5?=
 =?utf-8?B?c1QyRzdmUG12WWNlc25zNzN0SmRJRVdHa0pTUFdCT1R4b1M0UkNnMm5hTkI0?=
 =?utf-8?B?YTJOMDVRaWgzdUNKZGw2cE03T1g2WFVnREJONi9RWXZGUVg0MEI0QVdPbVhJ?=
 =?utf-8?B?Ylk1ejEzR3FYbXU0Z0JyS1VIVG8yOGx2bE9jS1A3N01nK3BuZ0xBSnRQcm9M?=
 =?utf-8?B?cUVzVjltM28zbDB3K1ZHK3BTb0dRalV5ZkFWQ1hDQS9aZ3RObzZFUUtDTWds?=
 =?utf-8?B?UUtObnFSR0RGY0FxWUxPRWhtUldXeHBDWHh1VXBUVlBrU2VOR21FaVFrSjBr?=
 =?utf-8?B?ZTdPVTBBOUxueU0wdktQRFpxV3Z5WXpuNkZPdTZQRnZxUTd2bmZiV0RsSUxU?=
 =?utf-8?B?L2Q0K210Zzc2RWVTZTlXN2RtaGJDVldiUEd2a0pKalVYcGtvaFhMc2Q1dGx4?=
 =?utf-8?B?Y09QYVNxVGozaEh0K2hEUDhPbklPc0lONDRsSkp5TGt1NEpnNzhuQlJHUW05?=
 =?utf-8?B?SEczdnRnZG5QUmtYQnNRVFpmZUswUE85dUxSdnNjR2trZzd3RjlRMWNNL1JQ?=
 =?utf-8?B?QzhpWnBJMWQvVm1iWGRwWjRBUlZyTjJkUW15VFpPb2RJTXRGZUFMWnRGVXVt?=
 =?utf-8?B?SlZGRDFiSngwUktHUk5nQ0VnL0RjT1hVY2s3TWVmSXRYQkFhYzBDOUpFKzJu?=
 =?utf-8?B?Y0ljK0FFTElVcUlXV0t6SmZNTXZVMjVaNE9ueU9DVXpKTGk0a1hmeHk2cU0w?=
 =?utf-8?B?TGd6WGdDY3NGdzczTE1RUFJ1RFZuQVJETkJneXh5UXFPTU1OT0NjZDN0eGdn?=
 =?utf-8?B?ZmpzeUl0bkhiT1Z3eURvWTJYdEZyWXhzOFNtNmdKU1ZzWExtZit0Y0hWZ1Fu?=
 =?utf-8?Q?NjP6bxUWwDQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzRheFpyYTJmalJqcWRoUnR0K3ZtZGE3OHdMZ2xOdVkyWkFyTi8vREtoK2Iy?=
 =?utf-8?B?Qyt2eWhnNDgvMGVqRkdRUi94UXJqdXRSUlB1Sk9ROXRLdU9lOTFYVVR0cURn?=
 =?utf-8?B?T3Y4ODJzMHdTUXJrN2tQVzdpWVlpWERNMCtZcEFWVGsyalR2OHVveVJVbVZm?=
 =?utf-8?B?VC96S1NWN3BwNFZLSUs5QlJ0amg0R0Z2S2NlMmtyYVIxcmR5Q2kvaVhBMmlJ?=
 =?utf-8?B?M3lHWHlkeGN5T1VnTHQvMGxidVFyQUl3dExwUHplYWVyKzhjaWVMbTR5UFJn?=
 =?utf-8?B?Qm03OVhEd2dJb3BKaTJXZ0syR1JqeVc4bWx3c2RTTXZ3WTBETWZJS2xvYTJN?=
 =?utf-8?B?ZTZDQnV4NzBFWkhSYTY0YmpQYzlmdmFydnlkVFJZMllTK2pNWHZqNHg3NjFZ?=
 =?utf-8?B?dm9UVEsva2Z2dWtBT3owNktOWFo3bjdDTUNEdjk0RVlCTmdyMktTeGFhRHlM?=
 =?utf-8?B?MjRxTEZaUURQYjRtU0tIZWtmOXJmUU5ZNzhkSTE5NVA4Y2RNbWQyS29ITjRJ?=
 =?utf-8?B?RzlRTHg0aHVoRjZSV3ZONlF1K0t5ck1tdDUvaW4zUVdJT2lhb2dDU1hGem95?=
 =?utf-8?B?aERMRHBhcXhIMm1IZVdGeWJ0OWIwb0xERjlaWTlicUVqVEt4V3d4WmVSdEtu?=
 =?utf-8?B?UDkxQXVMTVdIKzkxdmlXTzIyQk83bU5aTzNMTXhWYklLR0Z5d3NVVTBoVS84?=
 =?utf-8?B?dGlJbWtsUWtqN3F5a1I1ZlNMT016bWt2aUFyUkw2cmxCK1FwOHdaZ1JJQUpE?=
 =?utf-8?B?eEJkY3BFSDF0c3BYQVJhK3Q5WVpIQ2R2czlYRUdFekM0eFB4WXhIWXRDSWRD?=
 =?utf-8?B?bGh6VHZqcm5RdUJ1WWd4WTBsMWl1eW9abjBiTnFLSjk2ZnoyQlB3UkVJR2Q1?=
 =?utf-8?B?RHQ3cDNmRE9VeDZmZ3lHOVlSRTdUamt0UWI2cXRSZk45V1NGVjdDK1U1Wity?=
 =?utf-8?B?WGFGOVlIVlM3UmdwcUZkMDlJK2p3Mk05dUVGTkc4bnBDSnBhTytxZDhUZnBT?=
 =?utf-8?B?c21zZ2pUQ1MvQXBPRWpZekFrT1FPRGpZeXVxcGR0NE1obE5NaWc3U0xsV3hQ?=
 =?utf-8?B?SFZqRlM2WXBaa0FjMC9uTElNd1ZGWVJXZFh6aStkdzdPbzJXN2NYL3o4WnZh?=
 =?utf-8?B?M1F4QXRWaDBKcGtCdjBiOUNjajJwWEY3ZmpIci9QQmdsRjJhUUJKRWtoMUR0?=
 =?utf-8?B?dHJ4SlZHMWwydXplRFU1MDZaUys1SnNPRS9HK3RoS1F1N056aFNxZTc5WFNU?=
 =?utf-8?B?ZjQ0SUdUbGtyR0pMdUVkTmEvM2gxaDlrcG5oVUJXa1k1ZlFYbkxPcGJSd1Q5?=
 =?utf-8?B?N3VyQ2orUDJOWjd0OWlJb3R5dmRFZlU3KzRZeWZFSWtRNk5EZUhZcUFDQUVz?=
 =?utf-8?B?ZVZjTG1JamhwTWtDRUkyVHhqMFZoOXMrRzdoQU1GOGVQQmFYUE1TaTVrMnVr?=
 =?utf-8?B?MjdhSUlYUWlNL1VjeHNxZFNSL29GaVowRnJDSkM0Tlg3bU01R1BEYU9JT3JG?=
 =?utf-8?B?RkN5aVY5TWhHalJQYlBRcjMvU2tXSXlOYVNjY0JZU1RmOG9KeE8zLzJhQXEw?=
 =?utf-8?B?cVpVSVpvbmhWN0NrK1lKbFNkVml5VW9aU1UzeURleGh6Szl4cGFnYTVTT2hV?=
 =?utf-8?B?emxOMm93OC9ldlMzU0xQWVBHdVVsZ04rOVhNZUtXRVc1YnJRYzQ5Yy9FMDc3?=
 =?utf-8?B?eVcwdnczejErL3QxUnFLM1F3T1NUUGhHWDFsM05UekI5ZXY1Y1dkYkxGNDdO?=
 =?utf-8?B?TjYrQXBDRDVUbXRmQ2ZMOUtwblBYaUtvaWtFaUdmQ284MiszSENFdDd5TFhs?=
 =?utf-8?B?NjZSeS9FZGV5UzVyL0ViSWlLa1V2RFEvQlBMMGp5U2NLZU1QQmd6S2FZeTRI?=
 =?utf-8?B?b01qeURDUU0wbXQ1em95MjcweFh3L1VkVEpDS2p2dVBqVmpCY2U2SytpWHJr?=
 =?utf-8?B?YmxqT2sySGVEK0ppeTlyeE0ybXFhV1YrcmZ3b0lhNDZrQXJhV1dxNk8yVTlP?=
 =?utf-8?B?azRqZDU4RGV2b0JMRjNLWlkxSnBuNDZIRWhTVEsxU2ZaaHUxWWVTenVzOFM0?=
 =?utf-8?B?UnRJNFFwdHdOcWpUY1o2b1hNaHpCUkQ4aWdZQjdXU1hJSm41R2txaWlsNEd2?=
 =?utf-8?B?K1ZWVW01dXZ0bUJwQ01EektrUSsxcVBNd28vdjhFZ0wwMmVGd3FwcHFMR1VF?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24b116ca-7a0d-4c67-4738-08ddea247f5d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 13:27:43.7210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6MCmJx2WU+bcWjpaU1PDuUlGTWiO/KMc/GPA6PBZJ17J+hH7kCjTByF0/adZwmpdPPqxTqXg3yTxA1j/pz3Xl0gfg67Kkftb2AbcdGi6cfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9490
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

Hi Miacha=C5=82

On Mon Sep 1, 2025 at 5:00 PM UTC, Micha=C5=82 Grzelak wrote:
> There is no reason in debugfs why PSR has been disabled. Currently,
> without this information, IGT tests cannot decide whether PSR has
> been disabled on purpose or was it abnormal behavior. Because of it,
> the status of the test cannot be decided correctly.
>
> Add no_psr_reason field into struct intel_psr. Add no_psr_reason
> into struct intel_crtc_state to prevent staying out of sync when
> _psr_compute_config is not using computed state. Write the reason,
> e.g. PSR setup timing not met, into proper PSR debugfs file. Update
> the reason from old_crtc_state in intel_psr_pre_plane_update. Extend
> format of debugfs file to have reason when it is non-NULL. Ensure
> no_psr_reason is up-to-date or NULL by resetting it at the beginning of
> intel_psr_compute_config. Clean it when PSR is activated.
>
> Refactor intel_psr_post_plane_update to use no_psr_reason along
> keep_disabled.
LGTM
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
--=20
Best regards,
Sebastian

