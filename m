Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBD88CBDF6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 11:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470E610E497;
	Wed, 22 May 2024 09:39:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hEK1hL/Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974FE10E497;
 Wed, 22 May 2024 09:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716370796; x=1747906796;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=eyjMsn14Jn3hhy1Dmqufnv8l4RHpDxkDpJXVqeGTglY=;
 b=hEK1hL/YLhfL/Yz8XRUE27/8H8/DZDZ396a4bs5Q+cLz2iu4N8Ke8QCv
 8KUU8aP5bJ0jj0Enht0CNI3y/3fG0qJ/NfP5gpq18R+U3iRMWRqrU+kct
 5qo++qANwbYOgJU+5vRr7xUiiV2Hvq3DDJ6A/T1PZQL+FElpvHCki0tSv
 cu0yvlTM4cWf9OhI2kIswgK7FLfOVPQTFdDrksskr+jssC0qDWFb4HzuO
 9mu+Fos620JfQha7UCoidPfj4VvpK4wG5alWIJRGJMpTf45EFI/CWU29w
 wU4annzZk2iaHpGwpN/lAyQIdheBp3XoJOn+ph4KM44DkV0zgF1mukA9L g==;
X-CSE-ConnectionGUID: U1bn1/MoTLKz//eesnTRCQ==
X-CSE-MsgGUID: 1mNiHQAdTmut1cQIoOTuXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12481765"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208,217";a="12481765"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:39:55 -0700
X-CSE-ConnectionGUID: qnZWdsHvTUCslxnnB4OxMA==
X-CSE-MsgGUID: GTplTweGRqmjEYMhuoaxfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208,217";a="33203973"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 02:39:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 02:39:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 02:39:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 02:39:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yht45dbxb05w5G0bfm2C1iyoywGXtyTZNnk56AkPOvnnfFqOX1bLbi1zAgvF6IaYY+9m5+FeQSiTiuegmNbpZjcVyIPQPcvFzoGv2H3zSzGxC/Phl+kuxGdSvtYo6Pd66XH0KG71K/fc095vE6rBWW31NkBzz3LFQy1LRMpRQ5S7fHs3Q5DmzFcweK3BTX5RiL7/2Efflv/epJ5Oz2G4tSNXL4K7k7Rp/hzYfI/QK4hMD8TFPmQO7LzVnUhlN+/RhPNQbBMLRfzQ75M84N5WXDIQVOwI8THHCPP9WrAxsB7ltyHnViAt4vyiV3uT+BAW2HAesSzqdH9O4qc/M/keEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b63+aw+vz9nXs7L6ekkV9/UMFqbE7tRVhQHkgY3CPbo=;
 b=lqXuVsbseDeLaRzR2ccq8CbAwyhSm7OPDM09UePYT7wjL+DQz84nTmbTE983vglIc42O+oNQzU9csIarC2XrCElUp+x5eY5HAWEILupTvMNi/jy1M65SfMHW92aR7YuOyc6B6667CP26ynMBKunvhEVf2AI6iZTgXZkBiE8mP2rS5n05CHqSdfqj0Ije9Y7Jwjq+ccuSQRazZhTaSodmrfSsMf49QTLDIX11amcYIA0gLSZ2Yht84qheuAN/Ulo5qdrRXc3jsHSWuy/5HxqoOTouO1T1pN896Q8A4M+JYIArS8YCNk2MM76oOFFSE6AQrJgWZQKp75kUI4RdJTOevw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 by SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Wed, 22 May
 2024 09:39:40 +0000
Received: from MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::ff2a:1235:d1ba:4f93]) by MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::ff2a:1235:d1ba:4f93%3]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 09:39:40 +0000
Content-Type: multipart/alternative;
 boundary="------------00OOpkTEl2zE5qLXzvRfKaHN"
Message-ID: <2dc07ed0-42fe-4eaa-9def-d686293321aa@intel.com>
Date: Wed, 22 May 2024 15:09:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/xe: Cleanup xe_mmio.h
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <20240520181814.2392-4-michal.wajdeczko@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20240520181814.2392-4-michal.wajdeczko@intel.com>
X-ClientProxiedBy: MA1P287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::32) To MW4PR11MB7056.namprd11.prod.outlook.com
 (2603:10b6:303:21a::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7056:EE_|SJ0PR11MB5865:EE_
X-MS-Office365-Filtering-Correlation-Id: f6c35206-fba8-4e0f-0b44-08dc7a431a2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHZwK0NTWlBiamJVT2k1VEJLbVV2bGo3dDJHU2ZIVWdVd1YwZWVuVHhrV2F2?=
 =?utf-8?B?QnlPZ3R1WUpHTmZ0bGNRNDJqa1cvc1JpODZidUZVZjZZNUR1aFpVNFIvTTNr?=
 =?utf-8?B?dDZvbW5kdncvZ3BtRG5BMXVFa21NSjVhSEdYUWZYa0k0TWdkWDJYV2QxWmU1?=
 =?utf-8?B?dXF6ZXZzS3VYNVNMa2lLeElXVURQUzl5N3o3SkozYmVwbXFCbW1zQUxTbGdu?=
 =?utf-8?B?WWpscVNaMEoycnM5MzdrSGxKSDFlWTc2MG1lLys0cG96TzVZNEw3d1I1c1VQ?=
 =?utf-8?B?YmFoU01DeEh6M0t4a3lFUzR3cjAwdk9BM1J2OWViMlZMVjFNNER0cEFMREpa?=
 =?utf-8?B?T2xNeVA3Unl4K3VzWWVVREJ6QUhEVVVCeW5pbXE3N0xsbC9JQVdsWFVhUjlT?=
 =?utf-8?B?UEtxWmhhR1N1bVRKaklzTXk5RmEwTlM5V1BGalVJVzFweDhzMzNLcFJDb3cv?=
 =?utf-8?B?MndKNS9rQzc1UHZYZFFEOUwvQ3lSQjRLRlBCY2NZMkl6RXNqVEwrRkZWUzNH?=
 =?utf-8?B?eDYxeC9Md0p4TTJsam95VTFBUUNXakF6U1VUSUpNa0owTWYrcXV1WU8rRlp4?=
 =?utf-8?B?ck9YS1hKR1BzNFpLdDBSdXNmNnh4TkJxUmRkaU8wYmFmeHRZcW90U1BzMUF1?=
 =?utf-8?B?bXVRNUtKM0pESFkxTW5uLzZHRDFBUksvT0IvOEp1clBiWFFtTXNvK3hUdnRM?=
 =?utf-8?B?aSswNE4ySkNERjkvSHpweHh2a2ZDUTNQMXV3RVUyMTA5U3l0Q2Z0YkpNMDAy?=
 =?utf-8?B?Yng4by9VVzk1MzNWeEUvbk1aUHliUWU1UDhKbkpjRmI3MW8xVUNsTVhFSFFl?=
 =?utf-8?B?bDZWODJzck9mL0VtVW1ZSEp3Y1BoZm1uTEZZakZaL2FreGdGRzZMVU5HR2kr?=
 =?utf-8?B?aU9oWXJRZFc1MVdJY3RvdVZUdlJta21mQ3BUZmRpZlh2WGhodFE1Tk9KVVhu?=
 =?utf-8?B?WkJIekF2MkRJa25kamVaeElDTVZHdjA3T1M4VzVXK2VpREhZMVhvSmpOWnRv?=
 =?utf-8?B?YlJzVHVXSmJPMjIwWUo2VWpNUU9MRFdVUDBlYVNLMERjZjBMSTFGVU4wVWpM?=
 =?utf-8?B?VXlZY0todEIvb2dEZFlzQURISTE0N1lIWTJ1L0pVNkNzeTBCTXh6V1cwd2cw?=
 =?utf-8?B?RU95V0RUdk9kN1EvRXhhS0lsODByQ2hqSzhENDVEMXFydWVidHkydDI1YzNr?=
 =?utf-8?B?NUdPbklpL3h3MkRnTXYwelVEaXJlTUJkUmVhUVdrYVBHbS9La3FXMHlmTDFD?=
 =?utf-8?B?OGd4TWZuMmk4Zmw4cjUwRk1mWWRMeGJkcmZ6Uy9kV3FEZjN5U0FiblRmQlQ5?=
 =?utf-8?B?bzRQSm9wVW8rMW1paFJhNzdNSVkwZ2hOR0dTT0JkK0NOZUpaMVl1Ym80SzFr?=
 =?utf-8?B?RVJjaGNCNzI3QTVxOFZjYWwxRGEzUHd3eUNpcWVTdGx0dHQ4Mm5TK1FMR0x2?=
 =?utf-8?B?RE53UGRDL2tmT1FObFp1aVdnZEkyUCtIdXFRYUNTWExQQnlXQkRUZHFNVWJY?=
 =?utf-8?B?ZEJxRWRzRDB1eGhWQlBFWlJkTEQzY0FEK0tqTkMwT25salA2YjFjRThwQ0gr?=
 =?utf-8?B?bXhlS2ZyWjh2S3NTdHowck1oQlBOT2xBbHNhQTNNTXFlT1NycUlKUFg0R1Js?=
 =?utf-8?B?cS9FbS95UWRxb0lLbnh5Qm44K202T2hFWU1icE5JWW8yY1NsdjNseFpyb2pE?=
 =?utf-8?B?TkVkZEZ5UytlT242V21YbHJpL3pIazNEM3k1M091RExRWGt6VUhPTUhnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTBNaHAraDcyN3pqclJIOGZUQlhONUVQTEtPbHRyUXF4ZXVXTm05UEFDWStY?=
 =?utf-8?B?QjRhWXNVYTQzZE5samdGRHJ0RTZMWWNybE9qTWlHZWtUTHlpS1VocVVvM3M3?=
 =?utf-8?B?Mi9Eci9saGR1Y3pIbkZYQlNVS25TUmU3ZzkrbmdOT0ZIaFM2RlkxWW9oUkdL?=
 =?utf-8?B?cjFyUjVxcGxlOGs3cVhGWkw5TEV3ZWlqYnQ4cUh6cmVvZjB4Z2ZieEw3Tk8r?=
 =?utf-8?B?WC9KaFNHR2t5U1RXR1dkSDJrWVdkL1NsZVNJZDV1a1BVc3pxY2gwVTlvaUdY?=
 =?utf-8?B?bEpCVVhSUzNNUVNwK0UzZnFid1hkUmhKckdrejhvbDVXZzM2ZlBUU2R5QTVv?=
 =?utf-8?B?Smp3Y0JHYnJxaGRBWVVLNnZ5c1hIR1R1NFdma3lDSXVQaWtLNzVKRnNhNkZ6?=
 =?utf-8?B?QWFySi9mL1BUZ2hVWUNNR04rdFl6WWVkWm96b2M2Ui8wV3VuTmxUQldUTGlV?=
 =?utf-8?B?cTVwWXF0NkVxaUM3RGlQMEZ4MnpWSFZTaGV3bU1OSWZ2RksycEVHQUYwb3BV?=
 =?utf-8?B?OXM2RC9EUzJMTGlTZFY1T042Q05QaVUwNS9xU2pIejM3TVQrTmhPajRDRVpW?=
 =?utf-8?B?d1BsaTQyV3RjNGNhRWVpTUQ5VnhGOFZSeGRLYVFpOWUzamZOZVNHWkFRbE9B?=
 =?utf-8?B?TXU5MEVwVmI2WXU4NW9qNVdmcEFyWGNrV2oxbDZNOXJLWlVPTXpFSGV1MVRI?=
 =?utf-8?B?bXRtdm11YzA0REtRU0VtTVNpajVJMHk1UzV3TWhrMDNsQXZTRUlXbm1BUzl2?=
 =?utf-8?B?bXQ1bnFHQWN4eWkrOFhMUHloME5wSkszYXVmZ2FLZFVRTXdubGhlQnA5bzRB?=
 =?utf-8?B?RzliVVVOR1NIZkxxaWNaLzlwZkxrTEMrQmNDN3BwUnROcUNlMGc4RmNZZHpC?=
 =?utf-8?B?aHpHanZ6YVBLL1RQaXdDcGI0MzdXOC91NU9JdHBvWHZhT0FGTzhHNDNRU1Zq?=
 =?utf-8?B?NGl0QVdjMUZYcGJjSnJSUHU0V1E4RE1McU1HUlRlL0x2bHFBRVhxWUdqU29Z?=
 =?utf-8?B?L3l1WFM2TVF3RzAwV2FhUVVKbFNabzI1Wnh0czZQeFBEL043NUVNdW9wbFVo?=
 =?utf-8?B?NnVZTXRJNjhidjVyTENyMjVHa3pEdnFaWCtOb0N3cW5FRzAwcWh0ckpHd1Ev?=
 =?utf-8?B?cDlLVlhBWjhLMHVnS0I1QXl6ak5QbU9jYlk4NjBHVksxSFNaOUFVdElJL3RK?=
 =?utf-8?B?ZzNVay8yVnV6UEFZcTRzVWRNTXFzd21yTU1yR25xSko1azg2N3lqQktPTUhS?=
 =?utf-8?B?c0RyUXdLZXk4T2lpTDdUY2tkRnZ6T2FlTTJ4R2lmejVvbHNSRDAyV0tlNGg5?=
 =?utf-8?B?UE9ScHkxZnhrNU0vSE1RRGRyb0hHbk5xVVZWaDVQUXhlczRwd3NNWnRqWCtn?=
 =?utf-8?B?VXJmR0Y0WFBaNi9RTnJlRzc2VDBhNXd5YXByK2tYdTRYMlh5VDlNK1FKUDVZ?=
 =?utf-8?B?UC9mbnBzVFZoazBjQ2xVMk5vbTJzTitFTDBBdzJGNlNEQXpESWRHYjdaK3lv?=
 =?utf-8?B?Z1ZKNUpQSU90cHA0Q2VTa0VuVm9CNWMyTktkOFBVVVlxQlZ1aGlWWXE3L3pE?=
 =?utf-8?B?OWVlT3NiVElIU2hkOXV0NWQ5QnVOb0NBNjlaYTZsZXh1d3d2dnZEQjhpZk82?=
 =?utf-8?B?VlJMbzVEY2dRRmU1ekIrZkx1WUlrcmRIR2VsZlc3aC9MZ0JmTUh4WVEwU29T?=
 =?utf-8?B?K0pNRlRsK0RCei9McVo1VTBSNFhxMTNOVm1iZ1VUakVwUTN2UThvekpXSlV5?=
 =?utf-8?B?cmFoR1V2aU1EYnA1Yk1rR0JTZ3BueW5zRmdBYkc4QWIzazBvSy9iKzU0TE9B?=
 =?utf-8?B?UU5TYndKZG1QSlhNYnE1L3hOTDlsWnNVcXMvVC9DNEdNc2ZEVHZqc1ZzbDZs?=
 =?utf-8?B?elk2dWVUSjkrUW1JMGZNcHE2anB2UFBPbk4zejdETjBYRlQrYnZPL1AydTZE?=
 =?utf-8?B?TDAxblREbldzdU42Q0FObytOQWh1anlvOWdERVk1YlZZQVdINXdQaXRwTkp2?=
 =?utf-8?B?U29LSkVyVGw5NVpORzlZdGZpTHE1Z3JIQWJ5UTNLM3A5bStLUHdGUEpwblZz?=
 =?utf-8?B?bFo0RHQyRXZ6Y1NDcDJ4ZVkwUm1NUjQ0NHlRS200NFNnV0tRUjNOTktuL0hy?=
 =?utf-8?B?QUhFYVNZWFZJNVQybm9xdXhvMUM0LzRaM3NhR3I5Qyt1dGt2QkE0QzBSOEo0?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6c35206-fba8-4e0f-0b44-08dc7a431a2f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 09:39:40.3210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J5MyI92Pvi5b8EnA/LLyumFnvZ13YRtMuNJZhsv+BjrUK1V4YqfSoHz64bDgdVjEown6Uazytb3Z/0a+pALXW0kkvJmIz+lBgEuLaLbfzRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5865
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

--------------00OOpkTEl2zE5qLXzvRfKaHN
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 20-05-2024 23:48, Michal Wajdeczko wrote:
> We don't need <linux/delay.h> include since commit 5c09bd6ccd41
> ("drm/xe/mmio: Move xe_mmio_wait32() to xe_mmio.c").
>
> We don't need <linux/io-64-nonatomic-lo-hi.h> include since commit
> 54c659660d63 ("drm/xe: Make xe_mmio_read|write() functions non-
> inline").

Please move /inline")./ to above line to silent checkpatch error.

With that LGTM

Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>


>
> And since commit 924e6a9789a0 ("drm/xe/uapi: Remove MMIO ioctl")
> we don't need forward declarations of drm_device and drm_file.
>
> Signed-off-by: Michal Wajdeczko<michal.wajdeczko@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_mmio.c | 7 +++++--
>   drivers/gpu/drm/xe/xe_mmio.h | 9 +--------
>   2 files changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
> index 05edab0e085d..548dc37e5893 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.c
> +++ b/drivers/gpu/drm/xe/xe_mmio.c
> @@ -3,10 +3,12 @@
>    * Copyright © 2021-2023 Intel Corporation
>    */
>   
> -#include <linux/minmax.h>
> -
>   #include "xe_mmio.h"
>   
> +#include <linux/delay.h>
> +#include <linux/io-64-nonatomic-lo-hi.h>
> +#include <linux/minmax.h>
> +
>   #include <drm/drm_managed.h>
>   #include <drm/xe_drm.h>
>   
> @@ -19,6 +21,7 @@
>   #include "xe_ggtt.h"
>   #include "xe_gt.h"
>   #include "xe_gt_mcr.h"
> +#include "xe_gt_printk.h"
>   #include "xe_macros.h"
>   #include "xe_module.h"
>   #include "xe_sriov.h"
> diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
> index 445ec6a0753e..9ef7deecf38f 100644
> --- a/drivers/gpu/drm/xe/xe_mmio.h
> +++ b/drivers/gpu/drm/xe/xe_mmio.h
> @@ -6,17 +6,10 @@
>   #ifndef _XE_MMIO_H_
>   #define _XE_MMIO_H_
>   
> -#include <linux/delay.h>
> -#include <linux/io-64-nonatomic-lo-hi.h>
> -
> -#include "regs/xe_reg_defs.h"
> -#include "xe_device_types.h"
> -#include "xe_gt_printk.h"
>   #include "xe_gt_types.h"
>   
> -struct drm_device;
> -struct drm_file;
>   struct xe_device;
> +struct xe_reg;
>   
>   #define LMEM_BAR		2
>   
--------------00OOpkTEl2zE5qLXzvRfKaHN
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 20-05-2024 23:48, Michal Wajdeczko
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20240520181814.2392-4-michal.wajdeczko@intel.com">
      <pre class="moz-quote-pre" wrap="">We don't need &lt;linux/delay.h&gt; include since commit 5c09bd6ccd41
(&quot;drm/xe/mmio: Move xe_mmio_wait32() to xe_mmio.c&quot;).

We don't need &lt;linux/io-64-nonatomic-lo-hi.h&gt; include since commit
54c659660d63 (&quot;drm/xe: Make xe_mmio_read|write() functions non-
inline&quot;).</pre>
    </blockquote>
    <p>Please move <span style="white-space: pre-wrap"><i>inline&quot;).</i> to above line to silent checkpatch error. </span></p>
    <p><span style="white-space: pre-wrap">With that LGTM</span></p>
    <p><span style="white-space: pre-wrap">Reviewed-by: Himal Prasad Ghimiray <a class="moz-txt-link-rfc2396E" href="mailto:himal.prasad.ghimiray@intel.com">&lt;himal.prasad.ghimiray@intel.com&gt;</a>
</span></p>
    <p><span style="white-space: pre-wrap"></span><br>
    </p>
    <blockquote type="cite" cite="mid:20240520181814.2392-4-michal.wajdeczko@intel.com">
      <pre class="moz-quote-pre" wrap="">

And since commit 924e6a9789a0 (&quot;drm/xe/uapi: Remove MMIO ioctl&quot;)
we don't need forward declarations of drm_device and drm_file.

Signed-off-by: Michal Wajdeczko <a class="moz-txt-link-rfc2396E" href="mailto:michal.wajdeczko@intel.com">&lt;michal.wajdeczko@intel.com&gt;</a>
---
 drivers/gpu/drm/xe/xe_mmio.c | 7 +++++--
 drivers/gpu/drm/xe/xe_mmio.h | 9 +--------
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
index 05edab0e085d..548dc37e5893 100644
--- a/drivers/gpu/drm/xe/xe_mmio.c
+++ b/drivers/gpu/drm/xe/xe_mmio.c
@@ -3,10 +3,12 @@
  * Copyright © 2021-2023 Intel Corporation
  */
 
-#include &lt;linux/minmax.h&gt;
-
 #include &quot;xe_mmio.h&quot;
 
+#include &lt;linux/delay.h&gt;
+#include &lt;linux/io-64-nonatomic-lo-hi.h&gt;
+#include &lt;linux/minmax.h&gt;
+
 #include &lt;drm/drm_managed.h&gt;
 #include &lt;drm/xe_drm.h&gt;
 
@@ -19,6 +21,7 @@
 #include &quot;xe_ggtt.h&quot;
 #include &quot;xe_gt.h&quot;
 #include &quot;xe_gt_mcr.h&quot;
+#include &quot;xe_gt_printk.h&quot;
 #include &quot;xe_macros.h&quot;
 #include &quot;xe_module.h&quot;
 #include &quot;xe_sriov.h&quot;
diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
index 445ec6a0753e..9ef7deecf38f 100644
--- a/drivers/gpu/drm/xe/xe_mmio.h
+++ b/drivers/gpu/drm/xe/xe_mmio.h
@@ -6,17 +6,10 @@
 #ifndef _XE_MMIO_H_
 #define _XE_MMIO_H_
 
-#include &lt;linux/delay.h&gt;
-#include &lt;linux/io-64-nonatomic-lo-hi.h&gt;
-
-#include &quot;regs/xe_reg_defs.h&quot;
-#include &quot;xe_device_types.h&quot;
-#include &quot;xe_gt_printk.h&quot;
 #include &quot;xe_gt_types.h&quot;
 
-struct drm_device;
-struct drm_file;
 struct xe_device;
+struct xe_reg;
 
 #define LMEM_BAR		2
 
</pre>
    </blockquote>
  </body>
</html>

--------------00OOpkTEl2zE5qLXzvRfKaHN--
