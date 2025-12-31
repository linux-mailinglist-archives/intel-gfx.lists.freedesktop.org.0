Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1642CEB441
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 05:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE46510E18D;
	Wed, 31 Dec 2025 04:59:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vn/Ixuk4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FADC10E095;
 Wed, 31 Dec 2025 04:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767157174; x=1798693174;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JJwXp2WhNIH98BPAFyJlrYF+rCcvgfH+xTb1r+Ep8SM=;
 b=Vn/Ixuk4+r5YOJuu2RTjQyQwowmKUzLc0wik0c1XKd5ru1+hAZJw4x3W
 ojyLyP3Uo8D6p2zTWCLmzAxQsruWHx6LlyNta1PgwS8vg0nW2HQ1nqDOa
 lik9Hb4YLMST2j+/heYGeYmG/h7Nr1oLx5ZRS4TUipC5YBH6uypDNpoQL
 25lQJ54jIuKRnkywtNH5Q+av+o3JsqpEBEuZxiNMrmTFi5wCzhwlgZbET
 i/wreiYE5auHHjQh1rnQSqX3l5v0vfBtwQtEEffT6BdPz9OrfYIRyGgkR
 Lh2I90Dc4gcneWSgTjniL/c5jh4Wo0to5WUUD5hTHAV3PU1tsMiSPxIHr A==;
X-CSE-ConnectionGUID: gmx4EpVCTROToGC8LYCsVg==
X-CSE-MsgGUID: SXfpMuPzSISQMwxx8lkeGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="72587926"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="72587926"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 20:59:33 -0800
X-CSE-ConnectionGUID: m26KHrtOQQaUQ+NylUuK6w==
X-CSE-MsgGUID: vTGZ9nbJTk6GDt0bnTNzMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="201001717"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 20:59:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 20:59:32 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 20:59:32 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 20:59:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qBwF8uhI8R26BuopUtOJKHd7y3BqMveiIS0PLTQ9cZ13YYchzZpnNYqCTaSLM/NRMJMNaQoDZ0pIBOznXE5jaP3kNbahA/dDCIXXV0kuYmfT6g42Gelvq/YLG2asPCVkS6vHRhQoxgTRx2fFjalFcFCqYeNpqjT0S5cjyN/O+0cjzjgnw+8pWQ2GBgXYIEPddf9dnBZmme0gupaJ/mwHbTzHKE3rv+HIlu6coaRt63tdOzXfnI0/PQx2TznOzW3cOvRlAZsVb2eyVht9pNibtUv3ulqzZHGdib8woGKGE7TUmoUIPoNJvg/OWbAOXYuGVB4J2B5ShRyNEnAqYSChNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJwXp2WhNIH98BPAFyJlrYF+rCcvgfH+xTb1r+Ep8SM=;
 b=RhTIzJ+9MNxrZ78JiHVHSH8llHZTzcTIMh7/nj3uXA9X9K+TzBhga6izx6zEGX5QAevAfuu7kR3K3etulhrdZEPnxH4GwyfnZRt20rbdJ0RAzOuf7dk56VmNLDZgtJ4fbRvule4iXVrY8keGnI8hflchbOc4kpM33nGsyLsfuNDJ57tORI0pbTsg2z5hwAHET3Akbdi46Sv2p/8nLSK7ot3k1hLVDpsA646+rPTtHNFB33kgypsfVcH6FsDG+fBrpi37l+eeuj6Hh6/WzIqiY1//Bm2fRnkAegJRh+cOYx3pIsQO6srrLydCBK1SFfCMLl1yhgbQL3qQzYM0ap+SNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW6PR11MB8340.namprd11.prod.outlook.com
 (2603:10b6:303:23e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Wed, 31 Dec
 2025 04:59:29 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9478.004; Wed, 31 Dec 2025
 04:59:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
Thread-Topic: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
Thread-Index: AQHceWbEZegXa7m1JUOK4BWfWo2SBrU6cuKAgAC9PHA=
Date: Wed, 31 Dec 2025 04:59:29 +0000
Message-ID: <DM3PPF208195D8D0C2024AF07117D5F35F6E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-4-suraj.kandpal@intel.com>
 <176711619593.18661.17406989812251209808@intel.com>
In-Reply-To: <176711619593.18661.17406989812251209808@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW6PR11MB8340:EE_
x-ms-office365-filtering-correlation-id: c746962c-57f2-439c-e531-08de48296150
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?K2NwVWhTU0xwQ204RHhuQ0NjODVwU2NvY2dQUk54YXNwZXhnL3loTEZ4YUlm?=
 =?utf-8?B?aDhScFhGeHRBR2hTV05wa0hreHYraElnSGhjUWdndzRCQzVtYkY0aUI3ZVYr?=
 =?utf-8?B?WnNXU242YkNzMzJlWGlQL1ZsTW1iNG9lclNwTmVOc3kzMmcwWUZLU1RpZ3dX?=
 =?utf-8?B?TUZIYnU2WmFmYnFpMytyTDBKNmg0R0tpZndDVUpucGloclBkODRpT1Q4dUtm?=
 =?utf-8?B?T05mei9GZGdmVW1xbEFGbTZwbTJMdzBtTWpUWHZEa1o2dlFVSTNXRG9EcTdo?=
 =?utf-8?B?bUVlRHIxcTlDNG8xUWsxUlJaTytzVTlVeUxoMjk4aE93NnFPZWZJRWUyeXFE?=
 =?utf-8?B?SENsSzREcE42ekc2K0l6K2k0SjZYdG1mNW4xS0FPRnJlOUV5WmhKWG92ekVl?=
 =?utf-8?B?SWNLcWdxK3FoSlJUcjh5cTdtRFFybUdFOG56THo3cjZFS0JTdjJvWktJaUVv?=
 =?utf-8?B?VTV4ZU9UMXZFUEVwRUNkeU9YcndQN1hqczEzVUUwZFhJbDVBSUlBK1VyVW5n?=
 =?utf-8?B?WFFYZWptRlpoRGI5YlZ0am80Z2toMExaaVYwRlpZbkhmRXJ5VEhoVE01bHJI?=
 =?utf-8?B?VE9jTytZNjBtaVFJU05sa0NpYWwxRHpTUjN5ZG1CUjJQL2lFT0NXczNwbW13?=
 =?utf-8?B?V3dEVnB6Qm1BY0djZGY5WDN4YVBna3diVG5wdENzbStxcWpSTjdqRU1Qekkx?=
 =?utf-8?B?aDU2eU5rVk9VUklIRHl1TnFxdERXSTg4L080OGF0TnZuSnBqOFRFdk84bDZP?=
 =?utf-8?B?cDhMSVVrQWxnN1pwZkVxVHpoam9pRFErQzlFaUFYUXdRR0d6NktVRGNtMDZB?=
 =?utf-8?B?OENRdVZVZkZqU0pGeTFvUDVoaGRqMXcra20rKzduVkpFNzFTT2ZzMEc0M2JV?=
 =?utf-8?B?OHpJLzZrd0Fkd21HbWJKNExmdnRDUGF1RklNYWd6OWoyU1ZyNzJLeVIyOHdm?=
 =?utf-8?B?U2FCQVVQeUpVdkNXT0pNUC9NSmVvbFBvQXNwR2F5OUdJV21PdGZCcXFOVG9i?=
 =?utf-8?B?d1g1c251VmxkRHhQNmRVZ3BSWTBLNWJJRDlZU2laRHUzeVE1WHUzd2hoM2x1?=
 =?utf-8?B?cytscFJoTk14WEhkVytXYXQvSXVoeFE1bzF3bDRnejlxbnFuK3ZtOS9ZMG81?=
 =?utf-8?B?bTQ5aXNKbHZrQnhGVU9QNU41WXVlYm5odGhDRUsyT1FHOS9QVlZEZDdJNSt3?=
 =?utf-8?B?VGQyMDBuRG8wY3I4dnprZ3VVeEUweHNHMkFHOHJ1c2YrMng5L0NUNHd5SkFm?=
 =?utf-8?B?WDQzOEZNd1NPaEw4b0RzT0c4RWZNSmFnR1FwaWtZMytYbnJkMlp5dEJ2RUZ5?=
 =?utf-8?B?OG9sWUJmWXVxYjVsVlFpMkIrbDZ4YVNyMHM4amZwTmZUaGV2S3JyTklWUVhG?=
 =?utf-8?B?aGtrSFpTUTVwa1h0cG1vdUFOQ3ZsWndCMFhKY0drbllkTkZHSGhoQlF6Vnpx?=
 =?utf-8?B?UmNkcVhscyt6bmlab2wreUExdURUdGRYei9lT21YVUhXUWorSkRvSHV0bFov?=
 =?utf-8?B?VDl2b0xJbVNQb1liaDluM3JYNUpUUXlhaXU4RjNlYUE0YnlUdTZMUFBpMmVC?=
 =?utf-8?B?WEVRVWZXTU85amkrc0YzWW5uYWE2SDJvSDBHYnFsM002am5JSGE3UTBxUnVn?=
 =?utf-8?B?a2tNYWU2cmk1dy82RlJLMm1kSlJxSlg5SW1VUkxneW9XSjhEU0tjQ3FjTDVx?=
 =?utf-8?B?MmVZWms1SkJpek5LbFhiV21QWURWZWVaS01SbElIQlZrenNBcmtFU0xwY3dk?=
 =?utf-8?B?cWk4YS8vWmRiSmhtNnQwN2NmbXFqdjAySXI4K3d5MkwzaDJKQXNJcFNBT3cy?=
 =?utf-8?B?WHl6WVRPS01ub2paRlIrbVNkcDRDTlk3WnZNQ0F2VHA1Q1RpM1dmQzFZbHVQ?=
 =?utf-8?B?WTVGRVJBUUdzS2pkRzNrQzRZQnk3TDRQbVE3SkJhOFVhZ2dKRzA3TzJINlQ4?=
 =?utf-8?B?VVJFc0hRQldUL2RmRmF5U2ErS1o0ekpHZWZ0RWpLb3N1LysvbU9LajRRRlRw?=
 =?utf-8?B?UkNUVnpvZkVqNFpxRGN4Nyt2UmhDWkg2Sk9aRThja0RaaFViS1RGYW1pZkVV?=
 =?utf-8?Q?e0SXce?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDkxaXI3dkJXOTFWV0lVMFd1YjVKM3NlY3BpNFBpUnhOeWxKbGhWNEJER2Ux?=
 =?utf-8?B?Y3hNM25xdTFrVnFZdFkrbk14WUtPeStNVG9BWUNaZTkvVVM2aHNNdThxME43?=
 =?utf-8?B?VGY5YmJ6c2sxY2JkYkNtMVdrNFdTUG1ZcnlzeXR3YThDOFN4RE1OaEFZMDJt?=
 =?utf-8?B?SXpYTC9CcU5VRGx0R0NHWHVJMUVpMENIWmhqWVFBWVArc2NsNHBZaDNackoy?=
 =?utf-8?B?Y0FTUURBU2t5RDA4T3kyVFd5MzNRNGpKL3FBMDRGSk1OTDM0cDFDQzh1S1Z4?=
 =?utf-8?B?OUJpODhEOGgrRFdHMmhrRDFMMmx0RlNLTkN5MW1HUmRhTExqcnI4OUptWkZC?=
 =?utf-8?B?Uk1LZUlGS2trY1BKbS9zeDc3TmJ4N2hvYWYyUUhBM0JqL0xLYkVGdFZlNFJs?=
 =?utf-8?B?WEd0em1wa3p4SWVQRjRkZkUwK2p0bWxuYnEybld0SGpWK3o0L0wwRkZHdm10?=
 =?utf-8?B?YVZBSjJVdDBtNllUSC9BdTFkdkhnMjVCSWVOaFVEMVhsTVo1RGNNTStSbExp?=
 =?utf-8?B?bWNPZ1dBR0VMYXQwdVBQbStPamk1eUM5Snc4ZHc4cnF0QVZXLytkK3lYOFdC?=
 =?utf-8?B?TzZDUmlncnd1bUNQalFVd1p4WXJnQmNESzF2bmVMLzBUVGxSQ1BmYUxLVFp3?=
 =?utf-8?B?UEtpRFhHaWN6b3E0cDh5ZEVNMm94THJwdTRkQ1dFclp5eStxWkVxQVYzRTNs?=
 =?utf-8?B?akUveXVjR2NHaU9VRWpnUFlQdUVOSkNrUnhVYjNFUTRoL3VDbDJtLzEvOWNH?=
 =?utf-8?B?ZXdsZjhpdWdFdzZkOHd2aDJGWDNpUC9hcUJIcmhPckt4cUJNaUV0a0c3Sits?=
 =?utf-8?B?NnY3Tjl1a0dnUjU0VnhUaTZEV0oxOGIxd0paOUlwd2VUM0FaWmI1STVxUWhz?=
 =?utf-8?B?aXN1cEFQQTZ1QzVPZXQvQm1xbzZzdkpCcmgrWXFrQnZ6TlJVSWwzaFA3aWEw?=
 =?utf-8?B?K0MyS0tHUFNSZm82K3ZaOHpTb1FuaW5RQzZ4aHhRTW9QMy91bDJycE5WU3ZT?=
 =?utf-8?B?T3dPdisrckZNRTY1Z2N1dDVwZmxXaWM3bzcrWGtSZFF0ZWFjNGwyelZSTmNT?=
 =?utf-8?B?UUczU2MvNXg0M0Y2Zks4NXZwdXBXa3g2ZUxvR3BIcjFDcUpSZVBtZFVadEh3?=
 =?utf-8?B?Y3dvSlJnZitIRGVUSWdPNHdoMFM3SVdQVFRVTkcvZGdVUmovcm5DTHo0NWxq?=
 =?utf-8?B?dkNraFBPT1YxenV1Um90dFhGZGxLVWtCREtBb0pDWVVONDhKK3ZIUW5OQThp?=
 =?utf-8?B?RzEvSFliVDdKS2l1a0NGOXo3Yjgxb0pQVE4wVnNlV0ZEZE52blpJK0EraVhM?=
 =?utf-8?B?VkNPTC9uU0ZyS1gyaHY5bUNnQmtURFptaUVaZlBITEsveURRMStlN0pkU0NK?=
 =?utf-8?B?cmkvRmpIVktYL3d4czFlTExUa3I5UjJGZUNCRHoxTmhFQUdaTk1tNE1WV0Rt?=
 =?utf-8?B?TkVLdFlpTkFnN0NtNVh6RENPTUxicSt4bkExS2RkQWhzOEhvd2lqY3EzRlIx?=
 =?utf-8?B?MGVEc0x3MVpBSVg0Q3hwc0JaK29wWkZLYXZ0N3hjTmxmdE1XTHU3dHcvU09V?=
 =?utf-8?B?NCtRUGNlVHBmQnFyd0xRRWwySm5RTTlaQjNCWnJSdFExREpJYjdvQWFyU1ls?=
 =?utf-8?B?ekFjRzJOcFNuNGJucXI4WHpBNFhlK3RxNkJyekliR3p5SktrZDJsdTEzNGJW?=
 =?utf-8?B?dzk4VkxseUFBN1RZWWlwT0FCY253MGc0MmZreEJJcDlScWlVdkNYdTZPYVFU?=
 =?utf-8?B?WkU1T0YwbTh5bEpxczY5bW9HZjg4SVd6K25VNTdQZ1J2SklIMkVlVU9NZVdY?=
 =?utf-8?B?RHUxK2w4b3F5cXNqa1pLWFhjZVpLQUliSnZOelRhYWpocXEzRmZQbzhRYllO?=
 =?utf-8?B?VUJDRDQ0UGVxUUpKL0tnOGdYVTE0eEM2YUpmMlRRcHk2L2lNQ2NuMGttd1hk?=
 =?utf-8?B?eDZCZ0hPNUJzaEVoVjZ6ZkJJQzNuSm9NN2lKS1U4czJ2QnZrRGZHZHptQ0Ir?=
 =?utf-8?B?QXhUNWNZcVQyYVErOCtmMTFzakxvRUlCa1pKODBJcktlQ3c1cHlvMTg4M2xC?=
 =?utf-8?B?STk2ZFVXeTJhOFRyb2sxOVkyejRzdlUzMWp6UnltQndaeUVJVVpYOWkvdXVZ?=
 =?utf-8?B?UEI1NzVsRFNGamVNZTlkeForall4ZWZLeUdDeEJ0OTNzcnRQUFRCcWNkc1U1?=
 =?utf-8?B?VlR2dlY5VnR6c2lwKytSdXhBTWs1MVhPTURkby93MUhkVWpXNGlBdS9WQnF6?=
 =?utf-8?B?eHhuY0N2bHhSRUw5NThJWTBIS243bS9pRUVKdG5lU05IcjRNdnlOZG5kZVhq?=
 =?utf-8?B?UEkzcmZPbnU2NTVTRDJqN1dZQ3FrK1E2YVpSM2VuZitlcysrYkZWUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c746962c-57f2-439c-e531-08de48296150
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2025 04:59:29.6495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EDTyUjMHHWvSYZoJBmen0g+OlXzyYhbgnYviLhMOBliJZBhp+jFj9e5HXHfyeo6ARgdfFYZhhbDihUwJ75o3/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8340
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIDMvM10gZHJtL2k5MTUvY3gwOiBDbGVhciByZXNwb25zZSBy
ZWFkeSAmIGVycm9yIGJpdA0KPiANCj4gUXVvdGluZyBTdXJhaiBLYW5kcGFsICgyMDI1LTEyLTMw
IDA1OjMxOjQyLTAzOjAwKQ0KPiA+Q2xlYXIgdGhlIHJlc3BvbnNlIHJlYWR5IGFuZCBlcnJvciBi
aXQgb2YgUE9SVF9QMk1fTUVTU0FHRV9CVVNfU1RBVFVTDQo+ID5iZWZvcmUgd3JpdGluZyB0aGUg
dHJhbnNhY3Rpb24gcGVuZGluZyBiaXQgb2YgUE9SVF9NMlBfTVNHQlVTX0NUTCBhcw0KPiA+dGhh
dCBpcyBhIGhhcmQgcmVxdWlyZW1lbnQuIElmIG5vdCBkb25lIHdlIGZpbmQgdGhhdCB0aGUgUEhZ
IGhhbmdzDQo+ID5zaW5jZSBpdCBlbmRzIHVwIGluIGEgd2VpcmQgc3RhdGUgaWYgbGVmdCBpZGxl
IGZvciBtb3JlIHRoYW4gMSBob3VyLg0KPiANCj4gU2luY2UgdGhlIHNlcmllcyB0aXRsZSByZWZl
cnMgdG8gc3VzcGVuZC9yZXN1bWUsIGlzIHRoZXJlIGFuIGVhc3kgd2F5IG9mDQo+IHJlcHJvZHVj
aW5nIHRoaXMgdmlhIHNvbWUgcG93ZXIgc3RhdGUgdHJhbnNpdGlvbj8NCg0KU2FkbHkgbm8gd2Ug
ZGlkIHRyeSB0byBubyBhdmFpbCB3ZW50IGFzIGxvdyBhcyBEQzkgdG9vLiBUcmllZCBzbGVlcCB0
aGVuIHdha2UsDQpUcmllZCBoaWJlcm5hdGluZyB0b28uDQoNCj4gDQo+IEknbSB3b25kZXJpbmcg
aWYgd2UgYXJlIGxvb2tpbmcgYXQgYSBkcml2ZXIgaXNzdWUgaGVyZSBvciBpZiB0aGlzIGlzIHJl
YWxseQ0KPiBzb21ldGhpbmcgZWxzZS4gIEkgc2VlIHRoYXQgd2UgdXN1YWxseSBjYWxsIGludGVs
X2N4MF9idXNfcmVzZXQoKSBpbiBlcnJvciBwYXRocywNCj4gd2hpY2ggY29udGFpbnMgYSBjYWxs
IHRvIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoKSwgYnV0IGl0IGNvdWxkIGVuZCB1
cA0KPiBiZWluZyBub3QgY2FsbGVkIGlmIHRoZSByZXNldCB0aW1lcyBvdXQuDQoNClllcyB0aGUg
cmVzZXQgdGltZXMgb3V0IGFuZCB0aGlzIGlzIGJlY2F1c2UgUEhZIGlzIGluIGhhbmdlZCBzdGF0
ZSBoZXJlDQoNCj4gDQo+IERvIHdlIHNlZSBlcnJvciBtZXNzYWdlcyBmcm9tIHRoZSBkcml2ZXIg
d2hlbiB0aGUgUEhZIGhhbmdzPw0KDQpZZXMgd2UgZG8gc2VlIGEgUEhZIGhhbmcgd2hlbiB3ZSBh
cmUgYXQgdGhlIHN0YWdlIG9mIHN3aW5nIHByb2dyYW1taW5nIHNldHRpbmcNCkFuZCB0aGUgZXJy
b3IgaGFwcGVucyB3aGVuIHdlIHRyeSB0byByZWFkIHRoZSBtc2cgYWNjZXNzIGJpdCBpdHNlbGYg
d2hpY2ggaXMgYmVjYXVzZSB0aGUgUEhZIGVuZHMgdXAgaW4NCldlaXJkIHN0YXRlIHdoZXJlIGl0
IGhhcyBhIHdyaXRlIGFjayBidXQgbm8gcmVzcG9uc2UgcmVhZHkgYml0IGdldHRpbmcgc2V0Lg0K
QnV0IHdpdGggbXkgb2JzZXJ2YXRpb24gSSBjYW4gY2VydGFpbmx5IHNheSB0aGlzIGlzIFBIWSBp
c3N1ZS4NCkkgYWxzbyBkb3VibGUgY29uZmlybWVkIHRoaXMgYmVoYXZpb3Igd2l0aCB3aW5kb3dz
IGZvbGtzIGFuZCB0aGVpciBjb2RlIHdoZXJlIHRoZXkgc2FpZCB0aGV5IHNhdyBhbiBpc3N1ZSBp
biB0aGUgc2FtZSBsaW5lcy4NCkFsc28gdGhlIGJzcGVjIGJhc2ljYWxseSBhZGRzIHRoaXMgYXMg
YSBkaXNjbGFpbWVyIHRoYXQgcmVzcG9uc2UgcmVhZHkgYW5kIGVycm9yIGJpdCBzaG91bGQgYmUg
Y2xlYXJlZCBubyBtYXR0ZXIgd2hhdCBiZWZvcmUgd3JpdGluZw0KVGhlIHRyYW5zYWN0aW9uIHBl
bmRpbmcgYml0Lg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IA0KPiAtLQ0KPiBHdXN0
YXZvIFNvdXNhDQo+IA0KPiA+DQo+ID5Cc3BlYzogNjUxMDENCj4gPlNpZ25lZC1vZmYtYnk6IFN1
cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+LS0tDQo+ID4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCA0ICsrKysNCj4gPiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+Yi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+aW5kZXggNWVkZDI5M2I1MzNiLi41
ZWJjMzQwNGVlZTIgMTAwNjQ0DQo+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYw0KPiA+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jeDBfcGh5LmMNCj4gPkBAIC0yMjIsNiArMjIyLDggQEAgc3RhdGljIGludCBfX2ludGVs
X2N4MF9yZWFkX29uY2Uoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ID4gICAg
ICAgICAgICAgICAgIHJldHVybiAtRVRJTUVET1VUOw0KPiA+ICAgICAgICAgfQ0KPiA+DQo+ID4r
ICAgICAgICBpbnRlbF9jbGVhcl9yZXNwb25zZV9yZWFkeV9mbGFnKGVuY29kZXIsIGxhbmUpOw0K
PiA+Kw0KPiA+ICAgICAgICAgaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgWEVMUERQX1BPUlRfTTJQ
X01TR0JVU19DVEwoZGlzcGxheSwgcG9ydCwNCj4gbGFuZSksDQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICBYRUxQRFBfUE9SVF9NMlBfVFJBTlNBQ1RJT05fUEVORElORyB8DQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICBYRUxQRFBfUE9SVF9NMlBfQ09NTUFORF9SRUFEIHwgQEAgLTI5Myw2
ICsyOTUsOA0KPiA+QEAgc3RhdGljIGludCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVUSU1F
RE9VVDsNCj4gPiAgICAgICAgIH0NCj4gPg0KPiA+KyAgICAgICAgaW50ZWxfY2xlYXJfcmVzcG9u
c2VfcmVhZHlfZmxhZyhlbmNvZGVyLCBsYW5lKTsNCj4gPisNCj4gPiAgICAgICAgIGludGVsX2Rl
X3dyaXRlKGRpc3BsYXksIFhFTFBEUF9QT1JUX00yUF9NU0dCVVNfQ1RMKGRpc3BsYXksIHBvcnQs
DQo+IGxhbmUpLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1BPUlRfTTJQX1RS
QU5TQUNUSU9OX1BFTkRJTkcgfA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgKGNvbW1pdHRl
ZCA/DQo+IFhFTFBEUF9QT1JUX00yUF9DT01NQU5EX1dSSVRFX0NPTU1JVFRFRCA6DQo+ID4tLQ0K
PiA+Mi4zNC4xDQo+ID4NCg==
