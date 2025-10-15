Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D6BBDD3FC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CE310E715;
	Wed, 15 Oct 2025 07:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELJ7irVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9A610E715;
 Wed, 15 Oct 2025 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515038; x=1792051038;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5vhyr3tkH7QIignyvyJOfqY6QYJmHjba+ORpoLTzmIU=;
 b=ELJ7irVbpvsYBwW6Z9mxEpTfksR+8K4D6p6oWGZHuqPdZykSXvDs7sMY
 EZX8EEnQTHj9RYA8lOSorVqx+ir6wU2BFYMzJQmevPsgXbf+as4cQbAmZ
 gz9cgqzcAusYKmuLo3ct62+FG9jnW15G4TdU05uwMmvXTLFzz7qObY6/y
 y5zqHMNszRD3rGbG4svW8YL3S0GF+Jsyrh0+h2dVFjyGNERvHqPiSqv6M
 rci1QCwMj3SbIWHY9fdsik8VZ73gsBO1zwBpCzNWTDsxlSwM0ZZrDLBGe
 U7KOw3NA8BhgPVxlcoiHMT7tcIfqp0S4+yT5PnBCE2Gw/G4O7Xw7yH0q7 Q==;
X-CSE-ConnectionGUID: s+flokRWT2GIvFh1bDgz8w==
X-CSE-MsgGUID: xAYQWO9IRFOF3jjOop2YwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73785150"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="73785150"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:57:16 -0700
X-CSE-ConnectionGUID: jGNCDCcXTWW6xNZPkx7QMQ==
X-CSE-MsgGUID: o7pmKFLwSZuR36Z3zyC00w==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:57:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 00:57:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 00:57:15 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.36) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 00:57:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RCVp/gLLsucxUyud96HgrHN0p2qZG1spTKatbW46eA6hUhUY87kFgARP2MwhZ8vpegkyAwkqR7veRj94pxVjFggfd7rhKL1qLQjhZkl/LTl5CNAdrYqpSjFYAvhoL53YjPjYsOkFyw16KDy9WWG/hVKHcR7NH8cOrZ21lRVAplTxeTXAUNgOXTvPVCOe72Tr1RWqdRrYlciTDK0NPDAOk62rsO0nKNUj/rNmYqsW1wlr5+qdaMEM4bDO8ljS7MhUSxNlNP5S2jBeDzD7Ee2qJi3tWvUSVmdfy6/XVSLFR30ivqcNlwtL9wEsJ5oTYRR9ML0+9Q+PxIpLoDe0rRLxow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vhyr3tkH7QIignyvyJOfqY6QYJmHjba+ORpoLTzmIU=;
 b=p6XwwbXsoEJlPqsAByZkct/dci1rFcxXelsYXmZjcNUwJbiLsX5o1KtKDb5CsdlKhFwlGVry671JfsOUk/mWGEKMdoLmOJIMu6dUQYrO7fQbKykQoLQmTSAKaTrGXVd+AWCY7MNAxeMlBijG4kGR9TWaiEzPeRWMVmBheW0ap/6YPASsDcUbeoycFP0FyL82X49fmLDZiwr1q9Iq6ekwo0b7ikAL2BE/SZSHuhJaK3+HNugJodqxTaVDng5xGV9JEB176u3zUahL19ky4K/XsXmF+fwWCJ5GmtXSnuhq5dyDmVwLhMrLtMJPO8qtG12xw6pRU/dqwNEneXHGrohswQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8123.namprd11.prod.outlook.com (2603:10b6:510:236::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.9; Wed, 15 Oct 2025 07:57:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 07:57:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 06/10] drm/i915/psr: Introduce helper
 intel_psr_set_non_psr_pipes()
Thread-Topic: [PATCH 06/10] drm/i915/psr: Introduce helper
 intel_psr_set_non_psr_pipes()
Thread-Index: AQHcPaZcRYKsCyyYYEyMk3L8DoQxY7TC11MA
Date: Wed, 15 Oct 2025 07:57:13 +0000
Message-ID: <d385cd74ebdbc8d1843bc17eaae670ec5007d7de.camel@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251015072217.1710717-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8123:EE_
x-ms-office365-filtering-correlation-id: d2cfdf44-ddf4-451e-045b-08de0bc073a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VytNdzQ5R05sTW5SbmxBODM4WlFiZEJrV3c3L052SkpVRG9TZG53ZXdFbmU1?=
 =?utf-8?B?d3lnMk1qQjgrRlQrbHlaU3N5M0FTcDRLRGhtUXNCTk5QbmkwZVZheEIwUDd0?=
 =?utf-8?B?b3ZiZXgwSy9YWWJyRnE1Sjd4SmsyajNtbG11M0RKUWVmSllEUC9IKzR3N1pz?=
 =?utf-8?B?UlFvay81SnpJbUhvS2l3VmdiV3FEcTBIaTNOTko0RXgrUWFYOEp1S2JwWkJm?=
 =?utf-8?B?dnVnbUh5M3Z0RUJGYk50STZnY1NnSmdZRUU5cUc4WXFCcmlCZVJJSzhodUxI?=
 =?utf-8?B?NmsrR2V4emVOMVhtRk9YZTh5dE1hZFZTaXRMOTBha3FlUlpnV21BMmN0amw5?=
 =?utf-8?B?cGVzZFNPbVZyWnF1eU1DZGhRN01NYXVNNC9WdTlrZitIZ2c5RXdkaDlEUWlT?=
 =?utf-8?B?MWswdjZzNEJjSCt1ZTV6SzlMWExLVlBkYUEwNnR6V2V1S05YYXUyWWNxY2Iw?=
 =?utf-8?B?cUt1ek5xUU1ld2ovN2I0L2VLTHpNOGhtQ2tLeitqbzBWOHNLWVVrdlc5WGRR?=
 =?utf-8?B?eFordXdiUzJ2a1hTN1k1TTkyWG83U2JVRE1XRzVUOFhPZVR4UzBHOGdkdk1V?=
 =?utf-8?B?LzJVNWxaQURydmZBallwVWNCa1htM0FVZnBraUxPMEJTRHNLaFZzbGJUNjJ2?=
 =?utf-8?B?WFBNM1huN2VnbHVIVnVXQ0NPeldCcEVXM2I1K2YwK3UvS2dOSEVRbm9DS0Nw?=
 =?utf-8?B?YysvSTRPQkpISmJHamRsTDR3MENjOEJ5ejM0cEtEVWFiQ05wNnBqT0o4YVRG?=
 =?utf-8?B?MFprZlJYeFE0dmhBQ1N4VVlqVVAyVDgxSVBBbTZsNTNOM2lHY29obEFETGdw?=
 =?utf-8?B?RkMwN3lyTWtNdmZXYmhqT2lYYVR1anpJazdQaFdlVFJsbG9pL0I2cHg5c2ZX?=
 =?utf-8?B?VUdDTnk2cElDS2hYZlBjSlFDU3dzNzBiTENvUlJrWnJNLzNsUmFRblRnZm4v?=
 =?utf-8?B?dDJNdmZMMmlZL3BZQkhBbjJKbklMU0dQMEVvN05nUy9ZMXl5OTI1SmVObEVI?=
 =?utf-8?B?ekMyL0YxaUJ1SzJwSFpBVmpqKzk3dFRPUStuUnBqQ0lrMUh6RW5OWktLd0Y0?=
 =?utf-8?B?eEdJVVJKNlRFYWk4ZTB4K1lGdXBET2k1SlpvNmVYQlRVMkJIUWcxMmc4Ujh1?=
 =?utf-8?B?S3JUZUdxVnVCT0h5Mm1hcTg5a2FRYlp0R1IwUU5OTWltKy85d0tjZXN4Z2hs?=
 =?utf-8?B?T2ZBUDZEcE11cE0xQWI2UUpVNDI4d283b3Vac3ZvN1dnOGtJOHRFanA2bDJM?=
 =?utf-8?B?cVArZGh2dTEwVlRnUHhPUDRNTnc2QmxkYkNVWVpZV1o4UWk3cDBoQ0pZM2Rm?=
 =?utf-8?B?UXFMRENPSVc5SmZKMFRlVy9MWEdzZkFYZ1dWS0o5NFE3VjlhMnRMZ29oYXky?=
 =?utf-8?B?eUkwNzVWSCsxd3Jic2x6TGZVNjhUZ2ZVY1dpT2xkaE42dFRwOU1UZ0h4QWk2?=
 =?utf-8?B?b0JLbnFraExiVjNvNDkrMUNCRE4xbzI5c0NnaHp1cW04UUFRUEtjMHF3Nk5W?=
 =?utf-8?B?cEg2aVlNcmRuSXEvNHZwRS9oZFNVb3dPZXZaRG9udVdNTzJhQTNCKzduSmd2?=
 =?utf-8?B?NkJEZ0ladE9wVnVkc0h1K094ME1QMlA2QW1GUWlYYlFzRnF4Mng2QkhtVUFi?=
 =?utf-8?B?ZnZxSUVPMlV4K3AydnBEeEdBVExoM0lBM1g3MFhNcGNKQ0lKdTZQdDNwUm9L?=
 =?utf-8?B?cGRqYnpaS0NEZFN4Uzh3WXM2WXBpOEJIcmNMU1E1TGlGQmtrcVlZSzhXNjA1?=
 =?utf-8?B?L2VGZDBWTEZWQi9xZVl0WWtvNURtK3pCdGQvV29MbjFoekp6YkxtRHZaSDlE?=
 =?utf-8?B?amJVTk1mS3R1T2JZcWswZTFuN2RPMWJFbTcwVlFlSnRrZ2ZZV2UzYzJvVVFF?=
 =?utf-8?B?RVorUCs0enhDakZWYzBiK3JrdW1CQ2dBb1VHQ3NxZ3hkZWxzT1lPNzR2NHNR?=
 =?utf-8?B?Lys3bmkwNGFEcWxEckowQkpka3A0VXgwZThxcGFCYlI1SUxtMTAxMVF0eTBC?=
 =?utf-8?B?K0ROdklaQjRidGFkNU1kR1hjUW0veU1NcFVtWEhvZWlmbDlGMGhRRnd4cjBq?=
 =?utf-8?Q?3UapZn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFVzT0RiYXliVUc5L3hNamRJUm1FODhCdWRIRnMrSjhuU1ZnVyt6cUJrWVFV?=
 =?utf-8?B?SUI5d0JyRXA4dkp4a01nZGtOa3JSR1RvMDUxUkVRUldlcURTR1U0VVB4OUN6?=
 =?utf-8?B?b2FuQTlyRmE0T2ZySWJCN1FidVNXMU8xeHRTV1VQWW5DUE00dXpIS0ZiQVpW?=
 =?utf-8?B?bTNsV2VXM21Oa0ZwVFhBSzFmakxzcThUTDVibkREVEN3QkZBZFQ1dVRIbXov?=
 =?utf-8?B?blV6M3h4cGYyS01YQU5EWFpBS05uUXgvTytYT0hBZ25SdzRncHFUL2RzSy85?=
 =?utf-8?B?N1NBbW8vZ2dMa0dsTjJ6TmVOUnpLTGZtY1FzZzZnaHVIRkZYSFBzRFhtN0xZ?=
 =?utf-8?B?eHJjcGFid05VV0l5VEk2VmhITDlXV3o3bDR3WUU5QWFXYXNhMHM2b0RmQWp2?=
 =?utf-8?B?RXBYT09iMTFpTWRMeDNmN3N2bmRSUmdkQzVQazNpWG44WnRGdzJGT29tNU9a?=
 =?utf-8?B?aHNhWGVxYjY2eUxGRkd3cmhqOFZDMStyRmRKcitqZnA4K3h5SWlCbWMxSXVU?=
 =?utf-8?B?aWVRYlI0d1h4Q3UzMEM4N0E5TkcwYm4xT0VhTmx2aldWYkJ1RlRFMG0rb1NZ?=
 =?utf-8?B?S0htODV3MVM0eElhdDdRR3pKZHByQWVraWJESGFkeEpZcFVwTkZnN002SHpw?=
 =?utf-8?B?NlpzdWE5NFpLOUU4dFhGZmE3bG9UakNxZE9PZE5FZ0xIaUtGM3JkMkhwc0Vy?=
 =?utf-8?B?NjNLZnJadCs5YVpNa2pGbWRTT3d2L1J1aWRMdW52cndLNVZDN2Vpc2d4TGx5?=
 =?utf-8?B?akl5M05reHdYSlE2VG9HeDVlbi8rZU1vMm1oWEVBbUNqSkt4dGlhazEyQkpj?=
 =?utf-8?B?ZjRSWFhPb2t0M0ZHS25NT1l5czhqNCtTKzNJdllhbWs4MnJkN3ZocnU1UFFu?=
 =?utf-8?B?U2NNUC96czQwbEtNZnhhVmVuTXh6c2RKUSt5M01TbkcvK0pBYUh2SVNmdjJo?=
 =?utf-8?B?M29BajdJZXpZR0luTUcrbU5aSXMyZjV1NDljMWZET3ptbHFIVnR2MXNlNDBC?=
 =?utf-8?B?cFlGSTVvZXI2WlBGY3Nsdkxqb1M1V2xVRW5hUC9zWmppNEZwYlBTYVVjZVl3?=
 =?utf-8?B?SjFid2tvcXlOMTdURGRIV0p4aER4YTB6RHRKY2VTVlU2b0l3UzRMcjE5SUhT?=
 =?utf-8?B?WEZKOThPOVJZVzFPVTdTQ0FnTE1odVNkb2VKRUtpUlZUZXl3YU4zczFzR0NP?=
 =?utf-8?B?MURHeVFpb0t3T041bXpoZ2FWaWxqUnh5QWZwQjNST0dHQkQ1NlJBUFZqNEtP?=
 =?utf-8?B?akoraTZXTFp6KzJsRnBHSmZJS0RneGNCakF3QTEzNlhLVTNvaWRBTWxYclVW?=
 =?utf-8?B?NTNjYnczMlFRWnAxcTZoallSMFIwcXl0TmJzNG82MXNRQ1l5Qm0vMURleTBa?=
 =?utf-8?B?ZjVqQm1MTVJmdzJSMkxabjU0ZHFoRlJrMFdSOTNkZXFlYmVNdU93OEZwUXBz?=
 =?utf-8?B?clJpQlBBTDdEMUFvdGJRNW95bklQZG4xbktuNTlzb3BxYVkrR0tvRHhnL1Ay?=
 =?utf-8?B?UytRSm9aRFViWXlUOVRuVkM5NWFEd0NieFBqOFlqQmpXMCt0R01KcEJzdTND?=
 =?utf-8?B?TGU2L0dNRXNPck9Ba0p3K21tdlJRRzVmU29GRktJQUt4dkROWDhFTmFDek5N?=
 =?utf-8?B?dEN3ZFlhNjYxR3cxWGh6RjlMa3JpNzdETVErL1FSV01ZYk1pTURXQ3VRcjdE?=
 =?utf-8?B?ZFgzTGlqMGdFR2EzVDhMLzdQQk8wd3dkR1pibGQ1RHN4aTVUejNvdEZ0Y2pw?=
 =?utf-8?B?ZmluY0lKVE5ha0dGdHRlOVFoYmxqMFFMZWd3KzhGU1YxMnQ4Sk5TVW9JS000?=
 =?utf-8?B?eHhtVkFMa056dC9HbGFEazQ5N2NiYkdESXZiZy9pL0I4UzE2R3Frc3JEVXlQ?=
 =?utf-8?B?a0ZQcXlSWUVOYUpsNGc5UlRIcDNQUWp4dFppZ0s2bWJRcUR2eGFyUzRhbEVF?=
 =?utf-8?B?aGhvWXYrVW1PU29iNW9zeVh2ek9ERkRyaHBvZm1lOTNWUW1WbG54S2pHVDU3?=
 =?utf-8?B?YUNRYVpUMlArRXN3dkdhSXd5U2RLOXZWRDEraEE1WnM4b3ZLVUNyNmlFQm9q?=
 =?utf-8?B?Vmc2ZHpnYWc1WU5LL25TSmxFNkg5NlBYSk9YSjhHNnJoNEM3U3BjYW14YkJL?=
 =?utf-8?B?RVZNamFWQjYwSUdYaEpFZnBMWCtYUHF3a2JwTVBrWWhNc05wN2QvcC93RXZi?=
 =?utf-8?B?MmJCYVE0K3ZUenljVVprUUVjYXVubmdVZWdPUEl0RTg3MDJHQS93b0t3ZFUx?=
 =?utf-8?B?QkpLWks1ZExRSm9XUnFId2txdWFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7189914C15DF274287A60DC17EDB8E25@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2cfdf44-ddf4-451e-045b-08de0bc073a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 07:57:13.4894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PEUU9P/x7rBWQCIBq0cX/4evMJNJSYUBiE5xmuCiLaIpNhojm+sEtlSxc6KP7PaOoc0DSuabaSW31Oze7X2VW4txELfbizbcHwBiuonaUUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8123
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDEyOjUyICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQWRkIGEgZnVuY3Rpb24gdG8gc2V0IG5vbi1wc3IgcGlwZXMgaW4gY3J0Y19zdGF0ZSBiYXNl
ZCBvbiBwc3INCj4gZmVhdHVyZXMuDQo+IFRoaXMgd2lsbCBoZWxwIHRvIG1vdmUgdGhpcyBwYXJ0
IGxhdGVyIHdoZXJlIHdlIHJlLWV2YWx1YXRlIHBzcg0KPiBmZWF0dXJlcw0KPiBhbmQgdXBkYXRl
IHRoZSBub24tcHNyIHBpcGVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0OSArKysrKysrKysrKysrKy0tLS0tLS0tDQo+
IC0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGlu
ZGV4IDFkMDYwMTFhOTdjZS4uZTk3ZGNmYTc2NzNjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE3MTEsMTUgKzE3MTEsNDAgQEAgc3RhdGlj
IGJvb2wNCj4gaW50ZWxfcHNyX25lZWRzX3dhXzE4MDM3ODE4ODc2KHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+IMKgCQkhY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOw0KPiDCoH0NCj4g
wqANCj4gK3N0YXRpYw0KPiArdm9pZCBpbnRlbF9wc3Jfc2V0X25vbl9wc3JfcGlwZXMoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KmNydGNfc3RhdGUpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0
b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSA9DQo+IHRvX2ludGVsX2F0b21pY19zdGF0ZShjcnRjX3N0YXRlLT51YXBpLnN0YXRl
KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gKwl1OCBhY3RpdmVfcGlwZXMgPSAw
Ow0KPiArDQo+ICsJLyogV2FfMTYwMjU1OTY2NDcgKi8NCj4gKwlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgIT0gMjAgJiYNCj4gKwnCoMKgwqAgIUlTX0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3Bs
YXksIDMwMDAsIFNURVBfQTAsDQo+IFNURVBfQjApKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwkv
KiBOb3QgbmVlZGVkIGJ5IFBhbmVsIFJlcGxhecKgICovDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhh
c19wYW5lbF9yZXBsYXkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qIFdlIGlnbm9yZSBwb3Nz
aWJsZSBzZWNvbmRhcnkgUFNSL1BhbmVsIFJlcGxheSBjYXBhYmxlIGVEUA0KPiAqLw0KPiArCWZv
cl9lYWNoX2ludGVsX2NydGMoZGlzcGxheS0+ZHJtLCBjcnRjKQ0KPiArCQlhY3RpdmVfcGlwZXMg
fD0gY3J0Yy0+YWN0aXZlID8gQklUKGNydGMtPnBpcGUpIDogMDsNCj4gKw0KPiArCWFjdGl2ZV9w
aXBlcyA9IGludGVsX2NhbGNfYWN0aXZlX3BpcGVzKHN0YXRlLCBhY3RpdmVfcGlwZXMpOw0KPiAr
DQo+ICsJY3J0Y19zdGF0ZS0+YWN0aXZlX25vbl9wc3JfcGlwZXMgPSBhY3RpdmVfcGlwZXMgJg0K
PiArCQl+QklUKHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSk7DQo+
ICt9DQo+ICsNCj4gwqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiDCoAkJCcKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsDQo+IMKgCQkJwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0
ZQ0KPiAqY29ubl9zdGF0ZSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IMKgCWNvbnN0IHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNydGNfc3RhdGUtDQo+ID5ody5hZGp1c3Rl
ZF9tb2RlOw0KPiAtCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlID0NCj4gdG9faW50
ZWxfYXRvbWljX3N0YXRlKGNydGNfc3RhdGUtPnVhcGkuc3RhdGUpOw0KPiAtCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOw0KPiAtCXU4IGFjdGl2ZV9waXBlcyA9IDA7DQo+IMKgDQo+IMKgCWlmICgh
cHNyX2dsb2JhbF9lbmFibGVkKGludGVsX2RwKSkgew0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLCAiUFNSIGRpc2FibGVkIGJ5IGZsYWdcbiIpOw0KPiBAQCAtMTc2OCwyMyArMTc5Myw3
IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHAsDQo+IMKgCQkJwqDCoMKgICJQU1IgZGlzYWJsZWQgdG8gd29ya2Fyb3VuZCBQU1IgRlNN
IGhhbmcNCj4gaXNzdWVcbiIpOw0KPiDCoAl9DQo+IMKgDQo+IC0JLyogUmVzdCBpcyBmb3IgV2Ff
MTYwMjU1OTY2NDcgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgIT0gMjAgJiYNCj4g
LQnCoMKgwqAgIUlTX0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3BsYXksIDMwMDAsIFNURVBfQTAs
DQo+IFNURVBfQjApKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQkvKiBOb3QgbmVlZGVkIGJ5IFBh
bmVsIFJlcGxhecKgICovDQo+IC0JaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkpDQo+
IC0JCXJldHVybjsNCj4gLQ0KPiAtCS8qIFdlIGlnbm9yZSBwb3NzaWJsZSBzZWNvbmRhcnkgUFNS
L1BhbmVsIFJlcGxheSBjYXBhYmxlIGVEUA0KPiAqLw0KPiAtCWZvcl9lYWNoX2ludGVsX2NydGMo
ZGlzcGxheS0+ZHJtLCBjcnRjKQ0KPiAtCQlhY3RpdmVfcGlwZXMgfD0gY3J0Yy0+YWN0aXZlID8g
QklUKGNydGMtPnBpcGUpIDogMDsNCj4gLQ0KPiAtCWFjdGl2ZV9waXBlcyA9IGludGVsX2NhbGNf
YWN0aXZlX3BpcGVzKHN0YXRlLCBhY3RpdmVfcGlwZXMpOw0KPiAtDQo+IC0JY3J0Y19zdGF0ZS0+
YWN0aXZlX25vbl9wc3JfcGlwZXMgPSBhY3RpdmVfcGlwZXMgJg0KPiAtCQl+QklUKHRvX2ludGVs
X2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSk7DQo+ICsJaW50ZWxfcHNyX3NldF9u
b25fcHNyX3BpcGVzKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gwqB9DQo+IMKgDQo+IMKgdm9p
ZCBpbnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCg0K
