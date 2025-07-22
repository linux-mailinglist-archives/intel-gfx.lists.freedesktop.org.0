Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FE4B0D8A5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 13:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E4D10E665;
	Tue, 22 Jul 2025 11:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wvvhn54c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29AC610E665;
 Tue, 22 Jul 2025 11:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753185494; x=1784721494;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=l/K7xP5HwG758mtvPOCJl/meH6R27OynRh/QS+tlreo=;
 b=Wvvhn54cV5O9Ila/3Fszr6/vUgmOW7NchWrhNpMKDOUHzQyBjdBcxGyJ
 BA61XKlYUdx+mw/OXUzFoxdVobqUd9yaw7L0NwjEM66r4Rq5/itFLgVFK
 BH5vVP6VJmqAgbMjB6/nNpnDAqudPqkG+b20vCfpzVTJGwAJifd3H2ouy
 DvsWLRunq9/y8EBTMGqcBKYSkE4+wwWXIaMTfFqH6C+4GDdasg1OWlpVK
 qD4H6DnKB3U2ZXmMMAa7kA+Eudb5W3yGkHZRnOs+OLaknDk16BFY5Wtka
 nTtxYi+Kp2a+kpwEm0Ri6NNxXeOkb4VBFkjLF+BD/14kxxHgMZNRpx2Au Q==;
X-CSE-ConnectionGUID: LxDVzQTSRFacyk01MWTJBw==
X-CSE-MsgGUID: gi6HootOR96WwfDpC4qqbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55580141"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55580141"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:58:13 -0700
X-CSE-ConnectionGUID: bJ/qU/YFRsSnXJiZhMgHNg==
X-CSE-MsgGUID: hJaQiQL+TeWfTLL6Pwz3Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159196287"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:58:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 04:58:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 04:58:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.42)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 22 Jul 2025 04:58:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LDE6GQkg+dgHt37SefsBhO0HnkEYmC3PfnsnYkAWt5Kmq4XDkk2Hjrl/g7pik8QY+sMxRmx3Q6gIhQaD5Dm59Pzk3ygTcNAmi9YWy0gZBuk0hQgruXb4+MFqUIS131qqhvc+u52ZswFCO7I6tkI5L3Up2BsvbVBF3xsG/loDJzkDvVqHAhJt4zhetIw3us5DJGeFwxOlLdULSzCZI92gzatbE1xotq3fFlBBINah4c2ilT2gz+E7LiDjRYv3ZtzX15lzy7QwpG/d55I1kDiobmcLKYx/inYcdDeFSge9Me/K3OxJv/AtELuvQ2Z7YkQgzlNG5JJW28OesUB2X5wikA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3LZhNC7wvJQdb3OWO7js/jZOCo/0lvdNySuhNl+RPQU=;
 b=htsa8KdQS6Lhg1jRSzT3ZKklFDMpR0Qb9CRZqwelxdOF4wc5Jxp7UWwHV7LoQmZLwIevPjd5lhSi1U9N2+WpcoupTTNwONLOyOxiVfbl6BlZO0JJ/o7eKQUI4sRuF2hPGFr0Le4m/cYAzVjYuDkTCh7VQElFxX6RrH12rl4ZNG4facpEAg7O0KQt0kuY2oM6VxjaulYIxUVSElFuCwi+1mZC0vXGemo4Oznll0AJeXoAS9GTQFdVPOLsJ4rkHu3YVRndvvE3umsNfoIpmu6qSD1APoH4t3hnFlEwZQCxCbTXD9LI2g9HcXUIGQUGPxe+W+oqknBHhabDXc5hHOf20g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 11:58:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 11:58:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250722101317.1728499-3-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
 <20250722101317.1728499-3-jouni.hogander@intel.com>
Subject: Re: [PATCH v2 2/4] drm/i915/display: Avoid unnecessarily calling
 intel_cx0_get_owned_lane_mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Jul 2025 08:58:04 -0300
Message-ID: <175318548467.16862.9965593163061413456@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0274.namprd04.prod.outlook.com
 (2603:10b6:303:89::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7924:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b76184b-626c-4ca7-e43e-08ddc91706f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHU4cnVtWTVOcDlGVkVKUWpld3c1aFNXLzdoc0d5b2ttOC9JbnZlZDltc0VN?=
 =?utf-8?B?cm9hODBBKzkwbWF3R1o5SXhScnhEdFFCL1g0UlMzbkRpWU8rRUlQWVU4R25y?=
 =?utf-8?B?Y295RmxhbDV2V2RXZFh3WE5sVlU3TXE4SEdoajJvQVkxcHcrRzhTV3QrRkxY?=
 =?utf-8?B?OU44d3RXOGtaRS9KRmVGTFVERXZwamNkOXZCSVRXVTNqNnhOSU9jZXFGZFZM?=
 =?utf-8?B?UDBDRkZMc1JVMzZnZDYvU2xMQy9YRHhleWZLaWh6QkdPZldJRnhkRXd3b2sy?=
 =?utf-8?B?KzRkS04xNTY5MGFtckRpWjJQNXNaYUxGV0ZiMS9Yc1ZGSmdBemRzaUFhOVha?=
 =?utf-8?B?eThBR3ozVit1UU84RkxTMEMxM280RDdMamRMRlNYc29JYVRCQlYwVWVrVGNQ?=
 =?utf-8?B?b29TNlBubGsvTU1oV2FlZExmUXV6UUdXQkZDOFhSSHZZU1NjakdYSzdJSklJ?=
 =?utf-8?B?NWhMSS9KUlRtNnp1OWp2dDJWOVpJbXpERHBEVUlrRDZ0d2NwL24yUmdxaGRv?=
 =?utf-8?B?SFhlR3FvVUNxeUdFM09lT0NEU0xVaklOaDNNK1JpdGU4RTh5ckx6dlA2NGVt?=
 =?utf-8?B?c04xUG9WUHVvSFoyNmxHVjdGaHorTTlVaEQ3UlE4L2x0RXhudWcwMmZZOE15?=
 =?utf-8?B?Nnk1Y3R4ZmU3R3puNmZMckM4bjloMFdZWE5nTnVndy9vMUNVakIzbkhwYWl0?=
 =?utf-8?B?R3RNb3I2dm1ySUxEeGJGbE52MThoZktPVlpuS2c1WDRhTUVabmhBOFN4YU5U?=
 =?utf-8?B?c1oxMXV6YVdmMVI4QjdGL1ZiS0F6Q0hUZXBtSGw5eWxxWjM5M29WSTJyajRU?=
 =?utf-8?B?R0VmLzhHY09teVA4TGdyQnBaZTBvQXE1c3U0c2lWTnEvVkdZY0NEKzlsNmo2?=
 =?utf-8?B?NTZoYTdFYkQ0K0dZWnJBWUVNYVpJakpuMVl1Q1hkUTY0clJFMWFaSnJoRWNi?=
 =?utf-8?B?cDJTU0hSTStrSDhGTVBaV1hWTWR2MENXSkF4ck1raFpwT05sS1lId08zR3Z6?=
 =?utf-8?B?M3FoWjRvZ0RUSnFPVzE3VC8rT2wzV01QQ1RXbXpieitwVDQ0RTI2S1FyajVm?=
 =?utf-8?B?SjEyY1puMkcrcFhEaW96TTNQV0ZsNFVYeDF0aUFKWWx2emJFRjd1dWtTNGQ5?=
 =?utf-8?B?b0llaTVTWEdyTjFNd1hCVTUvd1RNaGxHcWJyRVg2c3A4YW5tSjkrZDNHM3lI?=
 =?utf-8?B?MWZiT1dQYVVMNzdLbzVDUmNoTWNKeUN5MUEzNWlCajBXTjBxeHlteEIwRjFL?=
 =?utf-8?B?U25jSHFLNXl6OFFkQXpZYUhIUzljN3FtUXRIcDRmekhhdHdFNjl5TmhNU0xi?=
 =?utf-8?B?eDVPeGFaNzBtV0M3UTBOOWU0Y3ZLekRBR1dXcTY2NUEwNFdLYnNaYVY4dEpD?=
 =?utf-8?B?QjRTZTJUWFZlQ01WNi9CVHlYaklxaXpzeTluTm5kaDh1MktqOXU4QlErMlNX?=
 =?utf-8?B?VnJvbld4NnRndlFIU0dIL3h5TjdnaTR6bENPNW9nR3NMeFZPcGZnc2NnVWlo?=
 =?utf-8?B?SlJFVE9LY25JdDBVYWp1TEh0bXVtd3g3ZFdlZ0dHcytHYWlvd2xJMHQrV0tr?=
 =?utf-8?B?KzZGWXVXSTZIdXdEcUlLVm9zay91Y2F0elI4OXB4REtvQUdEbVk3L2ZHbEhM?=
 =?utf-8?B?c3ZGZFZZcWZkdnZTMGFJN08yTzkra1hncmpPQWFjS1M4YkU5dnNQZWpzc1JZ?=
 =?utf-8?B?ZHVzejlVdUZIeXNBRnJPYWxZNTNZZG0xdU1oVjBzcG11QW9JdjJ0eGIzQ04w?=
 =?utf-8?B?aytpeVFhSnFETXhNa083VFpHa0lLSlRjVEpYZklndlRPS3ZMcXlwdUZQZ1Bi?=
 =?utf-8?B?NmZpY2YrVTU3Rlo2UW5GcTNNOVJGSjBVOEgxc1h3SnBkTmdwSWRwN1BzamJE?=
 =?utf-8?B?YTlLK3JqdDRiWC92c2ZuN0JrVkdXcWE0bGVhWGRRWlFzNVppVEt5NCtRSVha?=
 =?utf-8?B?NWR4eEpQQnVrRFpsT3RlSzQzTzZQRUREV3Znd3RudndPbU5uRThmSzVNQ05V?=
 =?utf-8?B?eGk3anBpeVl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjQ0RXJFem9vczh5R0MyejgvWjhNeDNrbVp6NW51REdFVWpicHVTVHFsYmkz?=
 =?utf-8?B?ZVlhdmcxSGkwTVJFTlcvbG4vaGpxU1YxV0hrMHJ1ZnZQZ0hLRWovQXNTaEJp?=
 =?utf-8?B?bm85QTdWVnllTmJ4V1p5dGJ0STN1N21NRjQrQUszd3lYRmhKOS9wNW9POFR0?=
 =?utf-8?B?Zmhaam9rMlJ3ck1DN21NbEdZNEhlbUhrcEdnblVQUXlXeGRVaGdIb3l6WVpu?=
 =?utf-8?B?WGI1T0hpOEVQUjFnQ01hMVZNdHc2eTdWVmkrdm9FUXNKaHlGSUE3amsxZlRn?=
 =?utf-8?B?cW8xZllIcHhFbmV6WE5nTjJZWUwzczg2YThzRjBWM3JrbjFXc2NZWU8xRjNj?=
 =?utf-8?B?VzRMKzJ3cVFYVEE5ckpoK1UwUmR6TndyRkV5TVpMd2JKSmtKeERiczVrTzlo?=
 =?utf-8?B?cFFlRllSQ1htNGtCbDJQZlZ0WFo2a1VkRi9BQ3BHUE5TTmRiTldDYzB3YmZu?=
 =?utf-8?B?bG42LzZqZEltaklvdkt5Z1FMeksxY0UrSERXK3ZsTVdVRzRkay9uMlE3blc2?=
 =?utf-8?B?R0YzWVVZRDVMRVNmM2E5aWJWZGV1ZVBtdG9ncmFRdklIOEM2M1ZQa2JCOGVM?=
 =?utf-8?B?Qk1kbEV2SVZoN2ZUdmpQdzFqSFRNR3krN1ZhempIdG5IYmlPeWlnL3QzTzN1?=
 =?utf-8?B?b0JxK3VMZUlORkttSVU1TUN1MHgzWFYxcW9veVdmUHlVUmsycVQyS1hhaGZR?=
 =?utf-8?B?VzdnZExzM25McUFWK1ArVUlOWkZFcnNJdFhXNzVkOTdzNGRSb3V2dGovVk5O?=
 =?utf-8?B?WXpaWlkxSzhXTEFqaFhEVitVNWhtaGpNbzVmOUZBL2RHZkhUYVNRemtFZVpt?=
 =?utf-8?B?cXdKQThaWkVBbTA4dVBSS1hzM0Q2S0dnYzB3SzhZeTU1akFvYnFVQVlGaW1D?=
 =?utf-8?B?TWgrOEFBMGZKT1FkRzR5ZWZZckM0WVNCWlkwMHBlckRhS1RRWWQzYzMxSUw4?=
 =?utf-8?B?OWhoZkpMWGdzR2wxU3VyY09aMExHL29jT3pHVTBqTmIxdXN6Mm9ESU9FbnBY?=
 =?utf-8?B?M0JIVDF6RlRBUFJ0K3BkYTNxREJpcHpTc2ZPdEMyUVo4OERLS3M3MWtPaWZm?=
 =?utf-8?B?U014LzZkS2JDOVBubDhDa3R0MnorY3k3OHduYzgyL1IyUTVlc3dZSmRRaEh5?=
 =?utf-8?B?azdyS2xQdjd4cjVRVUZYYnNVSml5L0JYdjZnRkhnMmRtazk0WW91cTI0QlNy?=
 =?utf-8?B?TkZ3SkxwaFVoZ0l4c0cyMXEyRDN1K2t2K0dWTlNQOTFjUVlQaURZYU1iWmFZ?=
 =?utf-8?B?aTRIeUlGWDlFMWdFV1lpV3FyYWl0dmM5SUpSOXlrb3pQbElack1pKzRYdFpm?=
 =?utf-8?B?TnBaNzRzUGY1UnZCR1BidkxSNXVPTjhXYnYxbkNJaEVPbHBoT1J1ZzhhdDBY?=
 =?utf-8?B?NDF2aHE1YkJFUUNBSllGa1U1WnQ0RDJJcGVlSFZ1Rk1HY3FzTHh5NzhBWjJ4?=
 =?utf-8?B?dEpmQVB4UWl2MXM1eTBwcXMwazFZRTZwc2R5a3lwbGlWZ3lUSVFuMVgyQmsz?=
 =?utf-8?B?SEtqYks1UEJkTnhnWEhjenFsVmIrdnpEOEdIR0U3TW1uYSt4ZThrWURQdFZa?=
 =?utf-8?B?eUdXMytGeGgyZDN6a3g1ZTAzTnd3V2xlMVQzV0ZIaXV2QTZZUzRUbnhKcGkz?=
 =?utf-8?B?K0JNLzVEeGJmZjRlaUJwUDNKL2loVDRqYzBCS002ZXhERTdjRDlBdUo4Yy9K?=
 =?utf-8?B?d2RrUmJNZ0hsZ2duc2xKbFByMzY4UlVJV1lVdHE2dUJlTHVCZjZQMlJmUHVw?=
 =?utf-8?B?NGFkelo5Tk1zbzZha29NMVZhRHV2WEFuWVpuR0JyRC92Tld4d2x6WllvZ0dP?=
 =?utf-8?B?TG9IUEZDaGMxTEZROFdqVVBnMHFLbTR0cUp4R2UySlZBTW5JeXBQRVoxc1Q1?=
 =?utf-8?B?SkZaZ0Z2OCtMS1dLQ3I1TVMvSDBlNWlUSFQ2Uy91eXR3Q0JTaHhBK2h5TVcr?=
 =?utf-8?B?RjJUd0txdUwzdFJBOXMrU1pLYy9QMDhibXBKNUxrTWRtQUp6UEcxM2FwbHM2?=
 =?utf-8?B?VVZrbWxMK2ZQOVNCSjA2ZDAydVMxa1krM1I0NHVra3FtRzM4bGtOeDFPRGI3?=
 =?utf-8?B?SXR2dmVUTHBkRDVhbnJlUlJySjM0Zkw1S2RuZGNuc1BOKzJlRlJpc2RhV3FY?=
 =?utf-8?B?aVVQWmpQYkZvVzNBR3BZQkhGL28vSm4zUWNIckxGdzlqeFZkWEV6anQxbjV1?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b76184b-626c-4ca7-e43e-08ddc91706f9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 11:58:09.7022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XldOlLU1hb9snOwW9+bDGxNP12Wm5fXAjmFI9uxOFLg/AeRk4JH8W+lB5KJQKX+cN/ePJiTEqz0khdx9lwNE3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
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

Quoting Jouni H=C3=B6gander (2025-07-22 07:13:15-03:00)
>Currently we are always calling intel_cx0_get_owned_lane_mask when
>intel_lnl_mac_transmit_lfps is called. Avoid this in cases where it's not
>needed.
>
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 2b0305bb04cd..2993dabdbee6 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3239,13 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct intel_enco=
der *encoder,
>                                  const struct intel_crtc_state *crtc_stat=
e)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>-        u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>         int i;
>+        u8 owned_lane_mask;
>=20
>         if (DISPLAY_VER(display) < 20 ||
>             !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder), crtc_s=
tate))
>                 return;
>=20
>+        owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>         for (i =3D 0; i < 4; i++) {
>                 int tx =3D i % 2 + 1;
>                 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE=
1;
>--=20
>2.43.0
>
