Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ABC9686AF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9951910E2B7;
	Mon,  2 Sep 2024 11:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bA/5QhaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286F710E2B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 11:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725277915; x=1756813915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Iuz340/HBuIvSOpYu4dxK2gZKEA+fWk+BVTnWuO2KRA=;
 b=bA/5QhaYUFqIshgkoLCSpbuHL5FXRlD2Zm4ooR2dQ6Umgr1lJr9wUIjX
 tzIaFSrbv6pGEm9dHeDMl4/6CX1FA4VvstK+oFp8WBa1C+ym1sQzIJCej
 1rc7r1gLQvJypmA//7YvswgsUncwDye2I/dkLTdapIUwfYCLUJxR0/AqN
 CPm2Ctfm++kPAH0gPtB53z1uHazHczQTq+DPpi/USaTXTeeFoOjaa9+LD
 oMpxcvx1cjYvi6FphqoO3oRsCOQGlDe8Du7R7VZAPboH7j4YsxqYu8l+X
 bOaJU0B7NvnXCfhE96zCwqWuSAW59rp6e8V2LSu3CFBql8feoEzbI7+P8 A==;
X-CSE-ConnectionGUID: 4xOohqOmTe+U8dPTbOWu0g==
X-CSE-MsgGUID: 8tASLIuPTsuQTClf0pp0vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="27728752"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="27728752"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:49:45 -0700
X-CSE-ConnectionGUID: tyfkUkysSp6Wgk5OJ4rhng==
X-CSE-MsgGUID: 3RpmkfI5Qp6BYFJ2ctsFhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="68724014"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:49:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:49:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LC9zYYOhk+HLWMdgS5K2SQiI3CJxcXWNtOFidl7vuugfBuIRaw8QohCkKlt5dvDQViHp5hmcBjflIczhG0JnKdQfgkbkdi0V4uUukATuMAWBmMp0++0Aja4nJbhAR13jr9LZ9WflCiQRTnP/bE2DbcOuyshu7uiWHUhI41YsuVGMju6bfDjcR9DM9JuaNn9F4Ul3C/bh8MWCx6DpLSzCZRahNmEnjcafDQb+p4ZVhlrr2Cua5GF45XLdJEKIndF5aIkxVaCDl3Svh4rYVYLxbncTrwpp9dLPO+A83SVbk1Kf325rhYOgwVCy7mk6nqQfm8CM/rJntF6hvxwg4wt8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iuz340/HBuIvSOpYu4dxK2gZKEA+fWk+BVTnWuO2KRA=;
 b=Wbxt734PIv63uTLjt6BS3IDU3dxAoiZKnzgXDpq1ZJNzmtUc37jNxEeNLQw6jyswuPHs64AQlq+mQ4cAjieEHpq9U9V1Kemw/Zam+EVPgChllj1IFsi4NcoMEuIp41GaKXOyHRLiShwXJHJq4562ToiEdFYW+feie1oDLR+DgnKnFAnQmISrk5ZBrKetLzh1XQzbKUBYStHPAmMGoBXeWGy0G3gBz0yU0ns/WCabVhrwsJlVNP2esMKeFc2VXfj4HxC2h2/tzOJRMng4nAWxGgkeeOXd6CvwJwbeVzhF4haWw/eXxdTWU+HUm4/EqnbvyDuTeDUoa1pIEiU/ZmFtog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5941.namprd11.prod.outlook.com (2603:10b6:510:13d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 11:02:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 11:02:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWp1HodD3UAnEShApl64iwcF7JEPYGAgAAHAACAAANRAIAADWQA
Date: Mon, 2 Sep 2024 11:02:15 +0000
Message-ID: <4f8dec2711deca315baae733a1887e4304a46cf8.camel@intel.com>
References: <20240902050214.127352-1-suraj.kandpal@intel.com>
 <e35c0591a0708fc069aae10aaf35a20002b71aba.camel@intel.com>
 <c12fabba598e4a4d5ba449b2bc22eedcc9fccdad.camel@intel.com>
 <SN7PR11MB67506939CAD7785EF6EDC78EE3922@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67506939CAD7785EF6EDC78EE3922@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5941:EE_
x-ms-office365-filtering-correlation-id: f5c7c640-77c6-45e1-d05c-08dccb3eb494
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UlZRbVRUaDlIK3I3akRWOVJLb1JiYzhyd1RqVm9PZU1MWGFMa3dpaTlxMUZl?=
 =?utf-8?B?U203UEhyT3E2aytNY0Yya2pxRGw2S21FbmVhNkUrU1ZxcEU4cEVOL1lWN0dC?=
 =?utf-8?B?LzFJWkxKMm9iQTBpQ2dhbGFNcFgyVnRScWQ4b2xTcWQxL2trT25qQndBN1I3?=
 =?utf-8?B?YXJueE1SeU56ZUpRTEZ0WFkxS0RPbmZMYk1MRFY2OThvUzNzWjFmeTNXb29m?=
 =?utf-8?B?aVBkZnlwZzdoR3JFdUZnb2lMVDBSRFhMa0VpbGZUWkVJaURkb1dlY3NjS2pt?=
 =?utf-8?B?TkkvdkFYdkxBbjVKV2VhTGFDUWFGQko5YndVbGx2VWNvQ0owSlpSYzJUL0ZB?=
 =?utf-8?B?Z3Rza05MMTAyOWd4MWpSTHdxMmxvMmEzSkxTT215MmdPNWlUVSs3ZjRDQkpi?=
 =?utf-8?B?Mnh0elJnZytKTVlDOStzR0M4THN2enJSVno0cURITmdBcTUvRjNYRllFRVlZ?=
 =?utf-8?B?WG5hNGRaUFNDTDh1eUxrU1MxbmZGTGl0V3JGMVg1aU82Z3FDTVdEUUMzdm9i?=
 =?utf-8?B?VE1QczF1YkwyTEFveHk4NVNURExabjMycDZ2bm9HZ0dUaFRMdjdUK2EwbU82?=
 =?utf-8?B?KzJ5YW84bmlVZThwcDhrR2ZLTnpjTnlab3N5Q0w5NWFZbmRoSUtoNFhlUGRP?=
 =?utf-8?B?ZWFpS0UxRkpkOW9pQUd2QU9WaSs1Z2RXSjlmSCtGVHJnaHpYWFJwck1DcUdI?=
 =?utf-8?B?dWpFbjgxNmRFT25kNk0xekp0M2FiVkFud2pWV2kwalpNdWxDOVhpNUp2VENa?=
 =?utf-8?B?SWl4bkRiVHNCc0JpMXFrR2FEL2NDSy93MzQzYndYL2ZFdXpBajUwMVROcEpM?=
 =?utf-8?B?aXcySXEwTVQ3TmM3cnZYck1ZWjkwRGZlNjg5RWdEOG5hakl6S0d6SHg4eGZ6?=
 =?utf-8?B?WW1LcEZDLzNkK0srUUNLeVJRSW95UGdGelREL2c5blQ3bW5sU2twY1YxekFs?=
 =?utf-8?B?MzBhditRbUdQTU0wZ3lyaVBuYkk1RlQ4YVBNM0R0NDZub3M0c2hUNndjLzRW?=
 =?utf-8?B?NkgwOCtjYVcybmtIeEJ1a1g5NEZscW9MVEViQ28rNm5XbjJ0QU1VbjBUZTNH?=
 =?utf-8?B?bm1VdVpRa3BVRHBZQ1kwZi9qSjY5am14VDNMRmxYd1pJTm91a1l2eW0vb2tT?=
 =?utf-8?B?MXFoMTRkaE1ndlQvVm16a1RONmJUeklwcXBEYU1VbWJnRWNDayt0K0FMM2hj?=
 =?utf-8?B?WGlOVmNEVm5qN3BKNGg4YXNyYStFaW9KYzlYRXBnMTFmQWlNbFZIWFlsajdQ?=
 =?utf-8?B?L2hQTFl4dFdQa0w3cHV6WlBVdFBVMGxRQllvclp6b0tjSWpHR2RWUFhnMm9w?=
 =?utf-8?B?L1oxbkJjdVEwdW5taVhTT0QzV3NoOEdmQk9icHBOZlQwbVQvVWRQSCtoam5s?=
 =?utf-8?B?QXREdFRQdGllblFiUzVsai95djdFVU5ONUNhb1hoc0VkSjhkcjFaK1VVOWJU?=
 =?utf-8?B?QVFkbkNGWUZWSGo0TitDRU5NODZ6UHAvbVhtUllOUVBoMmg5c1hZQ0RnRnRE?=
 =?utf-8?B?cUxGcDdwTnp1eW8yQTNzdEg4MkV0YWFzcTkyb2xCQm0zdHdQMDlXYVdpaXpT?=
 =?utf-8?B?a2ttYWxyWlRNbG5DK2ViMHFMTlNiWU1XZTI3N1BTem83WkRiSEQ1dVNrVnMr?=
 =?utf-8?B?aTZrQlYzN091WGN2TGtha1NFamxNV2Q4WDhISURwajROZVNMVzZBbEc0UmlZ?=
 =?utf-8?B?Yi92b3k2RFFkZTZid05QMmZRd3poaUd4a2JpaFJnaHRuTWNnQW0xdnBwTkF3?=
 =?utf-8?B?QjRXblVDUEx5OTdFM1RXOVJDcHRpY3lwYTNVWnlnZ1E5SmNMdjIxaEVuMHRk?=
 =?utf-8?B?ekhzZjFRSzh5MC9jQ1U1QlUxTFlMQ2VJUjg4aDRpZXhUcGxSR3NRTHpoK1d1?=
 =?utf-8?B?YTBiR0E4WWxlTFM3REJ5SW5WckZyQ0NKb3VrSW4yNytENUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2JKV0VEa2FHYm52SUt1SnFONzd2YWJ0OVlpZ1BpUzBnVmRQZXIybGpsQk93?=
 =?utf-8?B?MzJDdE5oYXRadXVCbGVOa2JiNGFQR0tRdWI3TXI5MXJBWjA2cmh1MFd0RVBE?=
 =?utf-8?B?d09HYm5JM2FXZmFjWDBaNFl2cWxOcE5vL1Y1WlU2T2VMNUdINEtrOS82ejhp?=
 =?utf-8?B?emJnWEdWQ3pJMjMrdG9aN0FoUWdQVkZ1dmFlWUJ3S3VjUWV3OWF4MlU3c2Ra?=
 =?utf-8?B?OGFETlAzVTVjV0RRMmk0VnJqMk4xTGlwWk5RMlZYbng5bFhyMnorTFQvT1ds?=
 =?utf-8?B?bmJYcmJvV1Qvbjh4Vmw3OWl3a0kxZHhNWHBmYmhLTGxnK2JCV3NkcDVOb3cy?=
 =?utf-8?B?UlgxYnZTNnlZQ0xrM2NmSktxRHEvYTVWdGVJVEp3eUprWXA4elhtWHpJaTlz?=
 =?utf-8?B?VklzS3h6a1FNM1pzNXFhd2RyS2lHMlk2Q0V2YlRsckFWSFRQSFJuLzh1TjBq?=
 =?utf-8?B?MlUvRm8xcnJPUERLMzhhUUNFWFNrQSsyQ1FtKzl2SmlMK3d5VVJZcGphbTZF?=
 =?utf-8?B?TEJ1Q05nMlRTRFB0eFUwSmkyRVp2QTI1MHVUZHpaSzBvc2dnejEyQ0xudjlv?=
 =?utf-8?B?dG9ET2s4Mm5sai9tZmwwdkZMMFBYR3hlM2ZRRUUyYVBuTmkzNjgxN29BS2la?=
 =?utf-8?B?SFpqZjJCRFRjLzlvZ0ZaeWNKVmVyOVN1bmtJQm9NUVQ2cVFBWWxVYnY2cU53?=
 =?utf-8?B?ZjhJSnFVeWJ5c3dhS0JqZFdxSGk1elpHSnJndWtpY2RDelVHbkdJTW40VS92?=
 =?utf-8?B?Sktvd2Q2TENqWWZUbzhVbzBYSHcyd3JBVDRmTnJMSHJHUithYzBZNDBQS2tP?=
 =?utf-8?B?ZTFUZVUrcDIvck5uT0IzYkphT2dQU2pVa003MGY5d1ZWVkUxLy82TnlYRGg2?=
 =?utf-8?B?bmdaaDVUZ1UySjlZdlVEakFVbWtkVDk2aEhhYUJsVlZMZ0tERDF5b3NOWFpT?=
 =?utf-8?B?WFNBcDhxZG5FT1VLeGh1aFhZQTRvSDVuNGpaK2owektaZDQzdERrQlY4UGJw?=
 =?utf-8?B?NjJCMERleTRyRWVqaVJjaVRVcHk0dWQvSFlxSVRJM2VGT3pRSGV6YmphTUNV?=
 =?utf-8?B?a0lMNDVma0Y1MEZOT05BTk9DV3FmWFhqVU1IWWdXc0JaSlFxOGg4YWErd3ZW?=
 =?utf-8?B?cHVYTlVBWFg5aUxxb3FEV1pGYTRwRnMrVnkrS0FjZlhtdlFJK3NWeUlmbnRU?=
 =?utf-8?B?aVJ3MnNpUFdPakd3dDgzS2syWnZ5cnRiejdYdlhHRXU3Snk4dnUwZW9oTkkz?=
 =?utf-8?B?S1pPdWNSQkhGb0VFME0vVFlseGRVVzhUVmJrc05GMWRWck5ZbW5MazE4bVkv?=
 =?utf-8?B?eXBpVWw4RXpjMHcxMkNUVk80dGN2a3VyeDNwd1NkQURSVlNTU1pTaEFQU0Yr?=
 =?utf-8?B?SWpabUltRTZndFVjREVHblQxRG1ydXZWdlgyMnpXTGpsUEtPTEJEbHFyWElR?=
 =?utf-8?B?WVhzVzk3YTM0TnRhMGNiWEd6Vit0RWlsamRwclh2MzhSMkdxaXErSy90WUR5?=
 =?utf-8?B?Ti9HWmFFYXE5ZnNmdDZobi9JZ2N5bTlLbzlPcTJNbVlmdVN4YWxESGpBNEJj?=
 =?utf-8?B?ZmlrR01pbmJjS0FQYjR2VFEyR3d2NUpBeXNGWHMraUFORzRaWHJDZFB4T2VI?=
 =?utf-8?B?K2l3aTRML2ErZU93TUhmR1hTSzVzbWYwNTVXSnc2eGZpR3htUzZJbWxhNlpN?=
 =?utf-8?B?ditJUG9lTkpZMEN3TkNhblZBQ2ZiMHlxb0JtK3BYOVJYeUVZZ1l1T3pITk5m?=
 =?utf-8?B?WGxudzV0ckhvWVFNMDViWE5HWmNkRDFKdHBtYUZ2MFVqU1dkemRtN2dyayt4?=
 =?utf-8?B?U3R6Nm1Qb3dpR0JSYXlDMzNHT0V6NG91NWEvdzIxT2gzUUdEUm4wWWNvcjhW?=
 =?utf-8?B?K2pRY3ZyQW9WQUdnUVF2LzhRa0xoeDlUbktwV0Z1Z3QxTVNyU2NtQmJjSWkz?=
 =?utf-8?B?cEMvcHRQczVlZ08vZzZkd0hzZ3V2K3FJZ0V1TjEyWWZRQjZ6UktBeWNtWEVX?=
 =?utf-8?B?T0tERUFqYmdic3N6L2FqSUNzRExvSjgrcVg2UldpWWJKcVJHRUQ1aldKMEdV?=
 =?utf-8?B?SXM0K2E5UTVTcWJmOGxaVi9pbFgvdDFIWnVVa1ltQWY3MmtVMEhtVndwdGtK?=
 =?utf-8?B?NUhPWHlYOUduU1ZQeXRSUk13UnF6SGJWYzJJOUhOWEs1WndkSWZiWUJGb2NI?=
 =?utf-8?B?aUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4DD28F30A7DCA54C9D551071195D581D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5c7c640-77c6-45e1-d05c-08dccb3eb494
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 11:02:15.7289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zNOTIT9KBOnCIw1FhVdH+/t5O5c0SbW4LlcIjP/QwWuXebIdMGF7pYvtPwK3lFpHz2FvhJPUSZ+hVPD2lWFd5wKRrKHP9Dq51B+An+JmuFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5941
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

T24gTW9uLCAyMDI0LTA5LTAyIGF0IDEwOjE0ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBT
ZXB0ZW1iZXIgMiwgMjAyNCAzOjMyIFBNDQo+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT47IGludGVsLQ0KPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gU3ViamVj
dDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBJbXBsbWVudCBXQSB0byBoZWxwIHJlYWNoIFBD
MTANCj4gPiANCj4gPiBPbiBNb24sIDIwMjQtMDktMDIgYXQgMTI6MzcgKzAzMDAsIEhvZ2FuZGVy
LCBKb3VuaSB3cm90ZToNCj4gPiA+IE9uIE1vbiwgMjAyNC0wOS0wMiBhdCAxMDozMiArMDUzMCwg
U3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiA+ID4gVG8gcmVhY2ggUEMxMCB3aGVuIFBLR19DX0xB
VEVOQ1kgaXMgY29uZmlndXJlIHdlIG11c3QgZG8gdGhlDQo+ID4gPiA+IGZvbGxvd2luZyB0aGlu
Z3MNCj4gPiA+ID4gMSkgRW50ZXIgUFNSMSBvbmx5IHdoZW4gZGVsYXllZF92YmxhbmsgPCA2IGxp
bmVzIGFuZCBEQzUgY2FuIGJlDQo+ID4gPiA+IGVudGVyZWQNCj4gPiA+ID4gMikgQWxsb3cgUFNS
MiBkZWVwIHNsZWVwIHdoZW4gREM1IGNhbiBiZSBlbnRlcmVkDQo+ID4gPiA+IDMpIERDNSBjYW4g
YmUgZW50ZXJlZCB3aGVuIGFsbCB0cmFuc29jb2RlciBoYXZlIGVpdGhlciBQU1IxLA0KPiA+ID4g
PiBQU1IyIG9yDQo+ID4gPiA+IGVEUCAxLjUgUFIgQUxQTSBlbmFibGVkIGFuZCBWQkkgaXMgZGlz
YWJsZWQgYW5kIGZsaXBzIGFuZA0KPiA+ID4gPiBwdXNoZXMgYXJlDQo+ID4gPiA+IG5vdCBoYXBw
ZW5pbmcuDQo+ID4gPiA+IA0KPiA+ID4gPiAtLXYyDQo+ID4gPiA+IC1Td2l0Y2ggY29uZGl0aW9u
IGFuZCBkbyBhbiBlYXJseSByZXR1cm4gW0phbmldIC1EbyBzb21lIGNoZWNrcw0KPiA+ID4gPiBp
bg0KPiA+ID4gPiBjb21wdXRlX2NvbmZpZyBbSmFuaV0gLURvIG5vdCB1c2UgcmVnaXN0ZXIgcmVh
ZHMgYXMgYSBtZXRob2Qgb2YNCj4gPiA+ID4gY2hlY2tpbmcgc3RhdGVzIGZvciBEUEtHQyBvciBk
ZWxheWVkIHZibGFuayBbSmFuaV0gLVVzZSBhbm90aGVyDQo+ID4gPiA+IHdheQ0KPiA+ID4gPiB0
byBzZWUgaXMgdmJsYW5rIGludGVycnVwdHMgYXJlIGRpc2FibGVkIG9yIG5vdCBbSmFuaV0NCj4g
PiA+ID4gDQo+ID4gPiA+IC0tdjMNCj4gPiA+ID4gLVVzZSBoYXNfcHNyIHRvIGNoZWNrIGlmIHBz
ciBjYW4gYmUgZW5hYmxlZCBvciBub3QgZm9yDQo+ID4gPiA+IGRjNV9lbnRyeQ0KPiA+ID4gPiBj
b25kIFtVbWFdIC1Nb3ZlIHRoZSBkYzUgZW50cnkgY29tcHV0YXRpb24gdG8NCj4gPiA+ID4gcHNy
X2NvbXB1dGVfY29uZmlnDQo+ID4gPiA+IFtKb3VuaV0gLU5vIG5lZWQgdG8gY2hhbmdlIHNlcXVl
bmNlIG9mIGVuYWJsZWQgYW5kIGFjdGl2YXRlLCBzbw0KPiA+ID4gPiBkb250DQo+ID4gPiA+IG1h
a2UgaHN3X3BzcjFfYWN0aXZhdGUgcmV0dXJuIGFueXRoaW5nIFtKb3VuaV0gLVVzZSBoYXNfcHNy
IHRvDQo+ID4gPiA+IHN0b3ANCj4gPiA+ID4gcHNyMSBhY3RpdmF0aW9uIFtKb3VuaV0gLVVzZSBs
aW5lYWdlIG5vLiBpbiBXQSAtQWRkIHRoZSBkaXNwbGF5DQo+ID4gPiA+IHZlcg0KPiA+ID4gPiBy
ZXN0cmljdGlvbnMgZm9yIFdBDQo+ID4gPiA+IA0KPiA+ID4gPiBXQTogMjIwMTk0NDQ3OTcNCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMiArDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCA5Ng0KPiA+ID4gPiArKysrKysrKysr
KysrKysrKystDQo+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gPiBpbmRl
eCA4NjhmZjg5NzZlZDkuLjUzOTVjMWVjZGU3ZiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
PiA+ID4gQEAgLTE3MTcsNiArMTcxNyw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgYm9vbCBzaW5rX3N1cHBvcnQ7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqBib29sIHNvdXJjZV9zdXBwb3J0Ow0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBlbmFi
bGVkOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBib29sIGlzX2Rwa2djX2NvbmZpZ3VyZWQ7DQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgaXNfZGM1X2VudHJ5X3Bvc3NpYmxlOw0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBwYXVzZWQ7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBl
bnVtIHBpcGUgcGlwZTsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGVudW0gdHJhbnNjb2RlciB0
cmFuc2NvZGVyOw0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggMjU3NTI2MzYyYjM5Li4xZmFlYzc2ZWFjMzIgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ID4gPiBAQCAtODcwLDYgKzg3MCw2OSBAQCBzdGF0aWMgdTggcHNyX2NvbXB1dGVfaWRs
ZV9mcmFtZXMoc3RydWN0DQo+ID4gPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBpZGxlX2ZyYW1lczsNCj4gPiA+ID4gwqB9DQo+ID4gPiA+IA0K
PiA+ID4gPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX2NoZWNrX2RlbGF5ZWRfdmJsYW5rX2xpbWl0
KHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gDQo+
ID4gPiBZb3UgY291bGQgYWRkIHNvbWUgY29udGV4dCBoZXJlIGluIHRoZSBuYW1lLiBUaGlzIGlz
IHNvbWVob3cNCj4gPiA+IHRlbGxpbmcNCj4gPiA+IGl0J3Mgc29tZSBnZW5lcmljIGRlbGF5ZWQg
dmJsYW5rIGxpbWl0IHdoaWxlIGl0IGlzIGFjdHVhbGx5IGxpbWl0DQo+ID4gPiBmb3INCj4gPiA+
IHRoaXMgd29ya2Fyb3VuZC4NCj4gPiA+IA0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRl
LQ0KPiA+ID4gPiA+IGh3LmFkanVzdGVkX21vZGU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgcmV0dXJuIChhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCAtDQo+ID4g
PiA+IGFkanVzdGVkX21vZGUtDQo+ID4gPiA+ID4gY3J0Y192ZGlzcGxheSkgPj0gNjsNCj4gPiA+
ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAqIFBLR19DX0xBVEVOQ1kg
aXMgY29uZmlndXJlZCBvbmx5IHdoZW4gRElTUExBWV9WRVIgPj0gMjAgYW5kDQo+ID4gPiA+ICsg
KiBWUlIgaXMgbm90IGVuYWJsZWQNCj4gPiA+ID4gKyAqLw0KPiA+ID4gPiArc3RhdGljIGJvb2wg
aW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZpZ3VyZWQoc3RydWN0DQo+ID4gPiA+IGRybV9pOTE1X3By
aXZhdGUNCj4gPiA+ID4gKmk5MTUpDQo+ID4gPiA+ICt7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKg
wqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDIwKQ0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2NydGMoJmk5MTUtPmRybSwgaW50ZWxfY3J0Yykg
ew0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfY3J0Yy0+YWN0aXZlKQ0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnRpbnVlOw0KPiA+ID4g
PiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlID0g
aW50ZWxfY3J0Yy0+Y29uZmlnOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkNCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqByZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiArLyoNCj4gPiA+
ID4gKyAqIERDNSBlbnRyeSBpcyBvbmx5IHBvc3NpYmxlIGlmIHZibGFuayBpbnRlcnJ1cHQgaXMg
ZGlzYWJsZWQNCj4gPiA+ID4gKyAqIGFuZCBlaXRoZXIgcHNyMSwgcHNyMiwgZWRwIDEuNSBwciBh
bHBtIGlzIGVuYWJsZWQgb24gYWxsDQo+ID4gPiA+ICsgKiBlbmFibGVkIGVuY29kZXJzLg0KPiA+
ID4gPiArICovDQo+ID4gPiA+ICtzdGF0aWMgYm9vbA0KPiA+ID4gPiAraW50ZWxfcHNyX2lzX2Rj
NV9lbnRyeV9wb3NzaWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ID4gKmNydGNfc3RhdGUpDQo+ID4g
PiA+ICt7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghKGNydGNfc3RhdGUt
Pmhhc19wc3IgfHwgY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPmhhc19zZWxfdXBkYXRlKSkNCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+IA0K
PiA+ID4gQ3VycmVudGx5IHRoaXMgaXMgbm90IHJldHVybmluZyBmb3IgRFAyLjEgUFIuIFRoaXMg
d291bGQgYmV0dGVyDQo+ID4gPiBtYXRjaA0KPiA+ID4gd2l0aCBjb21tZW50IGFib3ZlOg0KPiA+
ID4gDQo+ID4gPiBpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IgfHwgIWludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkpDQo+ID4gPiDCoMKgwqAgcmV0dXJuIGZhbHNlOw0KPiA+ID4gDQo+ID4gPiBTdGls
bCAiX2FsbF8gZW5hYmxlZCBlbmNvZGVycyIgaXMgbm90IGhhbmRsZWQuLi4NCj4gPiA+IA0KPiA+
ID4gQlIsDQo+ID4gPiANCj4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gDQo+ID4gPiA+ICsN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxfY3J0YygmaTkxNS0+ZHJtLCBp
bnRlbF9jcnRjKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgZHJtX2NydGMgKmNydGMgPSAmaW50ZWxfY3J0Yy0+YmFzZTsNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fdmJsYW5rX2NydGMgKnZibGFuazsNCj4g
PiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFpbnRl
bF9jcnRjLT5hY3RpdmUpDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHZibGFuayA9IGRybV9jcnRjX3ZibGFua19jcnRjKGNydGMpOw0K
PiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAodmJs
YW5rLT5lbmFibGVkKQ0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+
ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+ID4gPiArfQ0K
PiA+ID4gPiArDQo+ID4gPiA+IMKgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gwqB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+ID4gPiBkcF90b19pOTE1
KGludGVsX2RwKTsgQEANCj4gPiA+ID4gLTk4MCw3ICsxMDQzLDExIEBAIHN0YXRpYyB2b2lkIGhz
d19hY3RpdmF0ZV9wc3IyKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxf
ZHApDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgdmFsID0gRURQX1BTUjJfRU5BQkxFOw0K
PiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIHBzcl92YWwgPSAwOw0KPiA+ID4gPiANCj4gPiA+
ID4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9DQo+ID4gPiA+IEVEUF9QU1IyX0lETEVfRlJBTUVTKHBz
cl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oC8qIFdhXzIyMDE5NDQ0Nzk3ICovDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgIT0gMjAgfHwNCj4gPiANCj4gPiBJIHRoaW5rIHRoaXMgaXMgd3Jvbmcu
IEl0IHdpbGwgbm90IGNvbmZpZ3VyZSBpZGxlIGZyYW1lcyBmb3INCj4gPiBkaXNwbGF5IHZlcnNp
b24NCj4gPiBvdGhlciB0aGFuIDIwLg0KPiANCj4gV291bGRu4oCZdCB0aGlzIGNvbmZpZ3VyZSBp
ZGxlIGZyYW1lcyBmb3IgYWxsIHZlcnNpb25zIGV4Y2VwdCAyMCANCj4gQW5kIGlmIGl0IGlzIDIw
IHRoZW4gaWYgZHBrZ2MgaXMgY29uZmlndXJlZCBhbmQgZGM1IGVudHJ5IGlzIHBvc3NpYmxlDQo+
IE9ubHkgdGhlbiBjb25maWd1cmUgaWRsZSBmcmFtZXMNCg0KWWVzLiBNeSBiYWQuIHNvcnJ5IGZv
ciB0aGF0LiBUaGlzIHNob3VsZCBiZSBvayBmb3IgZGlzcGxheSB2ZXJzaW9uICE9DQoyMC4gQW5v
dGhlciB0aGluZyBoZXJlLiBXQSBkZXNjcmlwdGlvbiBpczoNCg0KIldoZW4gUEtHX0NfTEFURU5D
WSBpcyBjb25maWd1cmVkIChub3QgYWxsIDFzKSwgZW5hYmxlIFBTUjIgZGVlcCBzbGVlcA0KKFBT
UjJfQ1RMIElkbGUgRnJhbWVzICE9IDApIG9ubHkgd2hlbiBEQzUgY2FuIGJlIGVudGVyZWQuIg0K
DQpIb3cgYWJvdXQgY2FzZSB3aGVyZSBQS0dfQ19MQVRFTkNZIGlzIG5vdCBjb25maWd1cmVkPyBE
byB3ZSBuZWVkIHRvDQpjYXJlIGFib3V0IGl0Pw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4gPiANCj4gPiBCUiwNCj4gPiANCj4g
PiBKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIChp
bnRlbF9kcC0+cHNyLmlzX2Rwa2djX2NvbmZpZ3VyZWQgJiYNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50ZWxfZHAtPnBzci5pc19kYzVfZW50cnlfcG9zc2libGUpKQ0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9DQo+ID4gPiA+IEVEUF9QU1Iy
X0lETEVfRlJBTUVTKHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ID4gPiA+
IA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDE0
ICYmDQo+ID4gPiA+ICFJU19BTERFUkxBS0VfUChkZXZfcHJpdikpDQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9IEVEUF9TVV9UUkFDS19FTkFCTEU7IEBAIC0x
NTk1LDYgKzE2NjIsMzINCj4gPiA+ID4gQEANCj4gPiA+ID4gX3BhbmVsX3JlcGxheV9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIHRydWU7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiANCj4gPiA+ID4gK3N0YXRpYyB2
b2lkIHdhXzIyMDE5NDQ0Nzk3KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gew0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihp
OTE1KSAhPSAyMCkNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
bjsNCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLmlzX2Rw
a2djX2NvbmZpZ3VyZWQgPQ0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW50ZWxfcHNyX2lzX2Rwa2djX2NvbmZpZ3VyZWQoaTkxNSk7DQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoGludGVsX2RwLT5wc3IuaXNfZGM1X2VudHJ5X3Bvc3NpYmxlID0NCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9pc19kYzVfZW50cnlfcG9zc2libGUo
aTkxNSwNCj4gPiA+ID4gY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgLyogUFNSMiBub3QgaGFuZGxlZCBoZXJlLiBXYSBub3QgbmVlZGVkIGZvciBQYW5lbA0K
PiA+ID4gPiBSZXBsYXkgKi8NCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUt
Pmhhc19zZWxfdXBkYXRlIHx8IGNydGNfc3RhdGUtDQo+ID4gPiA+ID4gaGFzX3BhbmVsX3JlcGxh
eSkNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiA+
ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5pc19kcGtnY19j
b25maWd1cmVkICYmDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAoaW50ZWxfcHNyX2No
ZWNrX2RlbGF5ZWRfdmJsYW5rX2xpbWl0KGNydGNfc3RhdGUpDQo+ID4gPiA+IHx8DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3IuaXNfZGM1X2VudHJ5X3Bvc3Np
YmxlKSkgew0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19r
bXMoJmk5MTUtPmRybSwNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgIlBTUjEgbm90IGVuYWJsZWQgYXMgaXQgZG9lc24ndA0KPiA+
ID4gPiBtZWV0DQo+ID4gPiA+IHJlcXVpcmVtZW50cyBvZiBXQTogMjIwMTk0NDQ3OTdcbiIpOw0K
PiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3Bz
ciA9IGZhbHNlOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gPiA+ICt9DQo+ID4gPiA+
ICsNCj4gPiA+ID4gwqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+
ICpjcnRjX3N0YXRlLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4g
PiA+ICpjb25uX3N0YXRlKQ0KPiA+ID4gPiBAQCAtMTY0MSw2ICsxNzM0LDcgQEAgdm9pZCBpbnRl
bF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gPiA+IGludGVsX2RwDQo+ID4gPiA+ICpp
bnRlbF9kcCwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47
DQo+ID4gPiA+IA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3NlbF91
cGRhdGUgPQ0KPiA+ID4gPiBpbnRlbF9zZWxfdXBkYXRlX2NvbmZpZ192YWxpZChpbnRlbF9kcCwg
Y3J0Y19zdGF0ZSk7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHdhXzIyMDE5NDQ0Nzk3KGludGVs
X2RwLCBjcnRjX3N0YXRlKTsNCj4gPiA+ID4gwqB9DQo+ID4gPiA+IA0KPiA+ID4gPiDCoHZvaWQg
aW50ZWxfcHNyX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4g
PiANCj4gDQoNCg==
