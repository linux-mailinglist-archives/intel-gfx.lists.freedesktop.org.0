Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yk4TCL4vIGpSyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:44:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED0C638327
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 15:44:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mE0Xtde7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4355310FE5F;
	Wed,  3 Jun 2026 13:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2865B10FE5B;
 Wed,  3 Jun 2026 13:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780494266; x=1812030266;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WpBuct7SSggJZEuv+dEZSeFHBXQgE7rsdVltr+OQi14=;
 b=mE0Xtde7+BRVQh+irJWTQmM+5GN7eIvYj7Lk3VIMupAQ2IX7EjUOJlhF
 w/FS1B6mNBPWifCqYVVQ9rSPKxJVKlzQ/Db9WioL3SfaZ6erEVRtMEJVy
 YlX8Vt/HIdMx0vzGCHzbFLZO3KsVbrj6hyuF9cpyFYOuqY+0WlaH0t97Z
 DuBDYeGiMLSvhoDvxp1jc4oA5LCCfDUQvZ42Br/0T8Xf727DnRm8GuQLL
 3zduX/wMPLhRmfOFesWoTHRKa6RHm23kfXzY93AFoDvlt+HZZTYJdehuK
 +ZotwaE1b5uzYjpzfi89w69lDYz6vGCwcA5vjLP46ZB15l0I/oMCeaLhx A==;
X-CSE-ConnectionGUID: lZpP9ilFSiaWcUAg7qL2SQ==
X-CSE-MsgGUID: 58C79iDuTQ2rDOEZ3081EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="85158080"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="85158080"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:44:26 -0700
X-CSE-ConnectionGUID: Ijk+TqagQqOLloq+4Y6UdA==
X-CSE-MsgGUID: wstHMg3hQN6geNbZpRgT3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="239770853"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 06:44:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 06:44:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 06:44:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 06:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxEmFm2qLYLi46a/Y4Y/kKGQDUH1rnTyrjAd+MJBWoBlK3KKeEDbtfNoyuz0c/8uL7gJVWn60xTSbbtayJxedCkM+9pi7cnsMa7Vt4uu5NlGAqdB2ML155XckIZ4g9YLoeqX0ooJ2RvDysb3wF6apkSxoTMaYd6DIPfTgD8RUCy8rU1/YyJ6sEXC3BZeoZ7TvEbk+d/6Dwx03Z7/wZ/s7baHvowVCfJ39zJRW+5ZpDkAmbBBXLhXi8D5Plqkyc+hujT4WBsYImvV7GAhBwun7BqHE6fEomypKB7m1TJImnsDMviSoqKT3fVPkd2/15fBVE6jjPULmEPsnKXdrAnhtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QfedpMX1P9zwALzbBsFe9XiiZogjdtra/oEsDlACAtI=;
 b=Bf9UbIW/XVVRuIJNTC9oAOAXp7Afk/UmadubH2FPqX6UZa9Eo0hRv7hsLbVT82PPgxeWZtwSavAqiMEJGFZiNRCsb/W2D0MzHUigO78FXbMQHbOsCid91Ax18FIXbGy8TgqGIKtDQh2In8DRIxV2tcVOJGi23Sn8eC5lYfPUPYOwfvte3OrdWZaFRv63S1mDS5vcG1kukt5V/hArQ/J6IUCZmCO0Lu52nIgNMy93ocdQWeTDk2J8kTZExzozsG77jut4FofdJH9VCA5/JF+u9q19hTA7c6kGpcnWIgkH9AZB8Wx0X035/NYIqz3VGupxq5hZ02+zxOkslLLvnYLR2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by CHAPR11MB9656.namprd11.prod.outlook.com (2603:10b6:610:2fe::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:44:21 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:44:21 +0000
Date: Wed, 3 Jun 2026 09:44:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes
 on PF
Message-ID: <aiAvsds-BPvw-Lu6@intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
 <c5b06289-f353-47eb-a918-102288fac7e9@intel.com>
 <ahjBn2vYp5dppkYp@intel.com> <ahlvesSbbOdk47m3@intel.com>
 <ahn_O3ZSTE2Th-tz@intel.com> <aiAp7R00bY-pgIL0@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aiAp7R00bY-pgIL0@intel.com>
X-ClientProxiedBy: SJ0PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::9) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|CHAPR11MB9656:EE_
X-MS-Office365-Filtering-Correlation-Id: 14fa9dd8-ef1d-4f1b-189b-08dec1763741
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099006|4143699003|5023799004|11063799006;
X-Microsoft-Antispam-Message-Info: wNi84lxKODbRhBlDNoHxOYlJ/V033HOmT7s6hkkbCBFH+FwIrTiPZeUTB2Si9xFvSO9v+FdLgHbkM/55mZKFh57E/K9aXFb+Hjkx5TMu6AfLHHL+g3VLdJfgMgJCad4gSWa7e1qyzzx1BC9UU2VRXcm1RkXGJ7JvOmbG736Yv0Glc/WyjGM0D8RHS0PehcZXTNE0Pk79jjb1Ji8syNxG+dcSmgWkONnjOUMWg8lJZ4XPPfrih1HZw16FgBw7kVbOMtoH5b7n6lgv10W1eEVKz+IrzbFm2o7DiZYY7yVnj5+scKrIsCTFJ5YfsCNuUDYYAYQEijiGPZ9eu/x7irNfNu6o2iFBwUaMVu0DIMTg16E0ix7zocSLMiq/ZoA8z2eS9CZDRFtAxg4KjEfMk1th0cPe93wDmUMk6cv9CcCKrZ7K0sgevULUGcCqDAA40ftkhFVVOOSCKN2nDb9eltLmUzTMtajOjIuKfx/Ufy4ykn3h2IgCMvoVD4G9q6O7AhRKM6Fr9Rmk+X5OydxEkK7OqwRd/vGvxVlM7w/4p4XMe6+KX4WdHRNQRO7lBsRGNJqygQ5dKp+mh4AzI7Uy1l3QBIkWcbCFD32q+mFGbt9xEa+1+2Um64y1i188Hj6Wey3yfxNAWVHXf6xS5yuE4FawNmvQq87RET9LJ5Y5ivqohongYtrdZ7ksUF/svR684t92QXoCDX/KNhsR4zPM3PN+rA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099006)(4143699003)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REN6UHFvMXE5VzNKakNIYUw3VnFyd0liMGNLczFVaWlTQXYrdWg4UWliUGI1?=
 =?utf-8?B?cE9xcGQ0OXlNaExCRm5TTlJyU1ppUDBLendBZDBOYUhYZjJjY0kvazVZMnRM?=
 =?utf-8?B?di80dHVPRXhqWUx1cmtiOFQzU3ZrSDlqRHdFd3lyZjNKQ3ZtV2NuS0w1dW5F?=
 =?utf-8?B?dVBrNVN2aGVEVjdGZCtaU21FSGYzWndHY2hFVHMwRnVXMG1qYjNqNkVuOXI2?=
 =?utf-8?B?ZkVCcndFa05IbUpRYjNXZzBuOG1keGhjSTIzNGF5QkVUS1ZFTUE0d2dJNkxm?=
 =?utf-8?B?bTZOVDh5N2pORjhJNUxJb1dGM01GOFUyM09ZNUVPTlIyb3NtYzVVeStyN2Jx?=
 =?utf-8?B?MXYyUG9TQ3psamYyUzRVMFYzWmV6eVA2OWQ1c25yenM3d1lmaU5MNlY5Q2hl?=
 =?utf-8?B?Mjg4YUhZNUpmVkRlUmtKZ2gxcWxoc1UrdWprL2lVWitueGRiR0VwTW9LbjhB?=
 =?utf-8?B?TzJycnNOejd2dzdBNm9jWUdHZ2xCTUhBWm1ZbWkzTXdDcExXdmZjTDYyVUE5?=
 =?utf-8?B?NG5tU3JrTW96VFYwZDdvNk9KbDZuSnNJWUxNN1FOajlUMTUraFN4UjUzblFv?=
 =?utf-8?B?aHlBTkZkeTVKVG1paUxQNlluRHc5TENBbDN6NmkrNTNQOTRCdHdnZGJ4WG1w?=
 =?utf-8?B?cjVmWXJuTTgzSG5ob2RpV29yd2ZQVmhoVHU5aUVGaFp2NHh0RSs4RUg4Tm9X?=
 =?utf-8?B?SnRyYUpVaEx2NkdiWllIUUF4c3lzQXJ5SUc1bW82dTYwU29RbWlyTEhkRzc1?=
 =?utf-8?B?Tm5PTFdqL3RnL2hvMUN5NmxGMEZ4NlViSUhCR0FoSDVNWU1mVkRBMHJyTEZC?=
 =?utf-8?B?Vk56U3crQlBjcExMcnNrKy94bkVBYk92UnZ6TzVhNWRVQk1uWkRqS1NQTHlF?=
 =?utf-8?B?T2RSWWR0QnJUK1c3OTdHTXpnTzBLNWUvUlpQeGdqMTRSOTZ1ZStpWkZSV1J3?=
 =?utf-8?B?Mm5tZjlaSGNncVNRdlVqSE5Jdm9qRzZmUFhCRnMwcUxkVXdYaEU0Q0ZON0Fl?=
 =?utf-8?B?TGExcnVkeDZIMzUvQ1lRWHFqaHFCTytFaHhqb1UwM0xuTy9sTFByaWNnc0l1?=
 =?utf-8?B?d0RaWWtBQlJNTUR2Nlg5R05SVmJLZ0dQejVUOTA5OTBNV3NLQ1Q5VjEwa3Fh?=
 =?utf-8?B?UWd3ODdySjBPTXVVYmhWc3lidjZoWXN6cmEvVUQvOWRjcTFqS243MC81RzRh?=
 =?utf-8?B?bXFlc3ExVG9uS1lEMGVicHVNY1lxaGk5M210QkpKczNUY2RLcWczeUl4TmJ2?=
 =?utf-8?B?a2FrNFJvK083UTAzSmt4SDZRM2wvVk5UZ1dKMUhhOEF5N1pPS2pmNmppcGlH?=
 =?utf-8?B?WExibDEwZ2Z4V1Y0WlBQT1FLYk1RQkM4N0JWNk00bXI2Vjh6ODV6S0I5TmJn?=
 =?utf-8?B?VmQzRzhRU0JzYlJXVjlITm1kdFBZcHdLNG03bnFKVmNTaGZlSzZ0YTJ3bTVy?=
 =?utf-8?B?dVhZRHJnVmgrNnhzTFpVcnpFSklXZHhhcTBJazJhN1VMb1Y1MGFvbGVobTl3?=
 =?utf-8?B?UVBwVDR0bEtkQlk4Z1RibVd6YmNVSFhuTEtuNnhqeGx6SGg2clQ1NnlDczNG?=
 =?utf-8?B?Q3B5TGF4Y1piRDZ0RnpsQUlDN3JuZnIzN21Sb3QvcURLSnF1N1o4Qm90M3Vm?=
 =?utf-8?B?Q3dPb21ramdSem1jZ2J3dkFLUG1BOTl4R21OMXNnMmxlTVdPSWFSUk4vM3dt?=
 =?utf-8?B?WWZGbVFLcitWVnFTdkZhVlFWUElpeVZ4YkFzazFFeTA3SWduRUdKZjlSdFFW?=
 =?utf-8?B?b0UvK0FOM1g1MnpqZG0wZHljTkZ6dmZVa0lTS21RL0k0VDhxTXROdHJFT2R3?=
 =?utf-8?B?Qy82U0l1bUsxN1A5ZksrTXp6OGFRcGJoMXBTRWx1L2pjOUhIVzk1K1VKeE5z?=
 =?utf-8?B?RWQ3ZlFwQnNhY0ZSQzdLWE5ueGRUME1xYnhFT2orTDgrUWtpVHh4dWxCNml1?=
 =?utf-8?B?NEVGcWdVcTVkSlc3am9vd3Z0UWhxaFk4cHJ4MGZGdkFkU2ZObEFRa1ZqOCtv?=
 =?utf-8?B?NG9WK2xwaEpLcWg3WDgvd3JWMU1XRU05RTV6NVFQbC9PSVEyNldSbmJUa0pG?=
 =?utf-8?B?Q1FndHlPMFVDSnJhYzJpRjhxYlpJVW5jRlc1NTlsSDhURE1tL0NYNjRldG5K?=
 =?utf-8?B?c3JFMldSOGJxZGNKYW1UdmtLOEhRWGNPcUVIYkRNTnh5ZlJkdW5nRmN0cmVH?=
 =?utf-8?B?TXJKNUI4Wnk1Wnl0b0FqaFNWQ1lwcWRJcS9kOFF2RjNCeXkxVmJ6UWM5bkNu?=
 =?utf-8?B?TjZUa01INVFOSkRlWEtqZ3BqTXNlMm1NdVVLc3JYWWJNaCtZMjVnREcwMkNY?=
 =?utf-8?B?a1NsMTEvQlFiT0czQTNCTkYwWTkrSEI4SG9MSFBTSU9HQ292SjdmZz09?=
X-Exchange-RoutingPolicyChecked: l0QS1GjGbday1sVKfgcCOUh8ZIKmV4Ou/ZdYHX83zv6hMoX04utZp7MJ6OwsI+ddsxY1m1dt51n2l9jnU5o2fEj3waAoyd4Y9MD487o3myEe2uGpMDJU4BNjp/pN2sqCJSi62+63Mxq0GJgiIG7mymrMiNwHecB0HjMfIsQqRCgAmwiD0Nz/g5IkD+v2vIZzLuqK07AF+nJ56V2vxzQKHIQ3v/VyL6vYvWsDUWsbO9knr+8xYjXodZRcMPrLutkM5jcYieCIYDl9xUh/0S9U+dyxYtgJir9MgdvWLYp420U//ojH+hRhDmXlNwnN1MFk/RrnKceQ5tRDrsFja3shtQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 14fa9dd8-ef1d-4f1b-189b-08dec1763741
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:44:21.4779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hkwRwI3+JI/bxXJNkUXjGJCcIzRAB/tfCwKlWA7xzUM8Amr3UPuAe1VMf3z+BsumfyFny7448bBHVz0zo68pNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHAPR11MB9656
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9ED0C638327

On Wed, Jun 03, 2026 at 04:19:41PM +0300, Ville Syrjälä wrote:
> On Fri, May 29, 2026 at 05:03:55PM -0400, Rodrigo Vivi wrote:
> > On Fri, May 29, 2026 at 01:50:34PM +0300, Ville Syrjälä wrote:
> > > On Thu, May 28, 2026 at 06:28:47PM -0400, Rodrigo Vivi wrote:
> > > > On Fri, May 29, 2026 at 12:11:22AM +0200, Michal Wajdeczko wrote:
> > > > > 
> > > > > 
> > > > > On 5/27/2026 4:45 PM, Rodrigo Vivi wrote:
> > > > > > The PF GGTT allocator was initialised over a relative [0, usable_size)
> > > > > > range, with ggtt->start added on every address conversion to get the
> > > > > > actual hardware address.  Two consequences of that model were considered
> > > > > > "horrible hacks":
> > > > > > 
> > > > > >   - ggtt->start (the WOPCM offset) had to be carried around and added
> > > > > >     to every drm_mm result.
> > > > > 
> > > > > hmm, but this an internal detail of the xe_ggtt implementation, so why
> > > > > would someone else complain about it?
> > > > > 
> > > > > >   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
> > > > > 
> > > > > hmm, for the record, this GGTT cap on the top was added back in 2023
> > > > > 
> > > > > commit ab10e976fbda8349163ceee2ce99b2bfc97031b8
> > > > > Author: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > > > Date:   Wed Jun 14 10:47:54 2023 -0700
> > > > > 
> > > > >     drm/xe: limit GGTT size to GUC_GGTT_TOP
> > > > > 
> > > > > +        * The GuC address space is limited on both ends of the GGTT, because
> > > > > +        * the GuC shim HW redirects accesses to those addresses to other HW
> > > > > +        * areas instead of going through the GGTT. On the bottom end, the GuC
> > > > > +        * can't access offsets below the WOPCM size, while on the top side the
> > > > > +        * limit is fixed at GUC_GGTT_TOP. To keep things simple, instead of
> > > > > +        * checking each object to see if they are accessed by GuC or not, we
> > > > > +        * just exclude those areas from the allocator. Additionally, to
> > > > > +        * simplify the driver load, we use the maximum WOPCM size in this logic
> > > > > 
> > > > > >     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
> > > > > >     untouched during the initial clear.
> > > > > 
> > > > > and that likely will not be changed by this patch as after allocating 'two
> > > > > permanent zones', the drm_mm_for_each_hole will not iterate over them
> > > > 
> > > > right...
> > > > 
> > > > > 
> > > > > > 
> > > > > > Fix this for the PF case by initialising drm_mm over the full hardware
> > > > > > GGTT range [0, total_size) and permanently reserving the two forbidden
> > > > > > zones:
> > > > > > 
> > > > > >   - [0, wopcm)           — inaccessible below WOPCM
> > > > > >   - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP
> > > > > 
> > > > > that looks odds: why pretend to claim manageability of full [0, 4GB)
> > > > > of the GGTT and then immediately permanently reserve two end zones to
> > > > > end up with real [wopcm, GUC_TOP) which is what we already have?
> > > > 
> > > > yes...
> > > > 
> > > > > 
> > > > > > 
> > > > > > A new mm_offset field (zero for PF) carries the base offset used in
> > > > > > address conversions, unifying the existing VF relative model (where
> > > > > > mm_offset == vf_base) with the new PF absolute model.
> > > > > 
> > > > > but public xe_ggtt API already uses absolute addressing in PF and VF
> > > > 
> > > > I know...
> > > > 
> > > > > 
> > > > > >  The public
> > > > > > xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
> > > > > > [wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
> > > > > > config code are unaffected.
> > > > > > 
> > > > > > xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
> > > > > > so the VF recovery path remains a single O(1) WRITE_ONCE pair.
> > > > > 
> > > > > maybe it's just me - but I can't figure out the real rationale for this
> > > > > patch - what did I miss?
> > > > 
> > > > This series:
> > > > https://lore.kernel.org/intel-xe/20260511214122.8468-1-ville.syrjala@linux.intel.com/
> > > > 
> > > > And more specifically the discussion in this patch:
> > > > https://lore.kernel.org/intel-xe/20260511214122.8468-13-ville.syrjala@linux.intel.com/
> > > > 
> > > > > 
> > > > > > 
> > > > > > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > > Assisted-by: GitHub-Copilot:claude-sonnet-4.6
> > > > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
> > > > > >  1 file changed, 101 insertions(+), 22 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> > > > > > index a351c578b170..00a6cd2b8a51 100644
> > > > > > --- a/drivers/gpu/drm/xe/xe_ggtt.c
> > > > > > +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> > > > > > @@ -137,6 +137,17 @@ struct xe_ggtt {
> > > > > >  	const struct xe_ggtt_pt_ops *pt_ops;
> > > > > >  	/** @mm: The memory manager used to manage individual GGTT allocations */
> > > > > >  	struct drm_mm mm;
> > > > > > +	/**
> > > > > > +	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
> > > > > > +	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
> > > > > > +	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
> > > > > > +	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
> > > > > > +	 */
> > > > > > +	u64 mm_offset;
> > > > > > +	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
> > > > > > +	struct drm_mm_node reserved_bottom;
> > > > > > +	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
> > > > > > +	struct drm_mm_node reserved_top;
> > > > > 
> > > > > maybe all we need is to separate concepts of:
> > > > > 
> > > > > * raw GGTT - fixed range [0, 4GB)
> > > > > 
> > > > > from
> > > > > 
> > > > > * allocable GGTT - configurable sub-range [start, end)
> > > > >   * [wopcm, GUC_TOP) on PF
> > > > >   * [base, base+size) on VF
> > > > > 
> > > > > and then we can continue to use drm_mm.init(0, end-start) to manage
> > > > > that [start, end) range in a common way on both PF and VF?
> > > > 
> > > > we need to be able to use a ggtt buffer that comes out of this range,
> > > > so I'm afraid it doesn't solve all the cases.
> > > 
> > > Basically what the display needs is:
> > > 1. specify where in ggtt the buffer was originally placed by the GOP,
> > >    this may be partially or fully inside these GuC reserved ranges
> > > 2. bind the buffer to some acceptable location (assuming the original
> > >    location wasn't acceptable) without overwriting the PTEs for the
> > >    original location
> > > 
> > > I suppose this could be achieved even with this "mm doesn't cover the
> > > ends" hack, but step 1 there becomes a bit dodgy because we can't
> > > insert the mm node if it's fully outside the mm. I suppose it could 
> > > still work if you hide it in a function that only validates the real
> > > ggtt offsets, but then ignores the fact that the node can't be
> > > inserted due to being fully inside those reserved ranges. And then
> > > whatever cleans up that original mm node must also ignore the fact
> > > that the node maybe wasn't even allocated. And also
> > > xe_ggtt_initial_clear() will need special code to clear the
> > > reserved ranges.
> > 
> > right, so basically we could keep the xe_ggtt as is and provide
> > 2 hooks:
> > 
> > 1. one to reserve the portion of the BIOS FB that goes
> > inside our managed ggtt area
> > 2. a special clear for this area
> > 
> > And in between you do the rebind with existing infrastructure
> > to an empty region?! Is this what you are thinking now?
> > 
> > > 
> > > My original idea was that we'd just include the reserved regions
> > > in the mm, and then the display could just keep the buffer at its
> > > original location, and later the guc code can reserve what is
> > > left over. So we could skip step 2 above completely. But after
> > > a second thought we probably don't want to skip that step because
> > > we might free the display bo later, at which point we might free
> > > up some of the reserved ranges. So I guess we'd still want to keep
> > > step 2. But I think it'd still result in less special cases in the
> > > code. We'd just need the guc code to reserve what it needs, after
> > > the display code has rebound the bo to an acceptable location.
> > > 
> > > So we'd end up with:
> > > 1. insert node for the bo's original ggtt location
> > > 2. rebind the display bo to an acceptable ggtt location
> > > 3. undo step 1
> > > 4. xe_ggtt_initial_clear() (now also clears the reserved ranges
> > >    without any special code)
> > > 5. guc steals the reserved ranges explicitly
> > > 
> > > So only two special cases left really, and all the rest
> > > of the code is blissfully unaware of any of it.
> > > 
> > > Hmm, although hibernation might still be a slight issue for
> > > xe_ggtt_initial_clear(). As in how would the reserved regions
> > > get cleared during resume from hibernation? I have no idea 
> > > how the current xe ggtt code handles resume at all...
> > 
> > The resume should only restore the pinned bo's one by one, nothing
> > special.
> 
> Looks like currently xe_ggtt_initial_clear() is never even called
> during resume from hibernation, so in that case parts of the GGTT
> will be left with whatever garbage the GOP put there. So that's
> one thing that needs fixing.
> 
> > So I guess if we keep the original code we are okay,
> > but if we start to managing the full range with the reserved areas
> > we might have some difficulties here on the way...
> 
> If we had a full range mm I suppose we'd need a bit of special code
> to remove the reserved nodes before xe_ggtt_initial_clear() gets
> called, at least for the resume from hibernation case.

it looks like Maarten suggestion fix the clear portion.
But for the steps 1 and 3 above we would need a special reservation
with a node area only within our managed area?!

something like (for step 1):

mm_start = max(start, ggtt->start);
mm_end = min(start + size, ggtt->start + ggtt->size);

node->base.start = mm_start - ggtt->start;
node->base.size = mm_end - mm_start;

drm_mm_reserve_node(&ggtt->mm, &node->base);

and another special function to delete this special node
if needed to be created?

Or what do you have on mind for the full area? I believe the full
area is this patch, but with some additions anyway since we need
to handle this buffer plus ensure it gets reserved when we don't
have it...

I'd like to avoid complications like the phys offset addition or
the full range if possible.

Could you please incorporate something simple in a v2 of your series?

Thanks,
Rodrigo.

> 
> -- 
> Ville Syrjälä
> Intel
