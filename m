Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 749B69EDF17
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 06:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED3A10EA49;
	Thu, 12 Dec 2024 05:55:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjBD8aH9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA1A10EA15;
 Thu, 12 Dec 2024 05:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733982903; x=1765518903;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y5cnzzCwpP/OppnFyV6AvwwI/0D7iLz+ABj/lIBm96w=;
 b=WjBD8aH9nQPX1PZUpNxzZYCg+sASS34YPZ22Qcn28RYYEv3wMVeOKPmh
 aysvtdQKEiyg7gJ+D8M0pOslBbhRP5RISD18KWZ+IIoJMPy7AfREv4OMb
 KiEa1+DC68LkstMf5qWEMw6l/yEh0rq+0qT3nZvlw1nx5W91QMxQZ1BGW
 7zHIvpRQKXtRdsqnvYcQ+z99Px/+hlpGJQgDNuaBpmVstQz3lH94jIfSm
 8NBkEPkCsNn03vjKLeNDAhCC3/gWu1GQRHtHvqT3OmQrbt47NVmf9CGPt
 bbiFI4rX4Ns7yhu2b9M99EU5wu7GWXRxSZXdO6q+CSRyhJAe3AGhRdeA/ g==;
X-CSE-ConnectionGUID: iyUVWO6NQpyWS3+U5PBp0A==
X-CSE-MsgGUID: I/qbWzuMSDWboGeWd1Kx7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="21973488"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="21973488"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 21:55:02 -0800
X-CSE-ConnectionGUID: uwwzEtNeTaq8LVNfb9EqVg==
X-CSE-MsgGUID: ZvUs5MkARymLBlO7rQjsdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="101208067"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 21:55:02 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 11 Dec 2024 21:55:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 11 Dec 2024 21:55:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 21:55:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uGcftYKpQjJe8JFxsKb5Tv4lpkvOYzgnzP8Mtch6OoR2OFR0CbQ7bCvDVtPzF6PF/zK3Bgx/T7VWurqWltQUltrN2aCnopXNdvcRPZCUWwAUlJdBGAcJW1ZKJ9em87guaGADPyuHMOKs3d+D62m9KTH4M4zTFW5rkNwBgC6OyBQHn1RyXpWcaSI2hoaqha6Twwvc3FrzOkTq0Lz8do/Gi2OJWjlO0z7vKAqKG1m+wJ8hvMG+ifd2S54/EbuVefujeyf+KHMS5/4pYrqN6Mwo1CpYjoYV8m4Cwq214n8/kln44gZpP3cvBwcizhhWogHPbR4GLFlDsUQnhhoQM3EsMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CbrbqqUgOe9gwZ2aEA55Px4rVxw36I4kFNC7qTheh48=;
 b=j+KpfibBkCLWayZmH160HixFXetzjrPa/x9ib5qSu5YZ85aVABTILd5B9Mp5dzmvPmNfgd0zG/CNYDwfkpkmDDrMDS7zeoOZDAdNAwl7hnSie0cNPriQHAmBfQVfeEe+YYAL7leH6U1+O0UtbZpAm9nQtvwh6cmmYlSbGqafkjM858XdWu9+pLskPdxv8y/RewJrgUwwIBWOMrlvrpKANIU7nZdJocX3XqWasyrljsiO5CKc8YIKSXwOFdojhLSWRYFH6wad+FNoDtvORyhJXUJygF3cPHySH2pf+SYdIV7o8qVzC9bZLH2+5HTZdXn3DUdpMyef6xpePC1vS5HrrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7118.namprd11.prod.outlook.com (2603:10b6:510:216::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Thu, 12 Dec
 2024 05:54:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 05:54:31 +0000
Message-ID: <c3b6c081-c1b6-49ad-8e12-64ae38813102@intel.com>
Date: Thu, 12 Dec 2024 11:24:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/display: Enable the second scaler for
 sharpness
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20241114101825.3413688-1-nemesa.garg@intel.com>
 <20241114101825.3413688-4-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241114101825.3413688-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7118:EE_
X-MS-Office365-Filtering-Correlation-Id: 04de4aef-1443-40b2-6ddf-08dd1a717284
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnVxeGxxRTRzV0FpWFZFVVZoZWhOVDdjN0dnK2xhbGQwSVhwVjRnNm9yT241?=
 =?utf-8?B?OExabGdsTkZlWTdqVWhKVXJZaGFveGRzZ1lvWE9wbTdGeWprdmJJeW0wazh6?=
 =?utf-8?B?aC9xU3dPSmJQT2NMOWJpcFVPUXMwVVpIUjlMa0djSkFWVytEd0xVVEU3dmJN?=
 =?utf-8?B?Q3BUUCtrSkk2Zk9MOE1ORndjVEpucTJqRmVodDFrZ1RJN3VKcW8zNmJCZTBx?=
 =?utf-8?B?Tk1kaUxvN0liMnQ1WXUyZDRobkFmNDlEU0Q5T3NkSUtyTU1uRE50VmdxVDZQ?=
 =?utf-8?B?L05uQVJNUklETnFnTzc1NEJIOHBtck9oSTZBVVRLa1ZSaDlBOFZVYVJGemNV?=
 =?utf-8?B?YlNKODVDR2NOTnRSc00yZmlVQ0toRG03SGJ5cVBIeU9pVG9mV0k2YXg4MTlW?=
 =?utf-8?B?NG41SU12RkgyazdzVDlhOFRBcnlzLzBBWHZqcktjTm14bExHQlhWbGR5ME9Q?=
 =?utf-8?B?b3YvQ2t1QzBhU21PMjUyMVF2ZUVpUXRaTllObGh2Nm53TXhxSURPUUFpMlFQ?=
 =?utf-8?B?V2VieGJmMjVUbDkxa3NVYmpQNk1zcHFGNnloZ0QrY1I5VXhCd3Y3bHNJZzdQ?=
 =?utf-8?B?WGZIbHg5aitQVFpsRi9raU00ckR0VzJtVXhOMjk3QmRqZzluUEpQa3Nkb2wz?=
 =?utf-8?B?NVFBVm9pa2lHTy9Fb1ZJd0ZpRlhvbFFGR3lKeVFQampEUDBGT2FEVk1KNGRl?=
 =?utf-8?B?T1BUN3haTllDRjVZMVZjTjdMTUVCMmIvZ2NQM0RmNnZHdnExMzRvUjAwR1Zj?=
 =?utf-8?B?d2M2M0kzUmgzSW1IWmV6VEVDTXpiK04rOFg1bDVNbTlIeEFxSnFGNUcxNWtV?=
 =?utf-8?B?aEp0clBUcmptZ2h2OWxTc0c2Wi93WEV4Sk0rbldZMldzdXpHSitwQzZkak9F?=
 =?utf-8?B?SmhTU1NOcHB2M0lDYUlhZC9jYUwzTFJqL0RubVdITDBseXNWK1VVc1R1aGFk?=
 =?utf-8?B?SjVPS1lhVk9uVExUWG5tT01QdHMvNHJWcitKbm5VRWlVWnJ5cWw0RHRydGV5?=
 =?utf-8?B?T3RIZGdkcFhZZkdjWmdiOVJlWHRoMW05VCtZOTIwbE5QTG9FSi90dGxoUXU4?=
 =?utf-8?B?cU9TQzJWWHJ0bWxlcjRuK3l5ZDkyWmJQWHZPKzlsOUtxcEp2TXhjbnk0dmdJ?=
 =?utf-8?B?UUd1Wlpna2N5MTN5ZUxGSGM0T29rRDFqVGR3QjFRNm43azdoQXFSTjVvYk93?=
 =?utf-8?B?akpKT2ZrS0FLZEh4ajF4aGUwckFVcDhRY0JFM3V5Yi9UaFNqT2hSTTJ6Y0Zr?=
 =?utf-8?B?SFhwZVZ1ZW1PSEJZaVpkak1vc2w0V2YwZWl4bytOWkR4K292bHUzM2xmUDNF?=
 =?utf-8?B?d0tTc1N5SjUzN25rNStjY0pnZitNWVRzMUxiTVJUOTBidnIxakFGalJXTlQz?=
 =?utf-8?B?bkhRbDZJbWFzRkJGYTFBT3F3YlZEWDhVUVd2dUs0dUptWXNob0pxVFMzM0x0?=
 =?utf-8?B?UzRQbmxBb1FGUkNKODVabVFIUmIxSk85ZmpqY1RKUXMwaDAxNy9wNXdHQm1E?=
 =?utf-8?B?Tmk4QTNsaGc0SFhWN1JJdjZkZ1o5NU12MGlVRjBBNU5LcnNJRGJOdHZCOXBh?=
 =?utf-8?B?SjNIZVVKNGFIcSttVmNhL0JWMWRZd2JnRjFoQ3VhTFdzcUREVTFzR1BtVnZU?=
 =?utf-8?B?Y3RXVzlzU201bTloTkY4bmVoWDVZTkxEVTBaSlVHS29DVkRYZzVyQlB2b0Nz?=
 =?utf-8?B?WHBDdGgzYU13Zi9MOUxaWTIvQTFHVnNOTksyNlhCVTdHOFZCT0p4NGdKVS9o?=
 =?utf-8?B?WlJZOHZPYktrd090dDVpT1NBWUU5b2h1WmVoNGZQcmlyZ096YldJME1vSHVn?=
 =?utf-8?B?T1FBTjQ5RXU4RzRkSjRlQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWJUYS90UTgvMXlvWGdxKzdTOUxKb2pCN1RrSDR2MWhzcmdtK1JkRUVNU0dT?=
 =?utf-8?B?dmc4d3BLTmNVZHViS0hOVjNZZEFBZjdqYlJmOWdBVUwvUE5nK0pyV0tUZmQ3?=
 =?utf-8?B?T0NGQXM1Y3N5OEFjYTlQZjlCR0RYOGF2NXBwaXhDYnYrdU9zdmRReFVXQUM1?=
 =?utf-8?B?Umh4T0tXVHNieUx1TEg4V2NKdFY2Wks1czF0M3dFbmdDREZSNkQrTlhwM1BQ?=
 =?utf-8?B?Q1VtY21xQW94MllRcVdqaFhRQlI1WTdJOGZvNW1SSXBnOVkzVlk0Ynl6TStz?=
 =?utf-8?B?VjZZSnI4QmFTck5GSFZlalNMaWlneloyRlRxZkRPaWhPaDlJVHFhUCtheDlu?=
 =?utf-8?B?NjdtWmZpeG9GbDJCSFI4ZGRkN1lSQjZISC90Rys3eitBaXgraDZLenRHOWN4?=
 =?utf-8?B?RFRpWldvYVYvZXBLQjh6OGN6dE5PSGlraUxBaDFJU1NxMU5uY0tuTUt1OUR2?=
 =?utf-8?B?RXB1MzF4Sk9EOXVTZUhtME82UVNSL2tWby9mQTBBZGV5M3JyYTVCYk9tOXhx?=
 =?utf-8?B?TW1xU0Fvby9qZ0h6cTd5SW1sV1FuRkJaN05WdU5YRnpMZU92NkFCamZHNzE0?=
 =?utf-8?B?Yk0rcy8vUkFEaUtTRWdjY0Zya3JMSlZLRjFVWEJTcDZNK1hjMlV5NFQ4RkNL?=
 =?utf-8?B?MTcySEgxaEZvaUlvSkJ3ckI2V25NOHFRb2M5U2Zqd21zVmZwKzJJQ25LUk4y?=
 =?utf-8?B?SjFKbVFBS0hTMjlRVG9zdndpMVIyQ2RhOHltMzJPQ29KYWFWUUVEa0Fidk9i?=
 =?utf-8?B?VTFtZ3FmVnd0VFJYajQzT3pDNVl3WFpHdnJNeGE3dzBpVEp4OHk4VU94Ky8r?=
 =?utf-8?B?ZEdYcXlXRGttQXJ1QXplKy81eWVjd2U2cXE4eU5qZ1BMWVV0S1I1RWZpaFI3?=
 =?utf-8?B?dDVGTVVHQUNGQ0x2ZXhaYkhPMWZzY0pzL3FiNndLeUZiOG93UzBSci9LNHhD?=
 =?utf-8?B?dmVuT3VHOHNlUng4L2ZyUGNGNnViSEN5SmZFSURuSE9PT1ZrZlU3L3VoN3Nr?=
 =?utf-8?B?YkIvVldMT1ErQ29JRGgwUjM3anhTZVlTbEJVTXJWbGxsMlJ3b1dMRmZjeUFW?=
 =?utf-8?B?dFg4cUloTmw2eTRMYjNyTEFlT1krSGJ5eEdxb0c3TDZMVnRZUTUxd1ZGeUdH?=
 =?utf-8?B?dWxSQzU2WVBLelVTSmI0RlJsZTBhNTBPVDJ0TUY3SlNucG1nbitBR2d5cG9n?=
 =?utf-8?B?VHhFNTVLRVVUejNBUDYySE5GV0wrYVpmUkxhMGltTnh3T3c0TWUrdnYvdU9P?=
 =?utf-8?B?alB5U1ZHM3RBV1Rkb3JydFpVWFRMTG5jeHBYZHl2VEtPNWdJS013czcrcS9B?=
 =?utf-8?B?ZWl1UzdnaFhabnF4VHdvSGNLaE02MXpzdzVMMHhSazVzZjhCZnhlWU1HL0Nm?=
 =?utf-8?B?OEg0UENWNzgzSVZlUTkzYmgxN01nd2U1d2ZlWFoyMHRreGhqM0pjSFlSZS9k?=
 =?utf-8?B?N3Ard3d6QWJqQ0RPRzFRL0NlZDF3UXVZcjlDelZVM0l3eFZVWnF3U0NsM1ZN?=
 =?utf-8?B?aDkwdXVWckxXSUM5ZjNEZHFpdFNvTGR0NXA4N0FBajUzUGJnejhhdFdzZVpX?=
 =?utf-8?B?ejJ4NkpxWWRyYU9TRDkvT2s1NW5IbnQ4eDJlMDA5Rm5mUFpZVzRwVHRRUHZI?=
 =?utf-8?B?VDcwbjl4ZTZyYjJZblNvaCtZQVEzVE4xWjRHSkY4TVZtTDd0cU5YRmJTZFIx?=
 =?utf-8?B?WWd6VlRZSG95Y051NTNoRHhuRmwrUmRWRkN6djgvT0JDMlk5RlFGRWdvMGxn?=
 =?utf-8?B?aFA5dmtMOFd5WkVNUkV6TXhZV3RHZnZTSHFWdEF3azFyNHU5ZjhSQUlTbVhU?=
 =?utf-8?B?ZXo1UzlSRTk1QXJPVVhHOGFjN2pBV0hEbUcvbXROdFJsVFBneWNkcURzYVJ0?=
 =?utf-8?B?ZlBXc0M3TWU0NkZXT0VwajVEOC9WTXU2bGlBMFNNYzg0eHB3Tmltc3JLNm9J?=
 =?utf-8?B?enhVU3NIUitYaEtNdk9ONmx5ZFBVa0VNSG9wdWQvWGJzNFNYV3phSXlncmh3?=
 =?utf-8?B?Um9mMGgweW1SVzZzdlF0amlkUXM3eVBLNXQxaHRYNkJVQ3l0SGtlY0VYbGhU?=
 =?utf-8?B?aDd6bkNCSTBsZnhYOU1FWEdlT1QwSHNtR1Z4NlkwVGpsM0tyV3JITlRpTFZ4?=
 =?utf-8?B?cUNGMXJad1AxYTllaVBoM204azRJM2JNVGxYWXdKVGZEMXYyTGJCdWtSTjNR?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04de4aef-1443-40b2-6ddf-08dd1a717284
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 05:54:31.4721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+i/hFoTkUygAzUYavj4000eCoTK2X0hicYQzhMblMo8zuu1fM/55j6Os8JtKRsSf+SsrMPZbKQ6HToo97kQp3y27zS8CNSqOa/1eOb+CxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7118
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


On 11/14/2024 3:48 PM, Nemesa Garg wrote:
> As only second scaler can be used for sharpness check if it
> is available and also check if panel fitting is also not enabled,
> then set the sharpness. Panel fitting will have the preference
> over sharpness property.
>
> v2: Add the panel fitting check before enabling sharpness
> v3: Reframe commit message[Arun]
> v4: Replace string based comparison with plane_state[Jani]
> v5: Rebase
> v6: Fix build issue
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_casf.c     | 10 +++
>   drivers/gpu/drm/i915/display/intel_casf.h     |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c  | 10 ++-
>   .../drm/i915/display/intel_modeset_verify.c   |  2 +
>   drivers/gpu/drm/i915/display/intel_pfit.c     |  6 ++
>   drivers/gpu/drm/i915/display/skl_scaler.c     | 86 ++++++++++++++++---
>   drivers/gpu/drm/i915/display/skl_scaler.h     |  1 +
>   7 files changed, 100 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index d186dea75cbf..fce0b997ae62 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -83,6 +83,16 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 1),
>   				  tmp);
>   	}
> +
> +	skl_scaler_setup_casf(crtc_state);
> +}
> +
> +int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
> +{
> +	if (!crtc_state->pch_pfit.enabled)
> +		crtc_state->hw.casf_params.need_scaler = true;
> +
> +	return 0;
>   }
>   
>   static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index 8e0b67a2fd99..568e0f8083eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -12,5 +12,6 @@ struct intel_crtc_state;
>   
>   void intel_casf_enable(struct intel_crtc_state *crtc_state);
>   void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> +int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 86d5f916dfe1..1b1335e0af68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2137,7 +2137,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
>   	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
>   	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
>   	if (crtc_state->pch_pfit.enabled ||
> -	    crtc_state->pch_pfit.force_thru)
> +	    crtc_state->pch_pfit.force_thru || crtc_state->hw.casf_params.need_scaler)
>   		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
>   
>   	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
> @@ -2386,7 +2386,7 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
>   	 * PF-ID we'll need to adjust the pixel_rate here.
>   	 */
>   
> -	if (!crtc_state->pch_pfit.enabled)
> +	if (!crtc_state->pch_pfit.enabled || crtc_state->hw.casf_params.need_scaler)
>   		return pixel_rate;
>   
>   	drm_rect_init(&src, 0, 0,
> @@ -4579,7 +4579,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   
>   	if (DISPLAY_VER(dev_priv) >= 9) {
>   		if (intel_crtc_needs_modeset(crtc_state) ||
> -		    intel_crtc_needs_fastset(crtc_state)) {
> +		    intel_crtc_needs_fastset(crtc_state) ||
> +		    crtc_state->hw.casf_params.need_scaler) {
>   			ret = skl_update_scaler_crtc(crtc_state);
>   			if (ret)
>   				return ret;
> @@ -5769,6 +5770,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>   	}
>   
> +	if (pipe_config->uapi.sharpness_strength > 0)
> +		PIPE_CONF_CHECK_BOOL(hw.casf_params.need_scaler);

This is not required, I think instead we should have a check for 
if(!fastset)

> +
>   #undef PIPE_CONF_CHECK_X
>   #undef PIPE_CONF_CHECK_I
>   #undef PIPE_CONF_CHECK_LLI
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index bc70e72ccc2e..4bd7dbbbb633 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -180,9 +180,11 @@ verify_crtc_state(struct intel_atomic_state *state,
>   		    crtc->base.name);
>   
>   	hw_crtc_state->hw.enable = sw_crtc_state->hw.enable;
> +	hw_crtc_state->hw.casf_params.need_scaler = sw_crtc_state->hw.casf_params.need_scaler;

This is wrong. Readout 'need_scaler' in skl_scaler_get_config


>   
>   	intel_crtc_get_pipe_config(hw_crtc_state);
>   
> +	hw_crtc_state->scaler_state.scaler_id = sw_crtc_state->scaler_state.scaler_id;

This is incorrect. scaler_id should filled from hw readout, which is 
already being done in skl_scaler_get_config.

We dont want to set this to sw state. We want to verify that sw state is 
consistent with hw state.


>   	/* we keep both pipes enabled on 830 */
>   	if (IS_I830(i915) && hw_crtc_state->hw.active)
>   		hw_crtc_state->hw.active = sw_crtc_state->hw.active;
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 50861aa78a89..cee7c984e66b 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -183,6 +183,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
> +	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc_state *old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>   	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
>   	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>   	int ret, x, y, width, height;
> @@ -193,6 +196,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>   		return 0;
>   
> +	if (old_crtc_state->hw.casf_params.need_scaler)
> +		return -EINVAL;
> +
>   	switch (conn_state->scaling_mode) {
>   	case DRM_MODE_SCALE_CENTER:
>   		width = pipe_src_w;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 11f73659c1b6..5311ef6c51d1 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -97,7 +97,12 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
>   #define MTL_MAX_DST_H 8192
>   #define SKL_MIN_YUV_420_SRC_W 16
>   #define SKL_MIN_YUV_420_SRC_H 16
> -
> +#define SCALER_FILTER_SELECT \
> +	(PS_FILTER_PROGRAMMED | \
> +	PS_Y_VERT_FILTER_SELECT(1) | \
> +	PS_Y_HORZ_FILTER_SELECT(0) | \
> +	PS_UV_VERT_FILTER_SELECT(1) | \
> +	PS_UV_HORZ_FILTER_SELECT(0))
>   static int
>   skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		  unsigned int scaler_user, int *scaler_id,
> @@ -253,7 +258,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
>   				 drm_rect_width(&crtc_state->pipe_src),
>   				 drm_rect_height(&crtc_state->pipe_src),
>   				 width, height, NULL, 0,
> -				 crtc_state->pch_pfit.enabled);
> +				 crtc_state->pch_pfit.enabled ||
> +				 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   /**
> @@ -292,7 +298,9 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>   }
>   
>   static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
> -				 struct intel_crtc *crtc)
> +				 struct intel_crtc *crtc,
> +				 struct intel_plane_state *plane_state,
> +				 bool casf_scaler)
>   {
>   	int i;
>   
> @@ -300,6 +308,11 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   		if (scaler_state->scalers[i].in_use)
>   			continue;
>   
> +		if (!plane_state) {
> +			if (casf_scaler && i != 1)
> +				continue;
> +		}
> +
>   		scaler_state->scalers[i].in_use = true;
>   
>   		return i;
> @@ -312,19 +325,23 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
>   				     struct intel_plane_state *plane_state,
> -				     int *scaler_id)
> +				     int *scaler_id, bool casf_scaler)
>   {
>   	struct intel_display *display = to_intel_display(crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
>   	u32 mode;
>   
>   	if (*scaler_id < 0)
> -		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
> +		*scaler_id = intel_allocate_scaler(scaler_state, crtc, plane_state, casf_scaler);
>   
>   	if (drm_WARN(display->drm, *scaler_id < 0,
>   		     "Cannot find scaler for %s:%d\n", name, idx))
>   		return -EINVAL;
>   
> +	if (crtc_state->hw.casf_params.need_scaler)
> +		mode = SKL_PS_SCALER_MODE_HQ;
> +
>   	/* set scaler mode */
>   	if (plane_state && plane_state->hw.fb &&
>   	    plane_state->hw.fb->format->is_yuv &&
> @@ -443,7 +460,8 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
>   	return intel_atomic_setup_scaler(scaler_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "CRTC", crtc->base.base.id,
> -					 NULL, &scaler_state->scaler_id);
> +					 NULL, &scaler_state->scaler_id,
> +					 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   static int setup_plane_scaler(struct intel_atomic_state *state,
> @@ -478,7 +496,8 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
>   	return intel_atomic_setup_scaler(scaler_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "PLANE", plane->base.base.id,
> -					 plane_state, &plane_state->scaler_id);
> +					 plane_state, &plane_state->scaler_id,
> +					 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   /**
> @@ -654,6 +673,44 @@ static void skl_scaler_setup_filter(struct intel_display *display, enum pipe pip
>   	}
>   }
>   
> +void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct intel_crtc_scaler_state *scaler_state =
> +		&crtc_state->scaler_state;
> +	struct drm_rect src, dest;
> +	int id, width, height;
> +	int x, y;
> +	enum pipe pipe = crtc->pipe;
> +	u32 ps_ctrl;
> +
> +	width = adjusted_mode->crtc_hdisplay;
> +	height = adjusted_mode->crtc_vdisplay;
> +
> +	x = y = 0;
> +	drm_rect_init(&dest, x, y, width, height);
> +
> +	width = drm_rect_width(&dest);
> +	height = drm_rect_height(&dest);
> +	id = scaler_state->scaler_id;
> +
> +	drm_rect_init(&src, 0, 0,
> +		      drm_rect_width(&crtc_state->pipe_src) << 16,
> +		      drm_rect_height(&crtc_state->pipe_src) << 16);
> +
> +	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
> +		  PS_BYPASS_ARMING | PS_DB_STALL | SCALER_FILTER_SELECT;
> +
> +	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
> +	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
> +			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> +			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
> +}

This whole thing should be a separate patch. I think we are doing a lot 
of thingsin a single patch.

Suggest you to split this into smaller logical patches.

Regards,

Ankit

> +
>   void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -824,16 +881,19 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>   			continue;
>   
>   		id = i;
> -		crtc_state->pch_pfit.enabled = true;
> +
> +		if (!crtc_state->hw.casf_params.need_scaler)
> +			crtc_state->pch_pfit.enabled = true;
>   
>   		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
>   		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
>   
> -		drm_rect_init(&crtc_state->pch_pfit.dst,
> -			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> -			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
> +		if (!crtc_state->hw.casf_params.need_scaler)
> +			drm_rect_init(&crtc_state->pch_pfit.dst,
> +				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> +				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> +				      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> +				      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
>   
>   		scaler_state->scalers[i].in_use = true;
>   		break;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 4d2e2dbb1666..e1fe6a2d6c32 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -28,5 +28,6 @@ void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
>   void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>   
>   void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> +void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
>   
>   #endif
