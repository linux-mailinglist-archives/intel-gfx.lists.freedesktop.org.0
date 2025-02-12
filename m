Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A82E5A321D9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:14:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D84B10E815;
	Wed, 12 Feb 2025 09:14:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJU1agYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA4810E815;
 Wed, 12 Feb 2025 09:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739351644; x=1770887644;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dcOYcQhc1jKqlxymnjiBa5YN/Tc5p9D+iBZcWuTdGX8=;
 b=SJU1agYgfC00wJCcufkD7zkQocbb5Gu8x6t6AxnMqXN0kpNWXKTX7pWf
 jqg13wOlavprVR8gdz7ThVlEqVNYRNrEZRU7LpRMwjflhvNzJKO2Vi8c4
 kG63IVVqJpWAc2CbB4uhN1XWDk4y7SpddLUTMZQ2stVnVcoZGpf5eS0nX
 Y5uZ7Npq/BeTdWss8xiCiEYzC4cSFAphMQlDpqINm3v3OE6f57wX9TfWS
 0zjmjYLczLC/HhKcee/hfXvB9CSG3jvFCyF7PqmUsio0qZECFf8sCioda
 h4DYJYBqKrJhBnC8ejvSD4MUk33/MHpw0nfLsLa5oeVLW0/gIddo02emk w==;
X-CSE-ConnectionGUID: 0OSEl706SnGGdbxY+Bwxww==
X-CSE-MsgGUID: aYBD72vcTtyuh4yiLOCMeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43653458"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="43653458"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:14:01 -0800
X-CSE-ConnectionGUID: xtNuYbpkS4SCA1juUcU8yw==
X-CSE-MsgGUID: +upK3J8+R8CHnJNYyFKlVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="113275428"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:13:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Feb 2025 01:13:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 01:13:57 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 01:13:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U854IydqorD9OBlTjP2Cp0vWLbCyWRw/skvMXORqwUFvp37XLv25zM4JRhf5ITPYk8MpUiayy4VpzObJSPXbW9imz3ZK41z56FeegyAtOFX8S6lkgyzIfaQ6VR3ooiBryyZaAqZsZaisXJfOTMa2RXN7mtS5Ygoed8dAcrVkR8v15W+fLG1hMlYPD2EstfiMAz9G5EMzrYhJSHG/RCdpYVbPUR4973AKN/y+8Eij2ZOcWpuMi3Igz50XGfN8vMMs0gDgxKooCjeFti/VDO4V9LfPPfYonGAQVAljsbLY7/Woy2zxPgMg6IQLZhhToUHGUsc7jw1mXSrxY8V0V8z6RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dcOYcQhc1jKqlxymnjiBa5YN/Tc5p9D+iBZcWuTdGX8=;
 b=Zky/ibt8uX33lrLL69M5pZ9/kdT4pN91DwLqksLwGGI7KR81+Pg12OHPCV7vSYJ8MtGnB5ChpRS/jJXKKSG958jAinhEzFUyRQiM+Kwpo3RRMFc1gPsx+3piqszaH0w/4/5JETgzzAA7dcGekQkXbC2dWOPsS5O4p9wBosdxYEwijc+jgJ+XvoWhY1YHE/tN3biDvRNj+0cNdGs83HaQ54JziRnuMW19UjzHf5XVvSpg1xIRzyiOO8eNdsEsPWJgamUxrjGV8DISTIhZM2PgBLEVtZNJJzbdZErsoz7QUt7zG5bTE6xALzM6LDdB90opux2bATXNBy4V9vxsbHMDgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SJ2PR11MB8470.namprd11.prod.outlook.com (2603:10b6:a03:56f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 09:13:54 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 09:13:53 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdnJy?=
 =?utf-8?Q?:_Fix_DSB+VRR_usage_for_PTL+_(rev5)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS92cnI6IEZp?=
 =?utf-8?Q?x_DSB+VRR_usage_for_PTL+_(rev5)?=
Thread-Index: AQHbfPMJjy7dm2X7tUGFsWxSVk1cNLNDUyFggAAQpLA=
Date: Wed, 12 Feb 2025 09:13:53 +0000
Message-ID: <CH0PR11MB5491BB7F033D00B0EEAEAB86EFFC2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <173932608693.1123756.9647793676727112332@b555e5b46a47>
 <DM8PR11MB56554477F9A8D7391566BD46E0FC2@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB56554477F9A8D7391566BD46E0FC2@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SJ2PR11MB8470:EE_
x-ms-office365-filtering-correlation-id: e50c3f75-5c85-4a6e-0559-08dd4b45926c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OFM5ZXh0VU1OWkVkWVVUNUhMdXZJVFc5bXNWRlpFQTk1dHFvcldCNldTY1Q3?=
 =?utf-8?B?NWNQT05HR01rMkdieDBtOWh1MytPbVcyazZKcS9nZ091d2xrOVc1V3hqRmJx?=
 =?utf-8?B?cFp6TDJrZzZUMFhNUjZaRDByWm00SERWUW5KUzR5MUkyNFVNNjFTcnF1ZS9q?=
 =?utf-8?B?YTlKUU1MNnBOekhoSmViT2d6bUt2VTdBcEI0MCtPUXZYd1NwZFE1UXRIUUd4?=
 =?utf-8?B?S1lqbkI2UnJKZ1NlWm5QV20wZEVrMEZsQkVVc1U0Qmt2N3NsZ1lScmNsNlJ6?=
 =?utf-8?B?MURHaEczTEExbXZBOVlpTmtJODl2VjMzU1pVRmJEOFlvWHNIVTZWcDdMaUhU?=
 =?utf-8?B?Z3phWVk5NzJDWnQ0L1NoSXc1WlAzdnNEUHdWMlJqT2hLQnplSWtEMHQ2Qm9Y?=
 =?utf-8?B?RVR2TXBsdG1GN1FORVc2REZvMFlyK0d0T00vOE0zeE9qcnkzYTFaK0JNOEE2?=
 =?utf-8?B?NmxMOGh6MWNtTEQ3TjlMYi9rMUE3WUlreU8rU0pzODdLYy9UeDZsSXduZWhO?=
 =?utf-8?B?NTVBQjBiR0lLUWZqSVhYUEQ5bE8yckVIVjJBZUxWaXRiZnY3enowKzBFcnAz?=
 =?utf-8?B?dnZjM1U4TXVTOVRpZ1E2dE5pTlhwcFhUREJydHJweE1Nc2RoSnBlS1FCN2I2?=
 =?utf-8?B?MTZ2TTNXejZ2Q0E2UUN4Rlk2TXBJdW1VMXA5bGFuWnVBOTdsRmVWSXQxa3RT?=
 =?utf-8?B?T2VmeTVycjRmZnloU0x1TXB3RUM3amF2aldFZFVScEIxcHVIYUs2Z25VV2Vo?=
 =?utf-8?B?SU9FcnVvbjFhWkFPdTlseThxVHRGb041amxSeVJqRHBoMkg5OHNmeHhLVFcz?=
 =?utf-8?B?UTRaR2tkaC9yclR2SUdud2g2OGlnQ3dEMGJwa1djRlBLS0xnbm9HWitSb3NZ?=
 =?utf-8?B?L0dnYkJtYng3S2p5SE9Tclp2NTJ0K09sMWxnWVJ5L2txREZrS3NaM2UvTTdP?=
 =?utf-8?B?MnppbHRnNTBiV3dZekFlS1Zvd3BzSDhZWTVkaHpQRllmMG1SWFlaUFJ4Y0tB?=
 =?utf-8?B?UzRaK0ptUjVKdmRSa0JveHhiQWVXenBRVUdZZzdxS0RCZE44Y3J3NjRlNzJK?=
 =?utf-8?B?ci9CcHIrc1VObktEa1lSNzJ2WDFPQkRoS3Zzbmk2d0VxRFRGaFlxLy94by9K?=
 =?utf-8?B?WUk0M0c2RkRTeUs0b0pGZ3dVUGM0MkQvMXZVWlg0WkNOY21abjlXQ0lwZjZI?=
 =?utf-8?B?VEwxbG9aMENDWThPTERUZEtId2w5cXg2UUljNldSTGZHZnJnN2s1VXZKS2tJ?=
 =?utf-8?B?NXdWcktZQi8ra3gzTDAyeisvWkNpMWRJZ29xbXlaQ2RsWEtJeWxJVkNHNWF4?=
 =?utf-8?B?Qk5nRStpUVNhQXpYZ2tTbTZsZkdPTDNRclhzSENNOGkxck9CYzNOZ1lwSXAw?=
 =?utf-8?B?blpYQlRRTVVoaVFuRUFhWk8vWld6eVNrNmhRTnZ2QUF6QWNJZ09LM00wUm5O?=
 =?utf-8?B?YU5HQjJrOTVVb1JzdVhqMVIzS0tjSGUyMmZJMHZJbzd1VGRIUTk2MmhTbkJT?=
 =?utf-8?B?c1NxVmVDZjIwekdKazJSZzg1a1pYK2FpQ05qNDNVSmorQi93am05d0RwdWtB?=
 =?utf-8?B?RUt6Vjl4R0EzYW8rUVlZS2QzYW1DcWlmelR2am05WnUwWDk1WTh3ZzlPeTVP?=
 =?utf-8?B?YmRHa2R3Z3NBbExGdWlWcytnVjVqSE9TOGRMUWp4T0lSc0dTUk9xOVlxWjlZ?=
 =?utf-8?B?QkdIYnlseFRHdW1xNXBhY3gwS2h6TmluK0NteC9JdVhrNlFTYzZwalZzUEZw?=
 =?utf-8?B?TGt0MXlTVnEyZU1UemVTTE82ckEyWmtuclh2QzVBbnNUdWJxbGg4cGJUNGth?=
 =?utf-8?B?dWpNYSt5bkNadWxBSEx1UUVxa1dhR0hmWGlpVnZJak1pa2pRYW1VeTVWT3Yw?=
 =?utf-8?B?QmIwYy9JS3RqVytUWFZrS1gvcTNwYWdpUFdVbkw0UHFkZmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(13003099007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlNOKzF2dXZja1lpclRYT29Bem5jM1ppUElqSEVjNmJUNkhVWWFPMDVvbG1O?=
 =?utf-8?B?NG9QUEJySHhobzNjQXdmV2wvMkIyK21JL2tDRlJWcHMzbEVoV2xiZXV2Q0Fy?=
 =?utf-8?B?WG0xaUlFUDE5ZUo0Um9ydGZvTXVMYUxCbGZHRzUwMlhDSzJoNHpJdlZPRUgx?=
 =?utf-8?B?Vi9JOEd5M2tBTXhkdGFaT01mdTdmR0pQWm1ULy9pb0NXSzNGZmViNVg3L1d1?=
 =?utf-8?B?RnVXMmRsbHhlVzdzQndmWEVXRzhsQlVlM0hHc3UvRTRDM2VCZENLbkN1TkRV?=
 =?utf-8?B?U0hLSndWQkVteHhxMDcrQ3ZwOUFOSnpkT3R1bjV4YkZaU3pWSlA1RkdxQ1lK?=
 =?utf-8?B?U0ZSVDl3OXBLbUJTK2NNSXRXOGFyblVxNUNZbFdGcGx2RFFTNXV1K1QwcnBQ?=
 =?utf-8?B?NFBZQWw0Y2dmV0ptRTIwQTJrLzVSbXJGaENYbDJ3UDZNdlkxcnZWZzVwR09D?=
 =?utf-8?B?b3Fka0FpQmJsSkJXTkgrUXVPRzNpOWp5V3NCY0tCSzRRWUlzR25UYnN4RTl0?=
 =?utf-8?B?VFRmb2NSaHpNaWw4aGFaRHByTWZHZ00vMDZ4RDcrZlhCSUtBRG5qV1RIZWhy?=
 =?utf-8?B?L3hObmRLZHUvTE1EYnNqd1JWSmQ3STN4ZGZ5MDFPcmdIMGN2dmZ5ZHc2alh6?=
 =?utf-8?B?VldYU2U0UFZLeVRQZmUyY2pTQm1Bc0dUbThmUS96WHZPNVBHTUwvMUowTTkx?=
 =?utf-8?B?d3RYenFqYmFrRnhGQWkwQ1c5U1V5TE9xSU4zQ2VSQThCOU5XR2xVaWhkNTI3?=
 =?utf-8?B?TmtmeUxKN1YwR2hQNThYT3poRmdsZnpNUitidDVDTUtLajAwak9rcENnc0Zl?=
 =?utf-8?B?Zk1UNmlIRXVQM0MyRTdvKzRjaXVNRlQveldiQ0V3V0xzdHNnb3FONzJMYmVU?=
 =?utf-8?B?bXNNVEJvWDhiRzM0YTF1S09reTRHeitNVlJJMEZON1BrUWdhcTZiZ25vQ2px?=
 =?utf-8?B?ejFhT1FhVEJJcGJ5YndpOUlsWlAwb1htdmFIVXE0VFNCWThUUkZiWVdZOFhI?=
 =?utf-8?B?RWlraFZ3NWFzZHI2aFVZaDNFTWRWSys3Qnd1bUhqV3ZRTDYwbEwxejhTdVBz?=
 =?utf-8?B?SjNQOHlyeTcxOGp4eFlUbXIydTUvTEQ1b3FLWVFtMUZ2TE1pYS9VdHdHUFlR?=
 =?utf-8?B?ZjBBQ2MvejVYYnhxeStWcHk2MnBJZ1dXVyt0VzdIaGgyUUttNTN6SWlTdXNE?=
 =?utf-8?B?cnh5NmxycnRpSnJLTDBNWjhnT3F1d095MitGbHNvTW1IeURWL0c3MkxtV3FU?=
 =?utf-8?B?L2FzT1k3RlFZczZkUWdnWnU2RmhSWVU4MkpBTitxL0ErclhaL0RBQVdMcVhB?=
 =?utf-8?B?VHlYTC9HM2l1eXpUK0hTRG01aWZKekdXMWFRaDVvTWc2cEM2Z2NMVzZZUlZG?=
 =?utf-8?B?K0xiOGV3VXlQbjFpVmdjNDlXZ1BzSHhveUpZdHh4WmNhZWJXQWlzR1BSZ1U5?=
 =?utf-8?B?bTVPc3Y4dEFGNHRNMnBJUVo3dzhSK296YU5RZE1QTDRRL1hwWGdIaDRmS3Fw?=
 =?utf-8?B?V2FNVmlDZmo1SGtHb3JZQ2xzQ0dMd3h5dG5zRzZVM1l1T2lVZDE0cG9WTDk2?=
 =?utf-8?B?WWZJRUVra015OGZaQ1pUUFJxdWxyaFJaNldLUWV1TWcvbFh6T1BJOFFuRWFr?=
 =?utf-8?B?YmprVFhIT2hHaWFZQTgydmc5ejAzVlY5ZUFudFdvT1paZ2FFeDJQYVdkVURF?=
 =?utf-8?B?RGJwUWVrWXhUQ3NpMW03aTRLc0JURXR0UnBFNTVhRUlwTTZWVkxtMUNTWFpP?=
 =?utf-8?B?TlppbzhzcFN6ZnBmS3EzK05xQ0M1VUJoR0V6ZTJRdDgzOHd2SXBBSi9DMmM1?=
 =?utf-8?B?V0JlZnozS053K3VPbkRnd2tESFV5U25zR2pncElLbVlDaWlDK1BkZmxycGor?=
 =?utf-8?B?ZG1paWlNTXh5WDB0cEIrQUZXM3huempNQWhuT1QzTUZpTjZFdWt5Um9QNzZW?=
 =?utf-8?B?aVFhQlRLMWhmNXVSb01SVWhWMlF0MkhYa3JuSkNDcnY5TytFYzMwZzlRdDNs?=
 =?utf-8?B?V2hoNld0Q3J2ZmdwMmJob0V1bXhtdEhoaEMzK3k2UHRyZW5xSWc5WWpraEJy?=
 =?utf-8?B?QTlJdzJBOGFzREJKUHFwVE1hREk3K1cxUC9lQXZQdFRhMUJ1N3d4eUpFRUto?=
 =?utf-8?Q?cIwnfGShGyOxjsJqn+e25p0Cj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e50c3f75-5c85-4a6e-0559-08dd4b45926c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 09:13:53.7429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8WqlGLl2K4c75yurcG5P7j7T4gpl4KG6j2NotvUSW0fkQWx3hssRu5dXCCkdtf/17e4KtoLAHcHEXdq5JdnHcJCVnEZa76T2dWCymjc/B9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8470
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

SGksDQogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDQxNTMvIC0g
IFJlLXJlcG9ydGVkLg0KIA0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCiANClRoYW5rcywN
ClJhdmFsaS4NCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1p
bmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVo
YWxmIE9mIFNhYXJpbmVuLCBKYW5pDQpTZW50OiAxMiBGZWJydWFyeSAyMDI1IDEzOjUwDQpUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+OyBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KU3ViamVjdDogUkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdnJy
OiBGaXggRFNCK1ZSUiB1c2FnZSBmb3IgUFRMKyAocmV2NSkNCg0KSGksIA0KDQpTZWUgY29tbWVu
dCBiZWxvdyBhbmQgcmUtcmVwb3J0LiANCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zz4gT24gQmVoYWxmIE9mIA0KPiBQYXRjaHdvcmsNCj4gU2VudDogV2VkbmVzZGF5LCAxMiBGZWJy
dWFyeSAyMDI1IDQuMDgNCj4gVG86IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L3ZycjogRml4IERTQitW
UlIgdXNhZ2UgDQo+IGZvciBQVEwrDQo+IChyZXY1KQ0KPiANCj4gUGF0Y2ggRGV0YWlscw0KPiBT
ZXJpZXM6CWRybS9pOTE1L3ZycjogRml4IERTQitWUlIgdXNhZ2UgZm9yIFBUTCsgKHJldjUpDQo+
IFVSTDoJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDQxNTMvDQo+
IFN0YXRlOglmYWlsdXJlDQo+IERldGFpbHM6CWh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDQxNTN2NS9pbmRleC5odG1sDQo+IA0KPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNjExMSAtPiBQYXRjaHdvcmtfMTQ0MTUzdjUN
Cj4gDQo+IA0KPiBTdW1tYXJ5DQo+IA0KPiANCj4gRkFJTFVSRQ0KPiANCj4gU2VyaW91cyB1bmtu
b3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0NDE1M3Y1IGFic29sdXRlbHkgbmVl
ZCANCj4gdG8gYmUgdmVyaWZpZWQgbWFudWFsbHkuDQo+IA0KPiBJZiB5b3UgdGhpbmsgdGhlIHJl
cG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMgDQo+IGlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0NDE1M3Y1LCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRl
YW0gDQo+IChJOTE1LWNpLQ0KPiBpbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93
IHRoZW0gdG8gZG9jdW1lbnQgdGhpcyBuZXcgDQo+IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gRXh0ZXJuYWwgVVJMOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUv
aW5kZXguaHRtbA0KPiANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ0IC0+IDQzKQ0KPiAN
Cj4gDQo+IE1pc3NpbmcgKDEpOiBmaS1zbmItMjUyMG0NCj4gDQo+IA0KPiBQb3NzaWJsZSBuZXcg
aXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBo
YXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiBQYXRjaHdvcmtfMTQ0MTUzdjU6DQo+IA0KPiANCj4g
SUdUIGNoYW5nZXMNCj4gDQo+IA0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiANCj4gDQo+ICoJ
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndWNfbXVsdGlfbHJjOg0KPiANCj4gCSoJZmktYnN3LW4z
MDUwOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9D
SV9EUk1fMTYxMTEvZmktYnN3LQ0KPiBuMzA1MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd1Y19t
dWx0aV9scmMuaHRtbD4gIC0+IEFCT1JUIA0KPiA8aHR0cHM6Ly9pbnRlbC0NCj4gZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDE1M3Y1L2ZpLWJzdy0NCj4gbjMwNTAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUBndWNfbXVsdGlfbHJjLmh0bWw+DQo+IA0KU2VlbXMgdG8gYmUg
a25vd24gaXNzdWUgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5l
bC8tL2lzc3Vlcy8xMzY1Ng0KSSB3b25kZXIgd2h5IG5vdCBwYXJ0IG9mIGZpbHRlcnMgPyANCg0K
IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTQ0MTUzdjUgdGhhdCBjb21lIGZyb20ga25vd24NCj4gaXNzdWVzOg0KPiAN
Cj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiANCj4gDQo+ICoJaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+IA0KPiAJKgliYXQtYWRscy02OiBQQVNTIDxo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxMTEv
YmF0LWFkbHMtNi9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgLT4gDQo+IEZB
SUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NDE1M3Y1L2JhdC0NCj4gYWRscy02L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWw+
ICAoaTkxNSMxMzYzMyANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkx
NS9rZXJuZWwvLS9pc3N1ZXMvMTM2MzM+ICkNCj4gCSoJYmF0LWRnMS03OiBQQVNTIDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxMTEvYmF0LWRn
MS03L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWw+ICAtPiANCj4gRkFJTCA8aHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ0MTUzdjUv
YmF0LQ0KPiBkZzEtNy9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgKGk5MTUj
MTM2MzMgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEzNjMzPiApDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+IA0K
PiAJKgliYXQtdHdsLTE6IE5PVFJVTiAtPiBBQk9SVCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NDE1M3Y1L2JhdC10d2wtDQo+IDEvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sPiAgKGk5MTUjMTI5MTkgDQo+IDxodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE5PiAgLw0KPiBp
OTE1IzEzNTAzIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0NCj4gL2lzc3Vlcy8xMzUwMz4gKQ0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0
X2NvbnRleHRzOg0KPiANCj4gCSoJYmF0LXR3bC0xOiBOT1RSVU4gLT4gQUJPUlQgPGh0dHBzOi8v
aW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQxNTN2NS9i
YXQtdHdsLQ0KPiAxL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfY29udGV4dHMuaHRtbD4gIChp
OTE1IzEyOTE5IA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tl
cm5lbC8tL2lzc3Vlcy8xMjkxOT4gKQ0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdv
cmthcm91bmRzOg0KPiANCj4gCSoJYmF0LWFybHMtNjogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTExL2JhdC1hcmxzLTYvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sPg0KPiAtPiBETUVTRy1GQUlMIDxodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ0MTUz
djUvYmF0LWFybHMtDQo+IDYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
PiAgKGk5MTUjMTIwNjEgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxPiApICsxIA0KPiBvdGhlciB0ZXN0IGRtZXNnLWZhaWwN
Cj4gDQo+ICoJaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2Vx
dWVuY2U6DQo+IA0KPiAJKgliYXQtZGcyLTExOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxMTEvYmF0LWRnMi0xMS9pZ3RAa21zX3Bp
cGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy0NCj4gZnJhbWUtc2VxdWVuY2UuaHRtbD4gIC0+
IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNo
d29ya18xNDQxNTN2NS9iYXQtZGcyLQ0KPiAxMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJs
b2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sPg0KPiAoaTkxNSM5MTk3IA0KPiA8aHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTk3Pg0K
PiApICszIG90aGVyIHRlc3RzIHNraXANCj4gDQo+IA0KPiBQb3NzaWJsZSBmaXhlcw0KPiANCj4g
DQo+ICoJaWd0QGRtYWJ1ZkBhbGwtdGVzdHM6DQo+IA0KPiAJKgliYXQtYXBsLTE6IElOQ09NUExF
VEUgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8x
NjExMS9iYXQtYXBsLTEvaWd0QGRtYWJ1ZkBhbGwtDQo+IHRlc3RzLmh0bWw+ICAoaTkxNSMxMjkw
NCANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0K
PiAvaXNzdWVzLzEyOTA0PiApIC0+IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDQxNTN2NS9iYXQtYXBsLTEvaWd0QGRtYWJ1ZkBh
bGwtdGVzdHMuaHRtbD4gICsxIG90aGVyIA0KPiB0ZXN0IHBhc3MNCj4gDQo+ICoJaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gDQo+IAkqCWJhdC1hZGxwLTY6IElOQ09NUExF
VEUgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8x
NjExMS9iYXQtYWRscC0NCj4gNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0
bWw+ICAoaTkxNSM5NDEzIA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
OTE1L2tlcm5lbC8tL2lzc3Vlcy85NDEzPiApIC0+IA0KPiBQQVNTDQo+IDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDQxNTN2NS9iYXQtYWRscC0N
Cj4gNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+ICArMSBvdGhlciB0
ZXN0IHBhc3MNCj4gDQo+IA0KPiBCdWlsZCBjaGFuZ2VzDQo+IA0KPiANCj4gKglMaW51eDogQ0lf
RFJNXzE2MTExIC0+IFBhdGNod29ya18xNDQxNTN2NQ0KPiANCj4gQ0ktMjAxOTA1Mjk6IDIwMTkw
NTI5DQo+IENJX0RSTV8xNjExMTogNzYxMjBiNjdhM2Q1ZTdhMzhjYmM5MmZjMzk4NDYyOTcxMzBm
YzZkMCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4g
SUdUXzgyMjg6IDgyMjgNCj4gUGF0Y2h3b3JrXzE0NDE1M3Y1OiA3NjEyMGI2N2EzZDVlN2EzOGNi
YzkyZmMzOTg0NjI5NzEzMGZjNmQwIEAgDQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2dmeC1jaS9saW51eA0KDQo=
