Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759BCB2298D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 16:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9565410E5FD;
	Tue, 12 Aug 2025 14:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUMsCD2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D8D10E5FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Aug 2025 14:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755007406; x=1786543406;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GyXWFCe8fv38a4lvSc8/2kPg42EJt69X7jxbAK0UnIA=;
 b=JUMsCD2YwpXyGS8ee7z27ASwRwS1S0L8UHUeNb5QQ+GUdyFzYjgwdkKG
 H8zfQ7iCQ33dtMiFygDSSIynKVlS+i/1eTN3RBOBkacdMVH5Dm4fIACSR
 NnSIycfjPkhVD9dRUJCOi/g761srI0hYDBhDEYWznj+Mc8YZe2PzIovRS
 AafKuxklbtGztlM9vUtQj4XOGut0UN7GDFBPDjXX7joGwlSDrgDzPSOI0
 ExPnbzZq2/6Zp60yZWrs5rYoyKX5Ofk+JnSARvcNRWIrEMUuXGTzvyET2
 LVvdcvdt+Zw+S59Ywme58S/sCYAXB71UFrZ4dhrnkALWQe5v7JgW59Mvt A==;
X-CSE-ConnectionGUID: To6jQSDmReivP78QznxMoQ==
X-CSE-MsgGUID: MAzpa9V/Ss21cRrGRmTJLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57345131"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57345131"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 07:03:25 -0700
X-CSE-ConnectionGUID: DErzPsxVSXygq8fZdrCgFg==
X-CSE-MsgGUID: VvVdk9pgTPSeHfDwRqyBag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="166101310"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 07:03:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 07:03:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 07:03:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.73)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 07:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b51MZNeW+33tLX+yqjmj6Gv6MYwrkcqTGN7uLBHCU6eP7Kw+H/V3pFqlBMNwU+iAW9LuNwFUFBCO6kpoJCw5SLw42LQbwD9Hhfo9B7ppwatyMOmg5ey4+j83mwHq37eQ9/SEd7piyMCpQ6+I8b/1vAMnyRju4iuJ2mdEZbZoEsAp6bqcuQoA0sUWNS9h39ZAoSeksMUVaNMDvuEDc3Hnb8wF1ym265pwsmLjY30SZoPhK2kfiXUqgVEezuY884qCJfxuosYBWZmZzt/7XQZJ6wr7e0doWmDCKD6Ump4t55obFHY6stUmYPDt1TkSSs8gpBwtplS4JjVMr2rkmXoCNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahOEV+JSCx6NnuTf/nUudMV5ioQQRzCzh0M8lXivejE=;
 b=wFG9OCnN32g7dV+I92a2HkillScSY1xC89mlJvZf3nTZZ0i8uXanGcs46xjDFqSl0g9KgN54y/V+2wfxmRZtFQs46DMPgoAKc371fQAHJ0kA5xq5T4lxOb1xWs5CnH1WNpCRWmERJ2xEjgHcwQpU+2KI2Mmbxry6fJ7UTfyFm9lA1dhzjXB8RmnLZPXnyL1ggI8O8MiXvoifnAqSVLavbFtqosOGoTFu1X6EDMLJO5lcnIURB88CXGo+7mv1nDnYVhqESjex6RobsY+S4CvyX+ZxnmdxKJrybT3aPQTwYleuWpQ/eWjB+RskaBh3DG/dFvyc6WWjno2WnBC+0v8sKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM3PPF5EA507B64.namprd11.prod.outlook.com (2603:10b6:f:fc00::f25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 14:03:21 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 14:03:21 +0000
Date: Tue, 12 Aug 2025 10:03:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>, "Matthew
 Auld" <matthew.auld@intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>, "airlied@gmail.com"
 <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, "lkp@intel.com"
 <lkp@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Message-ID: <aJtJpCD9-K2Pgsqo@intel.com>
References: <20250811093050.38930-1-chentaotao@didiglobal.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250811093050.38930-1-chentaotao@didiglobal.com>
X-ClientProxiedBy: SJ0PR13CA0196.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM3PPF5EA507B64:EE_
X-MS-Office365-Filtering-Correlation-Id: 63249ef2-cf1b-44e0-d921-08ddd9a8ff10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aHdFRzJ3UmhQbUZDQUlnanJaMXlqMkNnQ3pDTTBYOGNzM05YVG4zeFRiRVJU?=
 =?utf-8?B?RDd4dHc0d1dNVXh3VmNSQXdHQlB2by9VZWhyODQ3alplTWRwOW1YTlBhZ1lI?=
 =?utf-8?B?WGFBdU1MOE5rRVExTTl1WTA3aXkyV1pNTWI1QnM4ZWV2enFLY0Fac1R6a0ZX?=
 =?utf-8?B?dThpS3lnR3BuaXdWdHNtaU41QlU1T0QwSlZqTXhqNXJNWlMycHg4SUZPbEl2?=
 =?utf-8?B?OUNmUmgvajM5NE41ZnEzVEFpeFJwKzR3SUFNdldsdTUxUDV5aGZOVnRQNEx2?=
 =?utf-8?B?MnlsQ1oyVW5TbW5Sb3Q1NWUyOTVYNXFEWS9QM21tejg5Z2s4djJiS2EySDhn?=
 =?utf-8?B?SjZaMGUweTd5ZEE2dFBvQkNDTDhTemloNm1VZEM5SGVIRXcrQkJsMkc2eUgz?=
 =?utf-8?B?Ym1OeDFDTDlMemhUZThNbXI3WHdrUlhKNjVMSDU5NVo0SUtVMlFJdFF3UXRF?=
 =?utf-8?B?cnNLNEl6bGpiN1VjY3JYY0xobklRY0dKSC91OXhqbmVDc043RkpqVG1DWHIx?=
 =?utf-8?B?cm81VXloTk1ZOGliRFVmUUcwbW5wVFVJdEEyUTRjZVNIa3dUTEFvSVpPV0Rw?=
 =?utf-8?B?a0QzUWhWSjA1b1lNUm9Ub2FITWN3NExlNCtjTGpDWERJanJBb1NqTlRxU3Uv?=
 =?utf-8?B?UUswZHJOeXhWSW5SVTM5eE56RTQ5UUhXVGNWazhWKzZNMUFuUEtVWHZIdzBH?=
 =?utf-8?B?eloyT0ZOcEp3NFl5bDkyaEpZVEp5U2RQeHRUUktId1B0Qm9CNisxL2lBS0Ny?=
 =?utf-8?B?T25odTlGR1JBRXBiVTRnQm9NOHNnMm1MTit3YlF0SHBNdzl5NVN6dDRpVzFO?=
 =?utf-8?B?Z2FCenFhUi9YVUFhZUsrM0pKbjhybkFYNjFSWnBXOXcvS0o1SDVsLzVjSm4v?=
 =?utf-8?B?NVlLcFAycEJzOGtENlZza09CL1Fxb2wwbkt2NTQ5eHNhOU9WZ2tzQkxQQ3hm?=
 =?utf-8?B?anhtSU5FMzhTOU1RWWFlSG8xYXlmTC8rYXhXYWVCYlQ1TmErK20wYWpITEhm?=
 =?utf-8?B?eFZrZGNPZlZYcUFZdW80ejZjUXRQMmZmdXZIODFLN3doMzl3UFpETmY4LzlP?=
 =?utf-8?B?d041VWRVRWlLSjFhRDA0TzVETURqazh0NVlPeW91dzVoNk9lZC91V2E1cnZn?=
 =?utf-8?B?cElBTlZVRWtQSlR5K3pjWEhhZzdJenpnNDc0ZlhUV25qbk1zSUlUMUVMU3Nu?=
 =?utf-8?B?WlEwcTVuYW9PQkQwMkFkelBXMWdyWm5LSlhmTjRXcDEwVEhBQ2g5Wi9yam16?=
 =?utf-8?B?M3o5T1crKzZOdGtYT2UvNklCdDQzcU9ZMU1VVEs3MzdDMEMvQ21nOUoyZ2Yv?=
 =?utf-8?B?eFNGazZEMnljWGZMa3hRQWRwcnRIL0dZK0c1ZStpTlU4Kzd2Wk1uZVJ2SW5p?=
 =?utf-8?B?RUJPL3hkUnRra0ExN1hwRVBSZ3lZUW9LMlAvd2xHWnJmaVV1dnkyQ1Q2UzB2?=
 =?utf-8?B?Nk5PY01iMTlCQWNPTmhzRS9oQlQ3MjR0eWFueFEyc2M2UDBCalRYTmVudGkw?=
 =?utf-8?B?dG9lUk9ZRmJBV0ZId2tQWE8xOWwzZDJXbkZWSXBjb0g5d1RWL2MzWTJDb2dw?=
 =?utf-8?B?VTNXeTdsRFNQZzlJY0gxbzdrZm9KUXNaY3c1MVhhWmJMMVBueDFiTHV3c0xW?=
 =?utf-8?B?bmtJTit5R2RXT2c0L1JpMUNGZERIbTl4VTFLRHdlTnJCWk1LMjZhSm9QZ3o5?=
 =?utf-8?B?bmoyVDNaOFBOOFdCVC9MS0ZKQmNES1NLZkYwTDZ6QVF1dkJ3MzhhN3dGZDNQ?=
 =?utf-8?B?dXc2RkpNWEt4K04yZWpYd2hSbzVqZHFKVHBkUXlOd0FobzFsTHVuUE5XcGdS?=
 =?utf-8?B?UjRtdnF3SlpsYy9jUzVDNElMODQ3ZUF6QXRPaU5BQTdxcDVieStNanVOTFo3?=
 =?utf-8?B?SCtCMU14SVpNK2FPQU1PQldIUXhnODBPVCtaNEZIRUt2dXlERXRTaVVNVzlD?=
 =?utf-8?Q?5R5Nvt7jnVk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZytiV3pVbjVOOWJKN2hHM0hrVjk0RVQ3Yjc0c2ZRY0x1YkNKRVlqaGdyem5J?=
 =?utf-8?B?R2djUU9iRHR6SERyWnlEWDZEUExwM2dRT0lCbVNUekxYamEzSDFjblZRaFc4?=
 =?utf-8?B?aFJhN0ZPdDNzZFVCR1hsWWlXV1F5MHFZSk1TMXdwODJMRFBJT1k5OVE0ZWRi?=
 =?utf-8?B?OUxLQnEyTFc3UVpiNkgvS3N0VzdCK2NVNUh1VVF1YUZCR0h2UmpjcGRGd1hJ?=
 =?utf-8?B?eUtId3d1QWdNWjVXQWdzaktkQW1ERlQzRFZmelVhZmZoSHlDdk1yZnlWQzgy?=
 =?utf-8?B?RWJraE9oK1ZXYXA1VklwWmI3VmdKc0x4Z3hCOXIzRXUrLzNWT3VpL2dZRkdi?=
 =?utf-8?B?c2FXYWc1Q04zdG5uVEl2WENISDQwQkdNNlJ0ZlBETWc5LzAzc2pkenRFTTJl?=
 =?utf-8?B?S1MxcCtrTXI5cHVKNTNFNWpFZTNPT0lmZUkyZFE1MUZUU3IvVGJITmRzYXVO?=
 =?utf-8?B?RHFFT2lCdjZQUlU5NnhFL1hQWGNKdEo5WmcwMWRDK1ZUZnI2WklOTDlNTitt?=
 =?utf-8?B?YVFSYjRHcHJ6YXB3cHVBS2grS0V5NUZTNDA1em1oMkFaNkFTM3dvdkFpZTFC?=
 =?utf-8?B?Z0RWdmVyTDk1dmtRZDdlcG5DSDdGVUFKU2ZRTWJRTURIeENCeDBiV3NZbmkw?=
 =?utf-8?B?QldxT25HcXRrTHdrN1lJQy9oZ0lvYWpTQ3k4WGxsVEw5OWhhb2tWNHhsa0I3?=
 =?utf-8?B?TE5Zb2VnNlJZWkw0THlKRjBJWW1Yb0g5ZWZCZTlvbVMrTFZIVHMyUWoyQUR6?=
 =?utf-8?B?aDNtOW1abTlURm9CeG9YYXNNMkg2ZU1MNytmcWR2bW5lWHczLzlYVnVoZFV0?=
 =?utf-8?B?K3hzeTg0amxHVkI2ekFJKzhiSlkvMlZRQ1ZoWXluRW03eE8yN0xodVBReXln?=
 =?utf-8?B?SG5pZjZ2eWlOKzh5bys1cllEUnlwOXZkZmNpYUVvQXFvN0ZGZXdRNCtXU1BN?=
 =?utf-8?B?QkszYTl4c1JjSnZvcXhMY2RLM29aa2d6QytHNmhSRldEaUZXZ3JOcDJLRVZI?=
 =?utf-8?B?RFhPaWsyUGFtZ0t4S3Q4bEpadWwwbk8xZzh1V0w5cGpSbVBFVUJtbVlJRXQ4?=
 =?utf-8?B?MDJXQUVITjFvSnV6QTY0WGkrOE04NW9kV25zVGFiTDRuUVoweVRlVjg1RlNY?=
 =?utf-8?B?cnVHcWJJOExhckEvNWIyeWVPd1JMbWxUVTNOT1ZBaW1LOWc3SUlsaGhrRnJI?=
 =?utf-8?B?UnBVWitjZ045dUQ0cWtveVRLaG1ueDcvazVoY0JZdDUzQW5CanpxWXNLR2kz?=
 =?utf-8?B?V2tSYUNLWUhCek56SzNucmc3NTB1dWs0ZzRIL2RFMFJ3cUNZR282OE5FOXdm?=
 =?utf-8?B?aGtHWGxNUW1RUWlmNk9teWhjNDUxKzVudTV2QnRMemU4Q0RQcWtQdHBJV01q?=
 =?utf-8?B?VHIyWE1zTnVZc2xsTi83cUJrd3pjTFNyeVFBL0loaVZGWFlHcUpBM0JuaDlO?=
 =?utf-8?B?R1VQcjliN1EzNzlVeVZETEYxdnY0dkZwWEJJdGttNWpLTVgvV1Z5ajFlb0xJ?=
 =?utf-8?B?VkZCUW5ZYm01eGhMckhscUVqKy9QdlpaaGhMY3U4UHNQaEVERFFVMXQvVW9r?=
 =?utf-8?B?OTgzMGt0S2RtZWxaQm9EREY5bDJoeHRRaklVaDlRbm5mZTRoTER3SFozdE9U?=
 =?utf-8?B?YU9MZS93L3RNOVFublh0OUF0QWJpVCtJcC9KelJCVTFmbG9qQVBOenZzbVF6?=
 =?utf-8?B?MkNrUUdrYkhITjVUbk1KbEtMRlhqanRmQ1FJNUt4T241dmowb1NZMkZIaUJD?=
 =?utf-8?B?SnU0ZTExZFZieWx2bXBXRllvSHlnN3V3UURwQ0JNS3FZcFhrRXM5MVNEZ3Zo?=
 =?utf-8?B?WmYzSFlJWEFJa0NOOTRWazB6ZjlhRVlQd2REVmd1V1VXL0lGdUhscWZSaTJn?=
 =?utf-8?B?Vm0ydkZ0VE43OHI1bkl6N3pocFV6THJYbEdGVDg4Z1lJNHpHSzM0MlArc2Y2?=
 =?utf-8?B?eTh2bGZ1azJORVJCL2hPZnBnandud0ZyYjZjTjNUbUYyV2V2YUlYUXZZMnNU?=
 =?utf-8?B?SlFlN1RSVlRkVm9Bc2dXRXU1M2dxVWRVbDR0aXU2QlBvREJzbGRTLzBXWWxL?=
 =?utf-8?B?eS9GQnFqZTZmUGY4NUVRazJCKzlEOGVUcnh1Mmwva0tvemFINzZjTEo0L1A0?=
 =?utf-8?Q?qfWjxQNDttYn5xFcD4TuNA5pj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63249ef2-cf1b-44e0-d921-08ddd9a8ff10
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 14:03:21.5324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fpaNFDIkT8UKzG8lMe5hP3THxTUbEZGx1nXIVSkHd15VHZ0BPSaopfi8Yr6JGUG6OtCtC0jEOi1J/+JIDcaXlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5EA507B64
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

On Mon, Aug 11, 2025 at 09:30:55AM +0000, 陈涛涛 Taotao Chen wrote:
> From: Taotao Chen <chentaotao@didiglobal.com>
> 
> Without O_LARGEFILE, file->f_op->write_iter calls
> generic_write_check_limits(), which enforces a 2GB (MAX_NON_LFS) limit,
> causing -EFBIG on large writes.
> 
> In shmem_pwrite(), this error is later masked as -EIO due to the error
> handling order, leading to igt failures like gen9_exec_parse(bb-large).
> 
> Set O_LARGEFILE in __create_shmem() to prevent -EFBIG on large writes.
> 
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Closes: https://lore.kernel.org/oe-lkp/202508081029.343192ec-lkp@intel.com
> Fixes: 048832a3f400 ("drm/i915: Refactor shmem_pwrite() to use kiocb and write_iter")
> Signed-off-by: Taotao Chen <chentaotao@didiglobal.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index e3d188455f67..2b53aad915f5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -514,6 +514,11 @@ static int __create_shmem(struct drm_i915_private *i915,
>  	if (IS_ERR(filp))
>  		return PTR_ERR(filp);
>  
> +	/*
> +	 * Prevent -EFBIG by allowing large writes beyond MAX_NON_LFS on shmem
> +	 * objects by setting O_LARGEFILE.
> +	 */
> +	filp->f_flags |= O_LARGEFILE;

honest question, is it safe to set this here unconditionally?

Cc: Matthew Auld <matthew.auld@intel.com>

>  	obj->filp = filp;
>  	return 0;
>  }
> -- 
> 2.34.1
