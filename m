Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C26C6B2D6DE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 10:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF0910E6B5;
	Wed, 20 Aug 2025 08:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUVakAHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EB710E362;
 Wed, 20 Aug 2025 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755679326; x=1787215326;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YMQMpDDXA3wCO+sVcqb2LXrZ0OLA+5awibMSxq46aIo=;
 b=mUVakAHw1GBTPYEyvc2kNTUHWf/8x/n77eCuNyVgNWxUJnLXZ8Mdv9Jn
 sUMBqQ4Ec0ZHW4/Xy8wivZnqIF6Nwhy3Fz1A7dfKlDseKQ5KnhrdlzTJ7
 +TyvXAtSUU+o0Z2j8tM7TLOp9L0AprgYUnMU/Axopfle1pSMAG1WTvKfR
 ct79hD0LVOmDrM2Hf58jn3yFA0AqQ7pHOu42PVe5D/osA7+diY7IL3gM6
 HyWclhznOI6Y0hzv5j7uqzgk6QYk1RRFAhy2GpmPg5khgfS6BBFZ8eCLj
 Tu2NAVXE8mOp00ROlRtkLPCxZNWyWkeeFYxzskEOcAl7s4REPMWeVqHz0 A==;
X-CSE-ConnectionGUID: MVTMzIWfSTCDbqP2hBiprQ==
X-CSE-MsgGUID: rg51eATnQoK/rdcioOqjag==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57646657"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57646657"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:42:06 -0700
X-CSE-ConnectionGUID: pRuJJX/MRp6C9Q+tv/JbFg==
X-CSE-MsgGUID: ncJLXt6WQp2uBFtdLh/6ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168875560"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:42:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:42:04 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 01:42:04 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.49)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 01:42:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S2yCdyZWXbm3qHXpoPdS2TFnJh+1W3092PwKX3Bqs4KTA1Z5tzBxA6RyrUgYjWudEukYdvukCMrAPMc+H9YOzt1VASGEmObnSG8YqHFd9NGlCUYbtihdyb1F522XKIhEvOYrt5shKz3ptr17JtMrNcutC1Qo+egAvIC4a5wNSFMaWdgF6oFGIM5Ka4OfV2iZnbGBDDG4Ea/QKMa8XL8R/46YDiwzbX5zqymV219oZNFDwSLYnw8ET4i15BdCYsO6JaSaN7wrRSQ25yEzjM2IWmyLUPPyJS7TLYHbpBLlEOy68H0a7FtN+MoQrw8esSdOhAjfjp/e7b7lx05o9DeZ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jY8QvEixD46yDvI5Kwd34gF3ZSekaKIP6o1i/o+PLT0=;
 b=qM4PWGBkYwY5KwRBmwq5oDToZjpmBIn+nQpUmoHtJm1jE2KZOCkgf5400DR9pN/XeaJZhdUox7BzF2Abqsa14MeGF/hznualPYqgjfYKePD10+/6VWLkVzFs9geRlK2ob6U93VjGEnzB7kDBwQE+7Y357NTn/8s2kU+uGHRVaJ3lvWR5il6+Ku82lBs3Jd6HtaLZxgzCPwaHSYG63Y5QxvB9HarTbhtfW/VFtS1YSoD1CtEKiNyOW/1i5LE3Etb5n8mUdyrcxHWoMuozJMFMcAIDITm7n0zPpONkDdsEC0mGcsUHCFPMRllGGxm8Muywo4EzCxpT2WHE/+8sXay2HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8348.namprd11.prod.outlook.com (2603:10b6:a03:53a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 20 Aug
 2025 08:42:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Wed, 20 Aug 2025
 08:42:02 +0000
Message-ID: <615a008b-5734-4326-9616-a5ebf58e9a7a@intel.com>
Date: Wed, 20 Aug 2025 14:11:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Remove the encoder check in hdcp enable
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250819150729.88561-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250819150729.88561-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8348:EE_
X-MS-Office365-Filtering-Correlation-Id: b47f1646-8d4f-4005-822f-08dddfc56f40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkVQeURCeWdJbTM2RXIxdHVrY2xSV1d0NzVSRjBsekFnRzNTVDZJbzB4ZjZR?=
 =?utf-8?B?OXhWMGZYZXZaVWg0Y0h4R2JtUWFpQzErLytaS0NaNmRrc3BRTkhkNjJVSHIw?=
 =?utf-8?B?WmFtU2pFKzZhSG5sekRMWTRVSkhqVEpNcmhHK3Z4TjdUeGhLeU0vNWd2S25p?=
 =?utf-8?B?TzFmWjJma1VVRlFWY0krVHZiRy9BSjFIL1pMZkUvam5jM09tcXI3OVJNTk8y?=
 =?utf-8?B?VW85em9BTkkwR1dTYnVKZVdZbTNHU0FzWWxKK2loSXpFUFFlUjEvOHBqS0lo?=
 =?utf-8?B?TTNudk15N0lId3o5RVJXZTFiODVWRUdjTHEwWmlqQ09CRVE3NGdveS9aQWZs?=
 =?utf-8?B?MHlodDJQRkI0dTFYeHVwbkJnZ3piRllCRkdaMnhwMXp2ZWlBZ3hPWjFZaHpu?=
 =?utf-8?B?amwrUURsdUtYelJuR1Bzb0Y1K1JKWkN4WUxDNFlUZDNWaVNQTmxxN3IwUW4w?=
 =?utf-8?B?d3JwTDNaOWVaSStESmRCYjZ4blgxRzlOMkcyMkVqL0F0T0RSYVpkL3RmR1Fw?=
 =?utf-8?B?b2tuZjJNdmlMZFFidkxvOEUxa1Z2VCtMdzI4YWFiTnVabUxaWjhEVkJkNERV?=
 =?utf-8?B?aGVKaUxjR2VHdUhZUnI2ajczSFZXbUF4RzRRV0pySmFRMWFPMXgrOFBQZ1Q1?=
 =?utf-8?B?Vk9sSi9JTW9QRlV1alFCa2k5bDdVNjBYNmc4Wkc3eG0zN2M4M3lCQ1J4UTN5?=
 =?utf-8?B?TDJ4L0Ztd1JsK1lrQ05jTVd0SU14QmVZamhxblh2RlhXSktwcDlUTTZlK0hK?=
 =?utf-8?B?YjVUQ1RiTklwNTcycjgrMDRhQ3RseWxWQkN4dlVvRXBCK2d6K1JFeWc3Z1Vh?=
 =?utf-8?B?emlJNDhZckgwOFFuaGltanFGNHlWb0F4cWgrbjFnc0ZGYm5paWNYMkUyMk51?=
 =?utf-8?B?RU1uUk9FTjdqWEgwZXBpcDY3Ujh1b3h2Ri9lSVpteTVIdmVEaEdWeTNGU1JB?=
 =?utf-8?B?Y2lGa2pHL29uSnp2aHJidHN1Sm4rTWdWQ2FreWlmWXdUZzhub01PVGtJcEJE?=
 =?utf-8?B?aDQ3eHlLa05BSFVqUDZ4WGc3dmZnNzlLY0RKanI3VjMyUFNxQ2ZFZXQyREIx?=
 =?utf-8?B?TEZxMzFZRkNoYWVwUU80bVEreEpwRklIaCtqb24xcHFPNWt4SGF4REpCWEZH?=
 =?utf-8?B?OHpNZmNzaEpqUUFuUUp3Q3pjUnFzempyZlFWNjZCRlhDQ2xhblVCREZxcjgw?=
 =?utf-8?B?UmhuMFVRSmN6NU4rYjlFSWFZZnMzbklVTk9OQUVnb1QySGFBNmRtM2JyZ3Yr?=
 =?utf-8?B?U2tOSSs1a1BYa0dnZ2h3NnloZG5KVCtrUllmT21WZnJaVStlWWwxSzN0SDJY?=
 =?utf-8?B?N0g0OFFPQ0pYbmx5WUx3aVA5QlNocmR2aFVBWXpVU1ZGQ0h3OUlvUnFUMWNN?=
 =?utf-8?B?Wjh2dDNuT3ZneE1NTHdKSEd5U2s2YWdhYlF5Q29rUHNLd1BJc1ZwVnlDcG9V?=
 =?utf-8?B?aTkyY0d2ci9kQWdjRG1TV1hPd25ESjQvdFMwSUZnWUUvQnYxUXZoSnkzSFFi?=
 =?utf-8?B?NGNhNWVDNXZONDhGWG9waG96Y3BCSlAxTG5BUUxKb3BhRkwwSFZhU29qYzlm?=
 =?utf-8?B?eFc5SUtCcmQ2VGlwdlMrQ2poTE1udmN6dmM1VHByUkYrd2FONFZjN3dZUE5z?=
 =?utf-8?B?SUdUYTRtcTU4MkIxcEVKVW8zRkMyU3JYMSs5UG9MWktQdjhTRGlYQkZ6TjBU?=
 =?utf-8?B?OGxCNlNzUHI2MGlhcWFZY1FNbHczNTNUa2xNdm8rRW5SOXM5clZ0c1FXSGJh?=
 =?utf-8?B?ek5GSlkzdGUxdWxERUR3bUtoN2F0eVZmSFBmdlQ1MlhGWkF1QU5remw1dEkr?=
 =?utf-8?B?NnJaS1oraHo0NFBML3JUcmxxNnZpSG5KMWR6S0VudkNkZDA2WEJNWC83V09w?=
 =?utf-8?B?dWNyOWZYK3VFcGVDZHlNYy9pTzNRTW9leVFIaXVIbmk5dDRvMUpBZDJ6Z1VV?=
 =?utf-8?Q?Zex693iIH6U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG1BaW5GdXB3LzdYeWkweVhwWUVVbGdlUUlmSDRsYUtnV2M5UGRmUktHTHdH?=
 =?utf-8?B?RlhDNFNXcGdxQlpuVVlEZkpMdVdEWG5XRFYydG5abm9scGVPS0JERldMQ0Fl?=
 =?utf-8?B?L1NRdm5TdEFmVnRZcElrRHJnbUJkUHE3L1NnaWhhZm9IeDhkOStVcGV2bkh1?=
 =?utf-8?B?dVVEZTdSQ3BVMEI3MEdCeGJ5QXRFY08yODZMOVNwb3ZydkhYTmswdmduN25p?=
 =?utf-8?B?YldIclBLS09HZ3RLVXpmekNwcldzSytrc0svMndSR2VMWC8zMXE0WUcybERs?=
 =?utf-8?B?clAyWUhmNndRSEI0bDNGcmtmNUtLeFVaVFNGbE1OWkJMekd4dHYxM09CeGFH?=
 =?utf-8?B?L0MzbTFqNlpHV1dlOTNPU285d3MyUUZOcHJ4MnJ4NExmYTRPREhoaW5vOWd2?=
 =?utf-8?B?QVAyLy9NZmNVQzJ5dVFFb0JZWVM1b2JJcUZRak9rejhPc0hENWVMMTZrUTE3?=
 =?utf-8?B?eTBvQVkzamhkM0w1b2hqcVZwRjl5THAxNUZjOWtNaHUwVG5qbnBwKzlMOU5t?=
 =?utf-8?B?UDN1Ti9SSUFDcmFLbHBoVEVOMmQrdXVkTHdLam93OFpEZVE2U0lDeWdvMW4w?=
 =?utf-8?B?Rkt2QmpHQk9ueXRmZlVNRXY4YWxnSEtFZ3o5cjlqMjlCQ2FmOTJMWjkwcGdU?=
 =?utf-8?B?TlRkUk1JaUVvYzZHVHQxSnNyaWJqRFplWVVPUEpNMlR3TFdHSzladGxydUQ0?=
 =?utf-8?B?eUtVT1VoNG9FYytFdTAwM3RRb2toMmx3aElaQnFSK2dDZ3cwOTJheDIvYnE3?=
 =?utf-8?B?WU4zcnpCajV5R0ZZMFBNSHBrTTFtU0FzcDhuQkVEcHhOMVFCS3ppdjFLalZL?=
 =?utf-8?B?NmxuSS9TREZTTldkdzhBUGxlWktzQnVWYlJ4Z3p5QnBJcEZLaHVtNHVaQXR1?=
 =?utf-8?B?TVN3ZjhvdWdGSnRqeEcwTVk2bjJ4NXZ5YTljQ2daZVhHSXJwMW4wdk1wUmVx?=
 =?utf-8?B?UnRqa2kwMU1rMmJlYmdTTGI5enBiSVRjNVhlMjZRK3dNZVZHeTZFTXJtaEZU?=
 =?utf-8?B?Vm0wWWdwby9KVVJvWmFTcWV3YmU3amlUVnNKcG1HLzY2dDl4OGJUMFZrT0Fx?=
 =?utf-8?B?T0E4TWxBUjF2SGhWTG9PZEZ4L2RMOHpWMFhYM1gwaDFhTExIYmZ0TWxBQ2o4?=
 =?utf-8?B?Y1dlay9zdjZkaVRIS1RBV2hKV0NnZHlVSGNTbmFoemI5c0JpTno1SEhuUmpq?=
 =?utf-8?B?Tlh1alVpQWdpQkRWMmZkOGNyR0kxN0NDeFV2aCsvS0crWnRHTEZOTThSUE1C?=
 =?utf-8?B?RVRNR0FTWjJnKzhBZytwQVo3ZS9GekNDb3dlS1MxTWJobUlnQnFSdkVhaTBo?=
 =?utf-8?B?NzNoZUR3RU1GVXVmWkZ5YlhXT2tKYWJ3YjU1Y2VZZjl5a0FFM0lRdGM1b3NF?=
 =?utf-8?B?NE0vNElXa2lrYWRmSVpwS0IyZ0lId0VpQlA1NzhTbFkvNUxEMmFBaFJHZFdq?=
 =?utf-8?B?TWpZMTJlcWVkQ2tVWncwOUtpVm5Gc1RwaXAybmNnVThZQ1Q1TlE3WVh4elJi?=
 =?utf-8?B?QXI1MHROaDkyM2tDQzVuYlZ2ZHJCTlhsQlY1dStSQWp3OWNtRGprYm5FR3V0?=
 =?utf-8?B?cGdoc3hQZnFucHAxTVowWnA2cEFIL2V3YjlhREs3bVptaTlidzNQTjUveCsw?=
 =?utf-8?B?akVldmFRY3Jqd3dlODFob2lidkMwMUJNaDFCZGpaY1lFc2h6THljWWxtazJ0?=
 =?utf-8?B?Nk5SQmEvUzJRTU5EaHA1bEZGNEpQUC91anIyaTEwTXVDZ2ViWkZzR091aXZw?=
 =?utf-8?B?ZXl5WlVJZUhDdGtsdDVCZXdsQ0VDOUZlbGhPd0dRQStRMWhDS05UZnNPZFdG?=
 =?utf-8?B?VlUyNi9qTUg5a1d4N29CNE5Xell4QXlUZmRhYjhJallBczQ0b0JLaVZDa0Rm?=
 =?utf-8?B?Yk8zYVVKSWJCd2dNMUxBSWs0YmhEZFVCUi9tUmlGT0RzMGRXRWZQWVV2Y3NV?=
 =?utf-8?B?N0lLV1pacW9Cc2hDV1d5U09YRVZDdXZCTjQ0YTE4RUx4K2xVQXF6eFBCZjk2?=
 =?utf-8?B?ZG5rZ2FGRVlxeXZwMUhNeURmSEJ6Q3dBdGRPV1ZxaGQyZDkvUUsrS0xHcGR3?=
 =?utf-8?B?aUZETTIwSnBIdmZJNENoM1ljeUJzK2pFV0hZb2ttZ3RtR25rNytLRGIxWkNB?=
 =?utf-8?B?aDNCUi83M25XQ05sK0MxNnN4N1Q0L2grQ2VGbmRua1k0Z3JVaFhFR25mSGt5?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b47f1646-8d4f-4005-822f-08dddfc56f40
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 08:42:02.8549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 91Y3z1zlsh7xy5npOL5lk5BJ+VUDYokDkuf7uxxlaGcmMW2tqyj376aDAaQ2gy4aeAbqpIuYaEzst2tPrg+6Bc5PkseRQeucTCdo0Ne1vAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8348
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


On 8/19/2025 8:37 PM, Suraj Kandpal wrote:
> Remove the intel_encoder NULL check from _intel_hdcp_enable

Missing period '.' here.


> with
> all the changes it has gone through this check has become unnecessary
> since at this point the connector is supposed to have the encoder
> in it.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

With above typo fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 42202c8bb066..e11cf26ed0bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2446,12 +2446,6 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   	if (!hdcp->shim)
>   		return -ENOENT;
>   
> -	if (!connector->encoder) {
> -		drm_err(display->drm, "[CONNECTOR:%d:%s] encoder is not initialized\n",
> -			connector->base.base.id, connector->base.name);
> -		return -ENODEV;
> -	}
> -
>   	mutex_lock(&hdcp->mutex);
>   	mutex_lock(&dig_port->hdcp.mutex);
>   	drm_WARN_ON(display->drm,
