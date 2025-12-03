Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1C2C9F670
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 16:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B73310E8AF;
	Wed,  3 Dec 2025 15:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyqE2Bwd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7E310E8AF;
 Wed,  3 Dec 2025 15:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764774798; x=1796310798;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=iQ2qGsEb6AcubN/xxcyz/Hf6znA8YTMYgyjK3mDm5LU=;
 b=lyqE2Bwd/6/nf9KJpzt5XpR+iXXu0J2rrETNcuOYd4fkdVnAXs+oCPW0
 cTl8LjLVyxLdlCHTUgm3F291bFp+fkX88DvIFA/fKmbYVwhbx2hd+YB7z
 cKzDJsKKrkxgmP/6Ldro2BgZpTMs4apSJK3N7+y+Ie/m5ryhHhBQrY34A
 Q9JKMX+OVvi6cRTJVouwEKJu9bArySxoa2F/K4/UfqNxFOEskGmsM3JmA
 HKdcY58xrA+A3344xSWUPerzJb3Bfl3zXTglQZeROy8y0rGG448xARF04
 OV0kusUjWN/0PJmxTLsF7dtcxzrfBabAsJTVj7Q3wX3gmYxSxdGH56BiT w==;
X-CSE-ConnectionGUID: EZp90jLaRHqC5UpjUPjg0g==
X-CSE-MsgGUID: tAgIr1c0TueVMoUZV07xoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66492418"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66492418"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:13:15 -0800
X-CSE-ConnectionGUID: 6w7Eb9YFRBSYbj4SfTql2g==
X-CSE-MsgGUID: DW+4whaxRhuHZXiq6Pt71g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194526334"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:13:15 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 07:13:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 07:13:14 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 07:13:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nh52Q7onkj//RJKPKmZf6vuDlC2kp/n7Ty/QOxJAkd/hJv1jna0aO5Zcvl5lCkFfjtrMri5xaJgHxOm5AMRXzjoPa29tvE1NkaScuNv+5+kqc/l4zXGrYz2VKmsLfdGi+Nx3mGXiFLBuH/gWdBiNUwVq8WZ/PdwWLgBpXr3VjZRnQB1UEAf1ny8CazLCRImdrFdMM1jDil+qToCWbDGG7mqyBmTLkRPKI2COx2Y05/UMl7B3TrtW/BtIHwN33YhbNznxMJt/4LNsdZtmCPd53MnnaHwQHjfdhEaB+k6WLDZfbHlQcAhiD33uO0qPXNiOdWAY57xlLp6gTefviySMDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iQ2qGsEb6AcubN/xxcyz/Hf6znA8YTMYgyjK3mDm5LU=;
 b=BEreNz9OXkszsnzOXeE78Md+rJByacQL5MFPzrBeIaVJNeMpws0eteIFiRK8/ETA2/onbI+SvHR0jf1Yr2uaCoLvl+EwgsaHbx7UHzwQUokRq8c8aOsQaifZHEbobaQjdyLaX8KzKioF+RNl/+O0qnK7Il7zErYeogO66SpZSfX79b2CjVt6uARxeF8D59MnH8vCzJsgWZXo27eTqwg6ezyscbCl7EDFQw/cBBBryRhIt8LNbToGkp+3XhZYYBx0cvo7lrHDW1tgswhp0HljhA66YoH8bAxEfcSumQiHeY71g/h5gI+Rq0bRaEH9YIECNoHCMG1LHM5NQJMA4H679g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CYYPR11MB8357.namprd11.prod.outlook.com (2603:10b6:930:c5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.9; Wed, 3 Dec 2025 15:13:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.003; Wed, 3 Dec 2025
 15:13:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Thread-Topic: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Thread-Index: AQHcYsX3eH13XTlaVUuD+7mgCXSyxrUP6iSAgAAKFQCAABOLgIAAAVqA
Date: Wed, 3 Dec 2025 15:13:11 +0000
Message-ID: <d1465eae2faf7545fbb16e8038b802f981606274.camel@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-3-jouni.hogander@intel.com>
 <aTA5icuJ6UeHdH6g@intel.com>
 <ccbbcdf01c45dba368a8b98cd1fc19ffc90aa0f1.camel@intel.com>
 <aTBSYy78qNjFoOOt@intel.com>
In-Reply-To: <aTBSYy78qNjFoOOt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CYYPR11MB8357:EE_
x-ms-office365-filtering-correlation-id: bad605f9-8df1-4a00-84f3-08de327e7919
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bDg4d3hGSFRxQ00wQ0tWQlZmanpYWnF4d09GRzg1VTlSajZBN3RFd3lmNW9J?=
 =?utf-8?B?MXZkaGZpOHdhdmtndEcyblhDZ0hsV2dsdTQ1SjdHelpPemxBWElReTZxOTFo?=
 =?utf-8?B?dnV0YnhhODZzbEtjQ3ZhSkthbzZJWmM5VDE1c0FOV05KNHMwdmtRVEFCMFcw?=
 =?utf-8?B?Q3Q5RnNSQjNTQTNFb3g2ano2RFhzWUo1SnRJWUI1Mis3YlVVSFV5WDIzVVJQ?=
 =?utf-8?B?V1dXN0pUUkp5NVAwaDZTQXlXellNaWhlQWsrMVZRNzZGMm9iNmVaVkdGSzhL?=
 =?utf-8?B?UnozRU8yVmtxNCtDRTdaMFp2SUxEY3V1RFFGL00wNjNSeWNJdGt3YTVBSmhD?=
 =?utf-8?B?ZUhidU1ib0Frbk9JQVBFWmthTjkveFVzZUVhc251OCtBZWlINUhxMlNNK3l5?=
 =?utf-8?B?MzNXR2R6WUlEMFo3VE43a2cxNTVKdFRaQmJUZHptL3ZRSTdLeFV6WVJzekxU?=
 =?utf-8?B?WWJZSjZsdG03RDd3ZzJjYTZ6aWppRzE2RlVZWFdyZDNwUEtjRXdJRkxlbndG?=
 =?utf-8?B?MWc2Z2pkMkMwcFpPUU1rV3VaZ2prSXN4YUY3WjdQRXpMbHNDUWdJMlVDYWdu?=
 =?utf-8?B?Qlp0aTFIL25pZ1d0K2E1S1Qvdmw1STRvdjU1MjhFemxNLzJOR1dTUVhGMnB4?=
 =?utf-8?B?UUVXb2VEcFo3Q0U4NVh5MTJMTG12N0RrVm5ZVEpZcXdvWndobWwrMElqYlA1?=
 =?utf-8?B?L2NkMktjamdmUVp0MDJWRDltb05yVlpRZVoyZkgySzRhV1NlRDBOU1JvZEtD?=
 =?utf-8?B?Q1Jid1FWcGtXWXlIQkdFczk5SDQyVjFFaHorRUwxQ2F3c0FTRC9vTVVOZ3J0?=
 =?utf-8?B?MUowT2ZpOWNQRmUreFRFdXVNQW93UXdMTm4rZzZRTDVrUFJEeTQvbTZMOWFN?=
 =?utf-8?B?RGlHdW5SeVBCS1lDMHZCd3RSc1pSSEtIa05UYlY2N21kcWs0ZHovZlduTFNT?=
 =?utf-8?B?YytBUnMxc21NM3NmOC9qbXNpSlBramFkV3pneFRqUXpFSUdUOFFFS2V6Qkxz?=
 =?utf-8?B?Y2RrR1lnVVNIZUdOZjdvYzRFN1RRb0hsRlAwcEFBMWlXWm5SVGhlamQ0bjlF?=
 =?utf-8?B?K0NaQjZUb01VUWxrMnlVUkZrWXNGa3ZVMzE1MFh2V2RuZHNnR05KZWREUUJW?=
 =?utf-8?B?emwvQ3VZVHY5d2VjdmRaczFhaWhDL0tJU1Bwc2tWYVlMRStxVldxQTkvaHBW?=
 =?utf-8?B?TEphVTJqN01hTzNzbDFKVTQxaE1pWEFUakdVUG95OTBnZEdVVTNva2xrYUg3?=
 =?utf-8?B?Yks3NzdwUXRrdGJzUytVc1ZVRUNqeVdEREZQNm41OXNaRi93MTBMK1NYc2ZY?=
 =?utf-8?B?RE5IaEpPY0FmSWJlN2U3VXNUZGZDR0pNQlJORmpBQWRlMDZyOFhMVFJJK3Ru?=
 =?utf-8?B?QTdSU3Y5Q2hvc2R0WFRkTlo3aDY3NStMbk9yV1BXUkNmbmpuLzhNbStVVGYr?=
 =?utf-8?B?WE8vWGZxMHNzMEhQYTh5blVFTzFaN2lLbDk4ZEdrNHNPbSsrRVVEQk5QN282?=
 =?utf-8?B?NCthWlFLODhXZkR5djQ1Mk9wTzM1dEVBZ09rOWEwM29UQ2xGQkR5Q21MaFRV?=
 =?utf-8?B?eFlraTRaWkdKSzc4SWF0OUJDZHZER3FpWjh4SVlrWUt4eWRtTG84UUs2YmRL?=
 =?utf-8?B?NVZ2bmdYWjVmTkJxa3pZREdWWUI2L1JGMUNVS0M1eDBMb0FDOTFYem5SMVY4?=
 =?utf-8?B?TGpHNmJ1dG52YUZPWS9EWWlmV29jVmNPQ0w3ckszWTQ1djJwZ2dSUUFKN015?=
 =?utf-8?B?enNNYThpbWdCZFp6Z2Q1UDFvZUY0UUdJeHNqdW9vWUFhNm5WWVZlU2EwWlVZ?=
 =?utf-8?B?V0tTejA5UkhjWVBodEgzbW1wU0IvUE85S2p6NVpqeUVBaEh1YmhZVDdEbTVh?=
 =?utf-8?B?bXpXcjFnZG1uL0lBcTBjUFdtcUhwSnV2YW9lNmZvM1VScTZrcnR2SGowK3o4?=
 =?utf-8?B?cWZvVUg4ZDdnY1hPMEZ5ajV0aGlBM3lxRWdjSFZha1RMRkRqOVJaTHF3MThX?=
 =?utf-8?B?ZDZoUWxEd0tCRmowdFJYUFhCaVZZOXo4ZnZZRWFxVnFHYXZrUWlqL1M2QXVG?=
 =?utf-8?Q?EB5Zdn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWZXSi9KMzJjcjBvYVdoOWlJSC9pNVFnSlNrZzhXR1FZQkN5QjAyV29GNXBu?=
 =?utf-8?B?ZWhFblVIbE90NE1wRDFTSEtqRUxLRzdsTlp6b2ZiK25TM1dZN21RRHo3MThN?=
 =?utf-8?B?SjdhdnNieTBmcTRCbkJMZys4OFE0YW4yZUIyMDRUZFBXS1kvbmlYRExlSkph?=
 =?utf-8?B?S2N1UUp6b2d1YVU4TTJrVXNUQ1hqelg1UU0rM3AyTVpDbWMzTWUzOGpGVTlQ?=
 =?utf-8?B?K1IzQmJVQWxrekZvR3E4WlZFVk9nZDNIbzhLbDYwd294VStNaGtZRnBIb3I1?=
 =?utf-8?B?THpReEZOQkNiWk5ETk16L2NTdloyeWFRME9IOVJKQWxhcXNWeGRpZGdZK0pw?=
 =?utf-8?B?cVFEQitpeWlKUjNidFhNbTJ0bmVHVjUxNm05Ry8zbTJwQVcxTklTSlNSL2JC?=
 =?utf-8?B?eTZReXEzaGJZamJPVjQvZWpnS1VldzN0TFBlY25uUDFEa1JISXJVbGJzTHJX?=
 =?utf-8?B?R1hUZ1BFcmxpL3p1SlpaNmoyNmpGY2llNDc3c3NBR3pnd0E2bEMzQmRpeEtX?=
 =?utf-8?B?ZGtMZ3JRSytnSHFDQUFEQXBTYVF0aWsydWJINUVKUExqZVh1cHNzUW50Sk1r?=
 =?utf-8?B?Qk1wZlF1aTBQNi9lWDc0RXg4M0VMa2tyazg1V1NkMlFuS05vWUVnMDQyWnZT?=
 =?utf-8?B?OTJYdnBadTZKVlRHU2hJaXZzbnp4T1B3dzNsNkUvR2hWMm1vdTMzYUZkV2Ro?=
 =?utf-8?B?Z2xEUHkzMG13SmZJMXdHaXJBUEs4TkJnUU5acHhTaTVBT2Njd2dmbndOZXp3?=
 =?utf-8?B?bjVCSzczM2ZFMU5KZjhFNjR2VjVEVnVHRVBwdTRNVXB0ejIxQkpRWW9NRFlB?=
 =?utf-8?B?WVB5ZTl3dEF3Mlk2S1J4WGFlZVVnUkVnU1Z2SCtDZFlGUEhJRHR6blFKazh5?=
 =?utf-8?B?ZWRsTC9sOURHcTZHOVBOdjVtRkozaGhvU0pHOCs0b3R0TXdFZjZhMEd6bUZn?=
 =?utf-8?B?OXRsaVFxWXd0R3lVdnFlOGJGdEJqNUZiR1Y1QlpSeE5SV3JYOHN0MmpOeVNx?=
 =?utf-8?B?aTJYOWN5UkhuMlhra1RsMzZNL0dHRk5TRnFRSXZVTjhvWGl5amVEY0F5ajRl?=
 =?utf-8?B?Vm54eGZXWjBnRk5YUllaUFF0Z1E3U1NuNmNYNkVybStlRkJMR2dTSGdVclUz?=
 =?utf-8?B?U3J3UG9YNFg4VzVCMkRQMThmQUNLQUN0WGpBVUxrQnB5bVZjUXo4U0VwMWJW?=
 =?utf-8?B?Rm8yelV1Q3FTSS9Td05BcFl5dDlEUlp0OHV4Wm9WQ0hlQkNtUWd3U0k4LzhC?=
 =?utf-8?B?Wlp0bVJqT0s3STZwdUVqdFBRUFBYVk9WQlhyNUthVU1kR01iOExLVy9MYUg4?=
 =?utf-8?B?SjdCNkRUdVNNRFZGdHpaQXAyeURXc1ROU1ZLZFpDTVNWeWhST3hXVkJIdlVq?=
 =?utf-8?B?TFdKOHVnUDhOQ3RZVTFnVmZxeEVXYnRla3VGK1J5WHhEVHZiTlpJVllLMi9Q?=
 =?utf-8?B?M1ZHWEFpVHNSeWNURkxqOFQzajlTVnZYWHlKQVYxQlkxTmI1Rllmc3BybnFj?=
 =?utf-8?B?dkRrTlNyQlVoTUExVVVJbWdWQnZCVnNOclJGMjVvTUR1RzJKYWI0d0ZFRWh4?=
 =?utf-8?B?RHE1MjlwYWw1bzFzUjBvQXFuZVRNYnpaYjdGdUlqbWVRY3RSaEdndlA1eFlT?=
 =?utf-8?B?U3JKQVl2d0NCL09YNlNYa2c3THA1UjZKcy9mbXd6UFlHanZWV0Q5N2o4T3FW?=
 =?utf-8?B?UHZ5QXA3SFdmM1l0OHl1ZTAyeXBnTWo4ZWJ3M1VENDBqY2Frc3V5dGFlcTRD?=
 =?utf-8?B?ZXlZVnVzdm1rd28raFBrdGp3SGtMWnZML0pOeGNabUtseGxyTzRmNlpWQUN4?=
 =?utf-8?B?RFpkVnVzUmVVNmVFTTVObVR1Vzh0Rms2RXdXc2cxUlYxcmErbTFNNWlIaFBp?=
 =?utf-8?B?dFNIb2ttd3M4aXFjeU9NRmlGN09YdTk1ay9kKzBTMzVIZnVpQklQeVhSN0lQ?=
 =?utf-8?B?S05uaFFMT0FvWVZpUncxYmJrZmRySmdrL0hUM2EyZk8vV1BIeWdPTnlqU3NN?=
 =?utf-8?B?QVd4bzdoTEpKL051dWUwWWY2VTN2dDdwZi9ta0tTRXl5bDgyN1pkdDh1MVNv?=
 =?utf-8?B?Q3k0K2hiMVIydFRCemtLSFhmb1hqZlR3aG1zRmZGa21neTlVUnc5T08vSGxu?=
 =?utf-8?B?R3o5SGRXR2dCMHRCeWZXeUJPenRaSmNXeGJ2REJibEpSK3hHMXBzYUZlUUJP?=
 =?utf-8?B?Z2ZtcExpUTlrQkNINGY0aERSbGszRm5EQmJKbjNyeXh5Skt1RGtWM09LbnRr?=
 =?utf-8?B?WmpYcHFwalJxYUNHOTU1ZWswUld3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8BC246A780E6994B87EEFCF2B97E219B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad605f9-8df1-4a00-84f3-08de327e7919
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2025 15:13:11.1655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9mGrkXBl64PfxVwzYBk9jo7aV3dKRwGlt/DZy5bwQtFgjBs5c1bnL4a/FCv1nV866wJpqH1fGn4zfiHUuR8/UjfaGkAzXFqgYF1JPKa8HuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8357
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

T24gV2VkLCAyMDI1LTEyLTAzIGF0IDE3OjA4ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDAzLCAyMDI1IGF0IDAxOjU4OjIzUE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjUtMTItMDMgYXQgMTU6MjIgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIE1vbiwgRGVjIDAxLCAyMDI1IGF0IDAzOjI0OjU2
UE0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gQWNjb3JkaW5nIHRvIGJz
cGVjIHNlbGVjdGl2ZSBmZXRjaCBpcyBub3Qgc3VwcG9ydGVkIHdpdGggYXN5bmMNCj4gPiA+ID4g
ZmxpcHMgYW5kDQo+ID4gPiA+IGluc3RydWN0aW5nIGZ1bGwgZnJhbWUgdXBkYXRlIG9uIGFzeW5j
IGZsaXAuDQo+ID4gPiA+IA0KPiA+ID4gPiB2MzoNCj4gPiA+ID4gwqAgLSByZWJhc2UNCj4gPiA+
ID4gwqAgLSBmaXggb2xkX2NydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0DQo+ID4gPiA+
IMKgIC0gZml4IHVzaW5nIGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUNCj4gPiA+ID4g
djI6DQo+ID4gPiA+IMKgIC0gY2hlY2sgYWxzbyBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5l
cyBpbg0KPiA+ID4gPiDCoMKgwqAgcHNyMl9zZWxfZmV0Y2hfcGxhbmVfc3RhdGVfc3VwcG9ydGVk
DQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNTUyMjkNCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0K
PiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3MiAr
KysrKysrKysrKysrKy0tDQo+ID4gPiA+IC0tLS0NCj4gPiA+ID4gLS0tLQ0KPiA+ID4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkNCj4gPiA+ID4g
DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ID4gPiBpbmRleCAxNWVmM2I2Y2FhZDYuLjUzY2YyOTIyNDdkNyAxMDA2NDQNCj4gPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
IEBAIC0yNzI4LDEzICsyNzI4LDIwIEBADQo+ID4gPiA+IGludGVsX3BzcjJfc2VsX2ZldGNoX2V0
X2FsaWdubWVudChzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiA+ID4gwqAgKiBQbGFuZSBzY2FsaW5nIGFuZCByb3RhdGlvbiBpcyBub3Qgc3VwcG9ydGVkIGJ5
IHNlbGVjdGl2ZQ0KPiA+ID4gPiBmZXRjaA0KPiA+ID4gPiBhbmQgYm90aA0KPiA+ID4gPiDCoCAq
IHByb3BlcnRpZXMgY2FuIGNoYW5nZSB3aXRob3V0IGEgbW9kZXNldCwgc28gbmVlZCB0byBiZQ0K
PiA+ID4gPiBjaGVjayBhdA0KPiA+ID4gPiBldmVyeQ0KPiA+ID4gPiDCoCAqIGF0b21pYyBjb21t
aXQuDQo+ID4gPiA+ICsgKg0KPiA+ID4gPiArICogSWYgcGxhbmUgd2FzIGhhdmluZyBhc3luYyBm
bGlwIHByZXZpb3VzbHkgd2UgY2FuJ3QgdXNlDQo+ID4gPiA+IHNlbGVjdGl2ZQ0KPiA+ID4gPiAr
ICogZmV0Y2ggYXMgd2UgZG9uJ3Qga25vdyBpZiB0aGUgZmxpcCBpcyBjb21wbGV0ZWQuDQo+ID4g
PiA+IMKgICovDQo+ID4gPiA+IC1zdGF0aWMgYm9vbCBwc3IyX3NlbF9mZXRjaF9wbGFuZV9zdGF0
ZV9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0DQo+ID4gPiA+IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSkNCj4gPiA+ID4gK3N0YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRl
X3N1cHBvcnRlZChjb25zdCBzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2Ny
dGNfc3RhdGUsDQo+ID4gPiA+ICsJCQkJCQkgY29uc3Qgc3RydWN0DQo+ID4gPiA+IGludGVsX3Bs
YW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiA+ID4gwqB7DQo+ID4gPiA+ICsJc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZSA9DQo+ID4gPiA+IHRvX2ludGVsX3BsYW5lKHBsYW5lX3N0YXRlLQ0K
PiA+ID4gPiA+IHVhcGkucGxhbmUpOw0KPiA+ID4gPiArDQo+ID4gPiA+IMKgCWlmIChwbGFuZV9z
dGF0ZS0+dWFwaS5kc3QueTEgPCAwIHx8DQo+ID4gPiA+IMKgCcKgwqDCoCBwbGFuZV9zdGF0ZS0+
dWFwaS5kc3QueDEgPCAwIHx8DQo+ID4gPiA+IMKgCcKgwqDCoCBwbGFuZV9zdGF0ZS0+c2NhbGVy
X2lkID49IDAgfHwNCj4gPiA+ID4gLQnCoMKgwqAgcGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uICE9
IERSTV9NT0RFX1JPVEFURV8wKQ0KPiA+ID4gPiArCcKgwqDCoCBwbGFuZV9zdGF0ZS0+aHcucm90
YXRpb24gIT0gRFJNX01PREVfUk9UQVRFXzAgfHwNCj4gPiA+ID4gKwnCoMKgwqAgb2xkX2NydGNf
c3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzICYgcGxhbmUtPmlkKQ0KPiA+ID4gDQo+ID4gPiBXaHkg
YXJlIHlvdSBsb29raW5nIGF0IHRoZSBvbGQgY3J0YyBzdGF0ZT8gVGhlcmUgc2hvdWxkIGJlDQo+
ID4gPiBub3RoaW5nIG9mDQo+ID4gPiBpbnRlcmVzdCB0byB1cyB0aGVyZS4NCj4gPiANCj4gPiBU
byBjb250aW51ZSBrZWVwaW5nIENGRiBiaXQgc2V0IGlmIHByZXZpb3VzIHVwZGF0ZSB3YXMgYXN5
bmMgZmxpcC4NCj4gPiBUaGlzDQo+ID4gaXMgaG93IEkgdW5kZXJzdG9vZCBpdCAocGxlYXNlIGNv
cnJlY3QpOg0KPiA+IA0KPiA+IDAuIHN5bmNyb25vdXMgdXBkYXRlDQo+ID4gDQo+ID4gMS4gYXN5
bmNfZmxpcDoNCj4gPiDCoMKgIG5ld19jcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyAhPSAw
DQo+ID4gwqDCoCBvbGRfY3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgPT0gMA0KPiA+IMKg
wqAgY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwID09IHRydWUpDQo+ID4gwqDCoCAtPiBmdWxs
IGZyYW1lIHVwZGF0ZQ0KPiA+IA0KPiA+IDIuIGFzeW5jX2ZsaXA6DQo+ID4gwqDCoCBuZXdfY3J0
Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgIT0gMA0KPiA+IMKgwqAgb2xkX2NydGNfc3RhdGUt
PmFzeW5jX2ZsaXBfcGxhbmVzICE9IDANCj4gPiDCoMKgIGNydGNfc3RhdGUtPnVhcGkuYXN5bmNf
ZmxpcCA9PSB0cnVlDQo+ID4gwqDCoCAtPiBmdWxsIGZyYW1lIHVwZGF0ZQ0KPiA+IA0KPiA+IDMu
IHN5bmNyb25vdXMgdXBkYXRlDQo+ID4gwqDCoCBuZXdfY3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9w
bGFuZXMgPT0gMA0KPiA+IMKgwqAgb2xkX2NydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzICE9
IDANCj4gPiDCoMKgIGNydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCA9PSBmYWxzZQ0KPiA+IMKg
wqAgLT4gZnVsbCBmcmFtZSB1cGRhdGUNCj4gPiANCj4gPiA0LiBzeW5jcm9ub3VzIHVwZGF0ZQ0K
PiA+IMKgwqAgbmV3X2NydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzID09IDANCj4gPiDCoMKg
IG9sZF9jcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyA9PSAwDQo+ID4gwqDCoCBjcnRjX3N0
YXRlLT51YXBpLmFzeW5jX2ZsaXAgPT0gZmFsc2UNCj4gPiDCoMKgIC0+IHNlbGVjdGl2ZSB1cGRh
dGUNCj4gPiANCj4gPiA+IA0KPiA+ID4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiDCoA0K
PiA+ID4gPiDCoAlyZXR1cm4gdHJ1ZTsNCj4gPiA+ID4gQEAgLTI3NDksNyArMjc1Niw4IEBAIHN0
YXRpYyBib29sDQo+ID4gPiA+IHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBvcnRlZChj
b25zdCBzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiA+ID4gwqAgKi8NCj4g
PiA+ID4gwqBzdGF0aWMgYm9vbCBwc3IyX3NlbF9mZXRjaF9waXBlX3N0YXRlX3N1cHBvcnRlZChj
b25zdCBzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiA+
ID4gwqB7DQo+ID4gPiA+IC0JaWYgKGNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQg
Pj0gMCkNCj4gPiA+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9pZCA+
PSAwIHx8DQo+ID4gPiA+ICsJwqDCoMKgIGNydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkNCj4g
PiA+IA0KPiA+ID4gSSB0aGluayBqdXN0IGNoZWNraW5nIGNydGNfc3RhdGUtPmFzeW5jX2ZsaXBf
cGxhbmVzIT0wIGhlcmUNCj4gPiA+IHNob3VsZCBiZQ0KPiA+ID4gc3VmZmljaWVudC4NCj4gPiAN
Cj4gPiBJJ20gZG9pbmcgdGhpcyB0byBoYW5kbGUgc3RlcCAxLiBhYm92ZS4gQWx0ZXJuYXRpdmVs
eSBJIGNvdWxkIGNoZWNrDQo+ID4gYm90aCBuZXdfY3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFu
ZXMgYW5kIG9sZF9jcnRjX3N0YXRlLQ0KPiA+ID4gYXN5bmNfZmxpcF9wbGFuZXMuIFdoZW4gdXNp
bmcgY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwIEkgY2FuDQo+ID4gPiBkZWNpZGUNCj4gPiBl
YXJsaWVyLg0KPiA+IA0KPiA+ID4gVGhlIHJlc3Qgb2YgdGhlIHBhdGNoIHNlZW1zIHVubmVjZXNz
YXJ5Lg0KPiA+IA0KPiA+IE5vIG5lZWQgdG8gaGFuZGxlIHNlbGVjdGl2ZSB1cGRhdGUgd2hlcmUg
cGxhbmVzIGhhdmluZyBwZW5kaW5nDQo+ID4gYXN5bmMNCj4gPiBmbGlwIGFyZSBub3QgaW52b2x2
ZWQ/DQo+IA0KPiBUaGVyZSB3b24ndCBiZSBwZW5kaW5nIGZsaXBzIG9mIGFueSBraW5kLiBXZSB3
aG9sZSBDUlRDIGNvbW1pdCBxdWV1ZQ0KPiBpcyBoYW5kbGVkIGluIGEgc3RyaWN0IEZJRk8gb3Jk
ZXIgKGFwYXJ0IGZyb20gdGhlIGxlZ2FjeSBjdXJzb3INCj4gc3BlY2lhbCBjYXNlKS4NCj4gDQoN
Ck9rLCBzbyBpdCdzIG5vdCBwb3NzaWJsZSB0byB0YWtlIGluIG5ldyBDUlRDIGNvbW1pdCBiZWZv
cmUgYXN5bmMgZmxpcA0KaXMgY29tcGxldGVkPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo=
