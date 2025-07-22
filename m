Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC08B0DA54
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 14:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5740710E66D;
	Tue, 22 Jul 2025 12:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MHXBZIu/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D14A10E2EB;
 Tue, 22 Jul 2025 12:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753189165; x=1784725165;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=OtkLUZyw2kt0cnMN9kmWsX9UU6Vl+UVNc6Qry1SohTM=;
 b=MHXBZIu/R9W7LQu1e5+KWJnojGoqMOXoEVGvEmACwLxgzt5tJsDvPGlc
 bCkoQ6DJ+a9doDWtdYInfD4QPwVYpm09CAR6l8sd5I69M8lGkYdo0CXwu
 omDFmXcXzzvC/AtBMniujZEvtKjYIxXJD7C1La9fXpZ+JgZmXj+X1J+bu
 JkZkT8HXAFhYtGDsbufdIy8a5TUx7sBH2ulUHp4k0OIriz+rqTTHO/tIS
 YIQtjFD81uR5+swUpgnMa/emiNzmyxY4teZ0nYZb+09oat/SgxLM+STOw
 ZE2US3yXJWmTA1yE9RYZmH/h0G6p96S0rrPrqluLcIjZge5KWwn/SPaM3 w==;
X-CSE-ConnectionGUID: S5h7Zv7ySBGn+x0LDc3jdw==
X-CSE-MsgGUID: GDpoe/wzSWy1xMI5zJ3yNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55379396"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55379396"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:59:23 -0700
X-CSE-ConnectionGUID: ZLN7C7BPS66WzcRcycu8Pg==
X-CSE-MsgGUID: BOJVwo8/TgqUsO0A1ll2dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="190087370"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:59:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:59:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:59:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:59:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j0FrSCNBWxM20DkBGevZOKWeTrF+9KdKkHO2vVtVguZ0i/X9KO2jaNGAG4L2skLPmav7Vj/cpzJsoyY9WlYYkAO5ggAZrpneVIjgXp5IZi6M+IOFdFLTiATdNEvY/sctiJE5fCHZnm8H+azMsmb/+0zqQfUmWmUFPBzE/vHs1wF2TJsiYousu0OS7is5b08Cv/Lo18138qyLe9o9iXnN5VHA0aqKcPUdVrwJNEOc3nuhvakwp6Eth5wgfY6mlKups/q6iC25M4F7N7mk86GC9wVKTWUwlO0NDPb/t9f8cwO2GXPJ8uMufWhnvQEU9rRzag+sefFLYojHR02Z8lXbGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTh4lQEZmw0aG23/PGCsPGlxs9+P9etMFraYztqhjUk=;
 b=aiOGq9E0c/c/P/aIye0Lg3Gvtv9e9fOBZNnx+3qT+0qK+ZDQ07uFzvPYJkmlZ6xwZYv/eDFJhTTOvnQGPMrWaffc4Auo+Khnzk+0wmPzkUWgvvzHMoicRePzfgbSXunD5eg0/PwphRCToDWDRkSK8PoM1C5dU3v2Mhz3s0YOnZLmxh2zugzhN9Ce00rcbn508vK5A6EuQnXPqrVtvyXGMf7BibH2137lo23xNS+X8WeNNhoX8ckzomuL3qf4poIA1tKWUXk6qfKW+Ndyf/Svb5Hr2S/sSYIM4ydeqBM1cPLnFAIgtwi2YJmoXRf7QgqGvrdly+1+MSm/NedQYcpSXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH3PPFF8B8D6872.namprd11.prod.outlook.com (2603:10b6:518:1::d61)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.37; Tue, 22 Jul
 2025 12:59:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8943.028; Tue, 22 Jul 2025
 12:59:20 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250722125618.1842615-5-jouni.hogander@intel.com>
References: <20250722125618.1842615-1-jouni.hogander@intel.com>
 <20250722125618.1842615-5-jouni.hogander@intel.com>
Subject: Re: [PATCH v3 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 22 Jul 2025 09:59:13 -0300
Message-ID: <175318915385.16862.7590501076190219314@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0158.namprd04.prod.outlook.com
 (2603:10b6:303:85::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH3PPFF8B8D6872:EE_
X-MS-Office365-Filtering-Correlation-Id: e40653a6-a0f5-4f7a-0199-08ddc91f92e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sk5KRnREWFVHVUh6Q1V5S0J4cmNiL3VTSmErb1F6bjVTTzJWU0xySnMzSjk2?=
 =?utf-8?B?VUVRaWVuVmgxM3BuV0kxbDg1MkRiYVhhaWRCSGlYSHl5T2VUL3FNTGRRQUtO?=
 =?utf-8?B?UVROUndkTGJEczd1aGI0eDByeUhiZXIvMUh4aisrMUtmWStEc2J3aXREdUJO?=
 =?utf-8?B?am5zcUVtWFd1M2hQYXl4QlZ2dzhNMjVHODYrUEVaRG5GbVRqamRPWFoyd2xk?=
 =?utf-8?B?NHAvSzRrM3ZJS3pRblplTHRwUFJIZDVHWlRYVWltRENOQ0xJR2kyQWdGcjQ2?=
 =?utf-8?B?VDVqbmp3Z29RWG80UHBlOHpXall5UjR1MWhmN3VaNGZpV1R6b2xyU1kvUnJZ?=
 =?utf-8?B?cDhjcFVzVmVKM2ZxZHhrby9NZ0xNcjFCQUMxTlRGQTlxTGFFS0gxZ3k3SjU3?=
 =?utf-8?B?Q2R6cXkwK21abldhdktzOGZZbW82RGNTLzBkTTRpNEJITXJtRmNiZEoreUVE?=
 =?utf-8?B?d1VvaTBtcjJkbmJ4Vm1xRzlPM3l5T2o4dmU5Q2JkNDM2U2NPUk5RNlJCN0pq?=
 =?utf-8?B?dVJONm9iL0t5dUV6dHl3aG93YnVBSHVZSjJhUVo5WFVGSEhWWlVyZmxWQ3U4?=
 =?utf-8?B?ME80SDFvYW5MZTJqSUcrMHFzUmNUYUpaN0pJWm52U3hUYkZCeHpOQ29JRW1q?=
 =?utf-8?B?S2ZJVFhIcUk2MzRqaHdUQitHcUtIVXB5eG96Sm1PcnNBQkhNYXFkdFRaKzRL?=
 =?utf-8?B?UlliWmZrL1A0UEgwclZNZmhQTm1HdEFsY1RHcHEramFQNkhQV2NlZElUL1px?=
 =?utf-8?B?Wjhtem5NQlNTZlJsbERlekxjUmdnZk9paFJXNjA5eWdmUWIyUSs3bkZCN200?=
 =?utf-8?B?YnhoTjcrZ0U2elFxQzFWSzBhUjFMS3NXOXdmZGRkdGhWRFRQZ09uU3ZDQlBs?=
 =?utf-8?B?N1V3VGZVcW1qVEpMSG5kc05YTDNIRWlmYzh2bnB3bVd1TjhteFJlWmJqbWhj?=
 =?utf-8?B?VTFwS1JoS09aVjZ5eEZoc3ozemhyWThrZE5rKzZQd3E2aFNuSGticFQ3VHVk?=
 =?utf-8?B?QlhaQWxYVDR1QTFNdDA0V2dYVUE1ZUNIU2IvUXlGOUdhZmYwdEdKTnRTd1lB?=
 =?utf-8?B?S2JMbGxpTmJDNFk5NTlQdGVtZnJSaDMvVjZtWFRhN01xc0hRNGI5R3gvUmlI?=
 =?utf-8?B?V3U0dFMvLytDR3R1c0FQeEh3MmpDc0tYKzY4eVJYZmEyZnRwbUVqemJXU25J?=
 =?utf-8?B?RTR1RHJiUzcyc2xuQjVVWTVDeUZPSVpvV3FYSGRSRU4ydVZEelV4WHlDWkxa?=
 =?utf-8?B?WFc1bHIxNE1mRUVNWmkwY3UxWkFVQ1N3RmZ3R3VCVVhvT3lsQzdWZmZtNWJq?=
 =?utf-8?B?MHd1dE0rTCtJY2tzMGFmeWI5QTFFaUQ0a1FPLytZZ1Q5R3pCSklSd01UZ3RJ?=
 =?utf-8?B?ZUhkRmpldDRTOVlSRXNyT2FCbk5CNVg3YlB6Q25IUEJzZU54UVVhREd5eXRk?=
 =?utf-8?B?N2MxR1hlSXVVdTQ5allwUWxiSUJhNzBqK3Jjd2g1NFpEUk5QQmJTd3ZSbkpv?=
 =?utf-8?B?SXkvWDBoYXc3NGgrVU1rVTlYOGo3enFrclNXeGdWeWNGU1lLQ25IV0tCRE1K?=
 =?utf-8?B?NVJ0M29CUkdwcStHYzZRbWthVTlpWE80cnlzbGYzRC9USzRlSzBIUlFiTkhZ?=
 =?utf-8?B?VzVyb1BRTXdEaWRQWTZwTFdtZlVZU2l1bUFnWU1qK0RJeWswTkRFM1VybndM?=
 =?utf-8?B?WHJoWWRFdlRIZ3dLRFluNVMycTF5TjV4MjVXeWQrMXZwRURTYjYyK0wxL1hZ?=
 =?utf-8?B?eXBTWDJ1L3NVbkl0MXFXeVpPZDVtVkFQaFg5WkVIMTZ0d0RDQ3Nwb0tpc2Vh?=
 =?utf-8?B?TXBCM25XVTlRdlZka0JWbmlTY2xDQ2V2dk54cGY3aUdWd0phRjh1ZjM3ekdr?=
 =?utf-8?B?SG82ZURwdWxubDFBeG55YUFZNmVrQTgrc3JBTnI3d3ludUdUWnM5VzBKMmlj?=
 =?utf-8?B?VnZDSmRHeTRjQmxTcjAvak40RGVpU0cvR1c0K0c3Z3BPSnVWdkxaSE1FSlo3?=
 =?utf-8?B?eGFiZCsyZkFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDJvSVNOVFp2OWFUc3hNYTFDQjF2a1dzOGJTcmsrZGc3aGhJWjJyQktNTTBF?=
 =?utf-8?B?SXRsdDc3VUpjREllbmZTc0Y0UG95eDJmZGFsOVRvYUptY21hR0NNUVNCQVJt?=
 =?utf-8?B?VUxjSzhQT3dGZmUvNVhUaFNuQlJVMU1qd1YzQU1WamxXdW1HNWFOYmYreGlL?=
 =?utf-8?B?VHZnalV0TnVyOXdCcy9hdFNRamc2QmFweGxYcjVNWk5MMUxGT1lIaXU3cHh0?=
 =?utf-8?B?R3U0eGxYKytBcGhqcGdnTGZRajNHYzFtS2xkM0dRazNZWGhzbGtSc1F3cWpu?=
 =?utf-8?B?RjlTb242dVRVT0wzYUEwam01TExJaGdHRnlpOGdIRVgzRTZQdFBNNndvREg3?=
 =?utf-8?B?TmhyM09mbXdGSEErcjU5dld5cVZ3blRxS1VLaHV3bnVXanZrNEtrMWZjWGp5?=
 =?utf-8?B?ZTd6UkNqSk0wWk12alZEWE9vbHZXOG11YWxNNWFpUkxqNlIwUzU0cXJyY3JM?=
 =?utf-8?B?MENGY01VK2w2UERGTzIvUTZ5Z1NlNEErem40Ri9qcEhwUUVmd1FDN2sxWlVq?=
 =?utf-8?B?Z0VIMHRIb0JORjZpWFBQRnN3bFFsMUZudlV1YlhPNHRRcWhxdGZQUXJWSk50?=
 =?utf-8?B?S1M3K1lWdld4dXVHRk1NOEttcnNyVlZIZFFqZ0FCWnBGR24xMzNlN3VKSmxr?=
 =?utf-8?B?R3BJbjJQNStDMWVzZGJROHlFbHhoTWtFZ0lxVmpWdlNTeklqRlo5c2NZa210?=
 =?utf-8?B?TTVJVDJTRmE5RkJQTFhQRGE2bXdQSGlnQTM5YjExellYUXJUSGVudnRIcVph?=
 =?utf-8?B?bFNNNDF3d3Z2WW5SNzZXWTVpaDRQRVBxaUVwY1p0ZHo5SGF0d1U4OFd1UDJP?=
 =?utf-8?B?RnZ1VXlsbWU4dDR5Y3Jvcm54WnNiU1FvSnNKckdBck9kZHhKRGhaQ3ZQbGw2?=
 =?utf-8?B?TVdyS0RaUE9kTGZHWWwyOEdnaFJ1eG9qSzE0RnJKOTlqWVZvaC9QSEN3RDl0?=
 =?utf-8?B?ZnA1M0RSejJYVnMwVzBUQlU5aHZ2WXJSZitrVUlDdm5RSXIrSTgvUU83MWtU?=
 =?utf-8?B?UUpMSWlONW9QOWhEZ0ZIZUhYVDhjMG5leVdybDdNRmR6SUtLeldQVkFVaSta?=
 =?utf-8?B?WUhKdWhIb1ZwbGZDaVhMaVM0ejYvVzQ1eHUvTkJrR2ZDenBtZDh2MFpvdUlV?=
 =?utf-8?B?MG1xTVZqSlRJVEZHckhscFVuVXozNkpjb2M1WXVvNXJ4SXJ6NXVKdkRSbnRn?=
 =?utf-8?B?MEpGby9UZEFUNThkVEU5MEZpdktMd2piYnVxV1o3V0pwSHB3VzlCUzJTVjRW?=
 =?utf-8?B?bC9USUs5MWJlRGlPY0crTkFxZ0VRV2gydzBLeXIwYXZoYWh6Ymt2MFNrOVdQ?=
 =?utf-8?B?b3MwZUJrMldNSzFMenhlQ0hZQndwSTBXU3paWGZDSEdPeEp0WHgralZmL3pT?=
 =?utf-8?B?VjdBdTkxTmp1eW5Zd0hha040ZC95T2NwM2NXcmJBOXI1c3dYYmcyYkgyNG9G?=
 =?utf-8?B?WDFKMFlYcU1lc29MQUhuek5EMnBRUEJGVW13N3JNRnhQNzNWY0VoTVZLRjMz?=
 =?utf-8?B?MVFBTjhzT0U2bkZJOE5yb3pJUmVncUg2WDU0S1FjWE1uZnVVOU0zUHBwM3J1?=
 =?utf-8?B?WHZ5RWJnaXBEYitNbTJmT3RUTkxFQm9FaDMreGFPMFRzbDJLdXE3Y2NIUnZj?=
 =?utf-8?B?Si9tTklhMm1SYlNJSUUyRy96U0IwelErcE1SWjFiTzgyeGxsbWlYT2dvbGJR?=
 =?utf-8?B?eHdkeTFnOTlrM3hla09wNC9lYzUrVVpYaFR3a09UZG9PaGRoWmE4dDByNHVl?=
 =?utf-8?B?UzJYSUpvNndvMGlFU1Irditwc3EyUUdocEFicnhuQWVHZnYya3pDNXJpdEp0?=
 =?utf-8?B?Ym9qUEt3TlFwMk1EUXhYTUxDZnU5TndDRnRxSWZiZmpGekxVZE5SWDVMYnJY?=
 =?utf-8?B?S2FhRnJpblh5N0VrWGtBZGRBeHEzanFFR0M4WEZ3dUhMS3RWV2dvSFFrcEox?=
 =?utf-8?B?TmRtMEVialZ3MERtN01yQ1FKU2NnK0NjWXNSN3lLRWljNlZxQ0JNc3dydGJV?=
 =?utf-8?B?ZG5LTVFqZXpqY2NTelk4Tk5NQlJ3VzgzMGtMMTQySHhvbzh4cm9NWU5UYlhV?=
 =?utf-8?B?MjgyNTM5TzlGZHEyNEYvRk9vT2wxcHg5RTI5T0ZDTU4zbzMwaUtoMVRaZnJu?=
 =?utf-8?B?N0hVbUhiVEEySjJGWkluN3B3WitVbCtXQzU0N3FzdXF5UnhlT3RMWnNwaklt?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e40653a6-a0f5-4f7a-0199-08ddc91f92e0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 12:59:20.3703 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DHsV7HXilGpYXtI5P+J1AlSFp5NDLTjOYAnfjSyk79GDSWZ/a8IHuk3qm/RZdd9a2uz4BCurGWfk2JozBPwHvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFF8B8D6872
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

Quoting Jouni H=C3=B6gander (2025-07-22 09:56:18-03:00)
>According to C10 VDR Register programming sequence we need set
>C10_VDR_CTRL_MSGBUS_ACCESS before accessing PHY internal registers from
>MsgBus.
>
>v2: set C10_VDR_CTRL_MSGBUS_ACCESS once for all owned lanes
>
>Bspec: 68962
>Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sen=
ding")
>Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index a203937d66db..801235a5bc0a 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3251,6 +3251,10 @@ void intel_lnl_mac_transmit_lfps(struct intel_encod=
er *encoder,
>=20
>         wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>+        if (intel_encoder_is_c10phy(encoder))
>+                intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTR=
OL(1), 0,
>+                              C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMIT=
TED);
>+
>         for (i =3D 0; i < 4; i++) {
>                 int tx =3D i % 2 + 1;
>                 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE=
1;
>--=20
>2.43.0
>
