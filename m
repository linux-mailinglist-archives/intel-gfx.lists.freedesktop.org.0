Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC3C525B6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 14:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E777910E09B;
	Wed, 12 Nov 2025 13:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/4kPvRA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9121B10E09B;
 Wed, 12 Nov 2025 13:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762952450; x=1794488450;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=IyXmEGc0g2itVTzIe7d/+V4G4sgP5HhV101q0JmYJF4=;
 b=i/4kPvRAPIlb78x6qV9xeXhrjLWd6BF6MoLhIQSHTBpqsWQ6ti2p15IR
 +RzXD1n7wGl/S/vb78Gwc4Epj9uG3YsSR+Pn1kpqilZc5Hcn64T3lSBGc
 ZcE/b8rscXGnJXW68vsePFDFzrlky3HsXsSPIxNkvkXAjv9XCYCP4UwZZ
 UqkWtTdd+ktCo6kptQ7TyecPcWIBbVh/BhXAjvyRJyOylMyuavSAZkEh/
 Eg855/wp4meMIsR02rqYU6Vipp9t1iA3WN25jMwN6KLqpyGowU3HFP++U
 D0fdun+zTPHS6F3gjUu+cwGbbzhz8doZQ8DaRTdtZ4dGmrlgQJIlC9nD3 A==;
X-CSE-ConnectionGUID: dTD94MkjQrewBebpUlswqw==
X-CSE-MsgGUID: JrV3RpciQdulmGxpKoE32w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64950506"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64950506"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:00:49 -0800
X-CSE-ConnectionGUID: JTVTpuFVRfij8ZNAEEzGMQ==
X-CSE-MsgGUID: C4sjnHIlT4m4+N38rhdcvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="219879014"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:00:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:00:48 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 05:00:48 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:00:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dsf8Q/VwyC03Y06Ko306CvaU2UN0XswSWGdS98dVHtv6EkC1bpv+CKO5/Wo2DCb77MpQ6okuAHcgT81B0inilEtV0vnbjNoUpVRcgR/vnX1jQno9RhplUiXxFKAJj8XQYX/Lbb9P6LYhSqKY6WslYxMIYmyINBUGVIysjFobjnRnV9L2BM5YQzdA5cjWbpSkxzlgY8DivimXzuuy1pkaAReEpL0bixBzKSvrXwPkA3kpHrZ6tiyicrNv9+y8bPjxKc6mCGlE1urta50cKY2Gaxvwf7PrLZzWdZihRPGcW3Ilr58ZY/ObdU58pyJtIXGVNhJnAcFMPXBxCCfrd5LEhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzGjT0hzoAu755/kFRizgHjG5ST325ZzvA7V5EwAGIo=;
 b=yYEzOy6axnqQK0XMsFi083OGHT1NhnNa6Vw8O3vYSVToobrBxkw/VBPhoQY+8ga7moqUN/H3yxscBvsNxKP2GsNE8ZQLIy3lRnu5XevhHc3hku+A+1FrIdD7YyxkP/eG37p+hW5G4doo+EVvNV/doYaBlrfFSkzIwAusbffOvSofDElp9ChHah4JPosznSPO/IpgYOpj/+unHIoSzs6JklCR+kbAfbjAR8fDfGaKx+lMTgA8piKkASMQah96RmleuKbQIq3KC3TDLiiyfDYA+bP1gufgTU6NqHkMOrJwGdKI00rtsj1e9lx+rqRdrx2K/oVD49NG1fwLW3NdAEeYMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by IA1PR11MB6099.namprd11.prod.outlook.com (2603:10b6:208:3d5::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 13:00:40 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 13:00:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRNhLYc2SPuNKEIv@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-2-ab3367f65f15@intel.com>
 <aRNeF6O4SBuBGZvy@ideak-desk> <aRNhLYc2SPuNKEIv@ideak-desk>
Subject: Re: [PATCH v4 02/11] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Imre Deak <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 12 Nov 2025 10:00:27 -0300
Message-ID: <176295242789.3698.8127437932458349279@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0077.namprd05.prod.outlook.com
 (2603:10b6:a03:332::22) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|IA1PR11MB6099:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c1ce1ee-6e92-4539-83ff-08de21eb7b24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjY4ejJjL05OWVZnSnpWeU5OQkRTTWEreXlNSTNVOWpjWDA5SnJCRTZoWjQ3?=
 =?utf-8?B?YXlsVVlYZDNFa3JXS3pKaUpsRm1nKzF2UzRCSkFiaXNFTXFKb1hBTXNSY0E2?=
 =?utf-8?B?SUdlRlFybnBzZG5SN2tBeFoxRjAxM2FKOC9ienVOUEpibG55V0tWeVhzcXhF?=
 =?utf-8?B?dUxxUml1YUFsTXFCdlNwZDBBYldLZkJtUTl2WEFRK0RYcVVVUzBxdk1aUWwx?=
 =?utf-8?B?SzRPLzJaMEZGSi9JUXZuSzdTYm1ud1Z0U0FRZndHTHg0ZUFmYUkrMWZXMUk0?=
 =?utf-8?B?ZXEySTVPYVI2WXNTblM4QXNnNHF6a3VLclUyeFJXaDFmaUxZa2VueVo0RjBL?=
 =?utf-8?B?T3o1MXdxM29tQWhpS1ZPOFlZSXFlYVYzOGV2aFB3MjBpbGdUTHlQaEx2ZnRM?=
 =?utf-8?B?ODNtZ01KU05HaE1YcUgyelh6dkowd2ZyTFlWT0c5Z3RhRmtLUXZKMFlPWjRM?=
 =?utf-8?B?N1B2eVIyVmxnQ0V4TWNxQVB0bjlxK1pFbUtmZ21TN2Y5aHZMVXZOcExHbDky?=
 =?utf-8?B?RFRYSkJJNk1OSmhIVndiVU9WZ3JYZGxzSGtaSlB5OVRaNzVDdGhzWWZtTSty?=
 =?utf-8?B?OTRGaWZpbStvTit3M1JjdWttQmsrREthMlY4QncxaE1XRkpuZmI1Qnp3L2ha?=
 =?utf-8?B?NjB6bzhHbDh5M3o2d2o1T042RXBZUUpXbklxQUVuWVdLM0JpRG1Kd0lJVVVF?=
 =?utf-8?B?cDM2aDJyZjM1VWVyVnNrejVNV0pyT2owQVZWQ0pTbjRJdW1ob2Z2OEJhN084?=
 =?utf-8?B?NkJMOWh1VG40VXl1RE50d2JHOHlaWFZRTGVCMHllRXVXbHdSSVhkTWpSalpH?=
 =?utf-8?B?ZWNCZWIvSHFNUUN3d2N2Ym5PUTJ1REh1cGhUVElUNU9FUjRuYU1kb2VrR1Nu?=
 =?utf-8?B?TEc5TEx0U2tlckNJam0rOUo2cnVLQmZROEN5WDJOWDJhaTUva2xSeFJBMzRH?=
 =?utf-8?B?VUw4SzRTNmUrSWp1NFo3SXFFQ3VFQ0lVb2pvbWZSRUNKZHV2ckwyRThIbVZU?=
 =?utf-8?B?NWJLMGY3aDZrTlhwMG5TTk9uaEo2NS9JMVlFQTJIUzVwM08ra0l4SFV5cHZi?=
 =?utf-8?B?QnlEemZLQ2NrZitkUFBUR25UT1RJTUdsM1p5eSsvZXUxVHYrZE93cnl3MTMw?=
 =?utf-8?B?Ukh1VXJiNGQ3WGRTbnRsRk4vNDllRWdjWEVCeVUyU0F0Y29KOHBBV3dyS3hn?=
 =?utf-8?B?dnhCcERCbnIwRC9hQkl1VmY4TWV2RU96N2ZoTlJ4R0QyWXZ0YWRQR1ZBbHJU?=
 =?utf-8?B?SXd6UXh4L3BFUU51TksrWEY5SzBXNk5BdjBZQVZJUE1oN0wzZWVoSHlkYXoy?=
 =?utf-8?B?QWZwQTF2NXVHd3hwMktvQ3BjS3NVRk13Z1dVdno4SDdkVUZ5a2hmbDd1TDlQ?=
 =?utf-8?B?NlFIbjBlaWVaTGs0TG0xbE0yVkt4RTZ5SzdwekdPaDlibHdnWTZXNzhyL2p2?=
 =?utf-8?B?RUpsVlhTYndPZHNVeVQ1NEZCTWQxR0xXWUdnZCtFWmdud3pGYmJVUm5WdDNq?=
 =?utf-8?B?bVMwNUQvUHFMQzQ0TlRCZ3Z0UlB6REZCV0VRcFI0Z3FDWENCOUcwcnMwcG5p?=
 =?utf-8?B?SFlzYytrR3laSTgrLzFsaDBTRmMwQWIvbU1JMnE4NGcyOTh6UVppVGtiRmpW?=
 =?utf-8?B?NHlpRTd3STBJTVU4MkU3bVZzY0hEN1NySjZsV0tmZmc1R2lJOXdYSjRxNnZD?=
 =?utf-8?B?V2ZHcVdVVE5yK052bDkrRW9XWmZsQU5WVGZ2RUV1MnJ0QmVuSEQ5K0RyL2ZQ?=
 =?utf-8?B?S3o3U0hZcUdZcVU3enRFTHJNYndBVU5oamlLblVKQldyeDRGMXhpZEpZSzZq?=
 =?utf-8?B?SlhabFlKWFlZTXQrOHNjYjhwekZSVTJrRHArTzI5aWkvamlyUmc2OXFrRlBm?=
 =?utf-8?B?dGR5Zm5RU290Mk41SFVRRW9Zc09WVkZZbXdUMXdwc1hDeWhTUmQreDJpNEpy?=
 =?utf-8?B?NlBZamJWREFJNnoyMzlvbGl6Q3JscTJMNCtOWUdiT2JmWnBHYktzcW92WGUy?=
 =?utf-8?Q?XsVkJ+YOsmb5kls4NVd/DzJpVJesnc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGpmdXBHbml3SGt2QlhyOVpoWW10VGxZRXJjZmZ3UjZIR3JjeUJveHpLdmgz?=
 =?utf-8?B?U1pxMmdWeG1PZFE2Y1g3TXNwZGJaYWRmbWFEUTRkNnpwVnhCZjVqUVFzKzlk?=
 =?utf-8?B?d1QzT0Y1UlZ4cHZPVFBIZFhoZlNyblp2WkpNWmFaVlBZekhrUlJjbDdyMHRZ?=
 =?utf-8?B?QkpTQUp6UHc4ME5kS3ozTGpYUE4zMUk4S1FzWWY0WnIvSHNkY1M3bFlJUkVN?=
 =?utf-8?B?TnRiNkMzdUpuVXFVQ0ZoVjllZE50bU9XdUE4cE0rL2pFa2FxdEQydVVZRnhW?=
 =?utf-8?B?cG5lWk8rN0pKUzYzVVZBdkFacGJmeTdzQkg1aW9CeWZ6QmdsRkYwK0FJTk1L?=
 =?utf-8?B?NE41VkhZMFRDK1hvZVlkekgrZVhEc1l2VjF2L2FaM1I3anROVmpMS0M4bXhw?=
 =?utf-8?B?TFEvSVcxRnhQenVLeURzd2t4MWU0eUVIMllqWnBhNVo3UDcvcTZBai9rV1hB?=
 =?utf-8?B?enRlTG03dVZqUmtITWhQZGZtaGJpTzdVZjZHY2tiejZScHVxanZhZ0FDcjgw?=
 =?utf-8?B?NWViQXFlc2RLS2Q5QitvZmM5aFpNL2h6VWV4YnBsYkdRRG9SMWtXaitPNUJ2?=
 =?utf-8?B?QmFRbDNwM2F6UEZFcnl3RzB6U0p2UXZPRVl0bmk2TldQY0pEY2J1S2ovazIv?=
 =?utf-8?B?L1RPTkp2ZlRXa2RGT0JBZER4S1pPTk9qMys5UEJqV3BUNFBYWXVrSGF2SWdG?=
 =?utf-8?B?djNvOFdCeldJckRUcWhFUW1RRXVPRkU4MURTTTAvc2VvMEJzMnRVTDljUFZ1?=
 =?utf-8?B?Ui9WOHNHQkpIRFVXUUd0cUFZeDFJUlFydlBDL2xHMDh4cEcyL0xpMTE1amVH?=
 =?utf-8?B?RmhLOEU1ai9QTEx1T2p4UWRhSy84VzhQb3cvZndPNHlYZ0dnSHY5T1FWT3lv?=
 =?utf-8?B?YzROeHdQM2hrcXZGN0Exd3F3aHZRKzI1SkZSY0cvMzVBNndsK1V0N1g2TDdC?=
 =?utf-8?B?NjFGV284WXlSV1p3eWNxS2FrSXNOTDZ4V1R0ckMvdjRBMENoMlFKTTV2Y0h1?=
 =?utf-8?B?QU5UWVlFK2ZiTUUvMHNXRVY4eXovTmRnR0I3TjYwUmx5OE5pVTNLRUhTWERB?=
 =?utf-8?B?eGNCNVcyN25OM0NyV3lqdGE1L2sxZS9ubFJwdDdlYnk5UjluUWdqb1dpTkJU?=
 =?utf-8?B?S0VpN1B5UFpiNEJOMStkOEY3YjUxYWVXRXcwVXJkQUpOaitkK29rVlVvaWJi?=
 =?utf-8?B?TXhqZXZxMElYWWZPcmN2UzMxQ0JrdnZHazdZOTNoTkZiaURGY1pMWWVQdXE3?=
 =?utf-8?B?cHhiKzBrK1RpU3ZUaHBLREtudDBwOHNTYnI5UE5IZTJyd2dYd2tHa012UmJ1?=
 =?utf-8?B?SEQzTTIxZVZoeGN5SDBMRk56dUpSakpONFJ6QldBVEFBY2tWYkhyRUFCeCtn?=
 =?utf-8?B?VGZPV0EvdzExYkZiUlZrTXBtZWcvaWRwOWx2VjdzMDVNa2swQ05lbnNJRnFI?=
 =?utf-8?B?Ky8vdTdyaHNRTXQvTm1FbjdXK3p4bFdwRjdSOUdQbHh1RHkxeTBZNHA0TEU1?=
 =?utf-8?B?L2F6NkZIN1FSRUFvNG1tU2U2bHZwZFhOSmpqK3VPaDhhRFBnVEZhL0FIRWtH?=
 =?utf-8?B?MFBBRytNdFlCS1I3azI2Nmg1VTNaRDVqSVFmOTdhTmRJUURURE0wM3RUaVpJ?=
 =?utf-8?B?WXhxczl2SmhZZ005bjJoVHBqOUZGVnpjYnRTRTUvNkFydWptMFRRZXVDL3dn?=
 =?utf-8?B?dElMc2xlaEg3eUlVQndYL3ZNeEVTWXpUK2EveU5mcGdVSlF1cXdmT2NKNm9T?=
 =?utf-8?B?MkRQamJQbmJiY1pRMUowcnZ2cTJINzZpQTJ4ZXJkayt3RGpCaVZoQ0FJN29k?=
 =?utf-8?B?d3ZkYlV6NHdxUmx0NEdSWUQrd1NJZ0RKNDFITjRwbm14WWg2QnZ5aFk0aFZV?=
 =?utf-8?B?VDdqa29mTyt2RkUxUnFIN3NEUzl0OGN2eVJNMkRvU2k0QXBIWENDRnJ5L0Qw?=
 =?utf-8?B?RFFoSStwSTBoc3A4UUZ3ZkpuTDNhR0ZFZ2dsYWJlbmxUUUkyamZoK0xydEVO?=
 =?utf-8?B?UHR2SEUyNlBkMmc1M0xTZzZnOGt4QjgrdGJEczYvMk5ZMnczTFFaYXoxQnRw?=
 =?utf-8?B?U3Vic0tnRjR6eDhZK1NQZUFqUGRTRUJKRHo4eGMxU29LU3QydC84YWxLSzcy?=
 =?utf-8?B?SjlZb1NYSXQ4YkRpcHpGWG1jbWU1SHZRc213NGx5NWtvSEFMNHFTcEQ5bm9C?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1ce1ee-6e92-4539-83ff-08de21eb7b24
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 13:00:40.6193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z1fyctAfO8kZoeIx4nJtQxh8YTyqr3IgiviS/XOmv5q9vXyTO950Cpvtg7JmGTXVhsuX+n6nsy1zaqxWRw549w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6099
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

Quoting Imre Deak (2025-11-11 13:15:41-03:00)
>On Tue, Nov 11, 2025 at 06:02:31PM +0200, Imre Deak wrote:
>> On Fri, Nov 07, 2025 at 09:05:35PM -0300, Gustavo Sousa wrote:
>> > VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
>> > configuring SoC for TC ports and PHYs.  Update the code to match the
>> > updates in VBT.
>> >=20
>> > The new field dedicated_external is used to represent TC ports that ar=
e
>> > connected to PHYs outside of the Type-C subsystem, meaning that they
>> > behave like dedicated ports and don't require the extra Type-C
>> > programming.  In an upcoming change, we will update the driver to take
>> > this field into consideration when detecting the type of port.
>> >=20
>> > The new field dyn_port_over_tc is used to inform that the TC port can =
be
>> > dynamically allocated for a legacy connector in the Type-C subsystem,
>> > which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
>> > that field in order to handle the IOM resource management programming
>> > required for that.
>> >=20
>> > Note that, when dedicated_external is set, the fields dp_usb_type_c an=
d
>> > tbt are tagged as "don't care" in the spec, so they should be ignored =
in
>> > that case, so also add a sanitization function to take care of forcing
>> > them to zero when dedicated_external is true.
>> >=20
>> > v2:
>> >   - Use sanitization function to force dp_usb_type_c and tbt fields to
>> >     be zero instead of adding a
>> >     intel_bios_encoder_is_dedicated_external() check in each of their
>> >     respective accessor functions. (Jani)
>> >   - Print info about dedicated external ports in print_ddi_port().
>> >     (Jani)
>> >=20
>> > Bspec: 20124, 68954, 74304
>> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c     | 54 ++++++++++++++++++=
++++++++-
>> >  drivers/gpu/drm/i915/display/intel_bios.h     |  2 +
>> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 +-
>> >  3 files changed, 56 insertions(+), 3 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index 852e4d6db8a3..1487d5e5a69d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2530,6 +2530,36 @@ intel_bios_encoder_reject_edp_rate(const struct=
 intel_bios_encoder_data *devdata
>> >          return devdata->child.edp_data_rate_override & edp_rate_overr=
ide_mask(rate);
>> >  }
>> > =20
>> > +static void sanitize_dedicated_external(struct intel_bios_encoder_dat=
a *devdata,
>> > +                                        enum port port)
>> > +{
>> > +        struct intel_display *display =3D devdata->display;
>> > +
>> > +        if (!intel_bios_encoder_is_dedicated_external(devdata))
>> > +                return;
>> > +
>> > +        /*
>> > +         * Fields dp_usb_type_c and tbt must be ignored when
>> > +         * dedicated_external is set.  Since dedicated_external is fo=
r
>> > +         * ports connected to PHYs outside of the Type-C subsystem, i=
t
>> > +         * is safe to force those fields to zero.
>> > +         */
>
>Forgot this: IIUC dyn_port_over_tc doesn't make either sense for a
>dedicated external port. IOW, a dedicated port/PHY is not enabled by the
>TypeC sequences defined at bspec/68954 and so for such a port/PHY the
>DDI->PHY mapping is always 1:1 and so the corresponding DDI can't either
>be dynamically allocated to different PHYs. If that's a correct
>understanding, dyn_port_over_tc should be also verified/zeroed out here
>imo.

Yep, there shouldn't be any need for DDI allocation for dedicated
external ports.  However, we would only be checking for dyn_port_over_tc
when doing the Type-C flows, which would not happen for a dedicated
external port.  Give that, do you think we need to add the extra check
here?

The main reason we are adding those checks below is because the VBT spec
marks those bits as "don't care" when dedicated_external is set.

--
Gustavo Sousa

>
>> > +
>> > +        if (devdata->child.dp_usb_type_c) {
>> > +                drm_dbg_kms(display->drm,
>> > +                            "VBT claims Port %c supports USB Type-C, =
but the port is dedicated external, ignoring\n",
>> > +                            port_name(port));
>> > +                devdata->child.dp_usb_type_c =3D 0;
>> > +        }
>> > +
>> > +        if (devdata->child.tbt) {
>> > +                drm_dbg_kms(display->drm,
>> > +                            "VBT claims Port %c supports TBT, but the=
 port is dedicated external, ignoring\n",
>> > +                            port_name(port));
>> > +                devdata->child.tbt =3D 0;
>> > +        }
>> > +}
>> > +
>> >  static void sanitize_device_type(struct intel_bios_encoder_data *devd=
ata,
>> >                                   enum port port)
>> >  {
>> > @@ -2668,7 +2698,8 @@ static void print_ddi_port(const struct intel_bi=
os_encoder_data *devdata)
>> >  {
>> >          struct intel_display *display =3D devdata->display;
>> >          const struct child_device_config *child =3D &devdata->child;
>> > -        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports=
_typec_usb, supports_tbt;
>> > +        bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports=
_typec_usb,
>> > +                supports_tbt, dedicated_external;
>> >          int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_=
level_shift, max_tmds_clock;
>> >          enum port port;
>> > =20
>> > @@ -2694,6 +2725,12 @@ static void print_ddi_port(const struct intel_b=
ios_encoder_data *devdata)
>> >                      supports_typec_usb, supports_tbt,
>> >                      devdata->dsc !=3D NULL);
>> > =20
>> > +        dedicated_external =3D intel_bios_encoder_is_dedicated_extern=
al(devdata);
>> > +        if (dedicated_external)
>>=20
>> Nit: the variable could be dropped imo, and would be good to print the
>> dyn_port_over_tc info as well. Either way:
>>=20
>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>>=20
>> > +                drm_dbg_kms(display->drm,
>> > +                            "Port %c is dedicated external\n",
>> > +                            port_name(port));
>> > +
>> >          hdmi_level_shift =3D intel_bios_hdmi_level_shift(devdata);
>> >          if (hdmi_level_shift >=3D 0) {
>> >                  drm_dbg_kms(display->drm,
>> > @@ -2751,6 +2788,7 @@ static void parse_ddi_port(struct intel_bios_enc=
oder_data *devdata)
>> >                  return;
>> >          }
>> > =20
>> > +        sanitize_dedicated_external(devdata, port);
>> >          sanitize_device_type(devdata, port);
>> >          sanitize_hdmi_level_shift(devdata, port);
>> >  }
>> > @@ -2778,7 +2816,7 @@ static int child_device_expected_size(u16 versio=
n)
>> >  {
>> >          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>> > =20
>> > -        if (version > 263)
>> > +        if (version > 264)
>> >                  return -ENOENT;
>> >          else if (version >=3D 263)
>> >                  return 44;
>> > @@ -3723,6 +3761,18 @@ bool intel_bios_encoder_supports_tbt(const stru=
ct intel_bios_encoder_data *devda
>> >          return devdata->display->vbt.version >=3D 209 && devdata->chi=
ld.tbt;
>> >  }
>> > =20
>> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios=
_encoder_data *devdata)
>> > +{
>> > +        return devdata->display->vbt.version >=3D 264 &&
>> > +                devdata->child.dedicated_external;
>> > +}
>> > +
>> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_=
bios_encoder_data *devdata)
>> > +{
>> > +        return devdata->display->vbt.version >=3D 264 &&
>> > +                devdata->child.dyn_port_over_tc;
>> > +}
>> > +
>> >  bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder=
_data *devdata)
>> >  {
>> >          return devdata && devdata->child.lane_reversal;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/d=
rm/i915/display/intel_bios.h
>> > index f9e438b2787b..75dff27b4228 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> > @@ -79,6 +79,8 @@ bool intel_bios_encoder_supports_dp(const struct int=
el_bios_encoder_data *devdat
>> >  bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_=
data *devdata);
>> >  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_en=
coder_data *devdata);
>> >  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_=
data *devdata);
>> > +bool intel_bios_encoder_is_dedicated_external(const struct intel_bios=
_encoder_data *devdata);
>> > +bool intel_bios_encoder_supports_dyn_port_over_tc(const struct intel_=
bios_encoder_data *devdata);
>> >  bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_=
data *devdata);
>> >  bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios=
_encoder_data *devdata);
>> >  bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_dat=
a *devdata);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/g=
pu/drm/i915/display/intel_vbt_defs.h
>> > index 70e31520c560..57fda5824c9c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> > @@ -554,7 +554,8 @@ struct child_device_config {
>> >          u8 dvo_function;
>> >          u8 dp_usb_type_c:1;                                        /*=
 195+ */
>> >          u8 tbt:1;                                                /* 2=
09+ */
>> > -        u8 flags2_reserved:2;                                        =
/* 195+ */
>> > +        u8 dedicated_external:1;                                /* 26=
4+ */
>> > +        u8 dyn_port_over_tc:1;                                       =
 /* 264+ */
>> >          u8 dp_port_trace_length:4;                                /* =
209+ */
>> >          u8 dp_gpio_index;                                        /* 1=
95+ */
>> >          u16 dp_gpio_pin_num;                                        /=
* 195+ */
>> >=20
>> > --=20
>> > 2.51.0
>> >
