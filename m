Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB66BC0DC8
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 11:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC52410E365;
	Tue,  7 Oct 2025 09:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQh/p8hW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B97910E365;
 Tue,  7 Oct 2025 09:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759829606; x=1791365606;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mQ4tKNdUXl7gzyfCyBuNLsF/9LAOJBGXBylA3OdzrqY=;
 b=DQh/p8hWgNMTZpNVJnFS6qoJwQb+c45/q+47pxJTIuJ83Ahw1qGATx/y
 UmIdj3xw8KRqlbYhqge6V5oxC1EP0A3OpQvHiBHtDSq92OpDwEXBvQRGW
 ehWDsY0zFI7i3McUUtdDJ2Kwd9pUwqulbfp0Mu1nN1J9S0tryzfjrEWc3
 vrYux/zZqAcoB3S+MDI2bRh1FeRGNiWP6ZQy4ikxAKdgZ9XDLbfsxYzTh
 FEAsOlWF80QNWEt1Y5uP+a1Z3E+zKbH8Q9aLtvrq/jUMvUfyd4xxrwCsG
 IyJ/taJkBIdL60F3a/PN6dBGr++N5/dE7OEMg9PBxMt4K7gGI5ERrlPE2 Q==;
X-CSE-ConnectionGUID: DU5Kg+mgTGSqNM6EJO101w==
X-CSE-MsgGUID: O7I5enrhQROs2aahRL51ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="61716238"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="61716238"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 02:33:25 -0700
X-CSE-ConnectionGUID: XzWNY1hZQxuaaqqgTe4RyQ==
X-CSE-MsgGUID: Qrkd8EbSSoGFtCmKVOOktw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180518150"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 02:31:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 02:31:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 02:31:56 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 02:31:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OeYnyrAZ5z3Wd2toSAftB1+nvdOuVgU49T5/h80oy6fazur1kNXCMlLlYQPBB/Z9KF+6jnI6AIqlYQTSWVJ4NR72W3P2TvDOAaLaE1YyiXS+HiXxAeFayNK3jFHk8zWTmSs7F1NrWhVfxqdlGynw0QSlsDLebMAm8ebpsf9UUd0jYSHTT7h7xUMGGRCKx12nnczQSJSYQPz/oHPipF/mtg0FbGm20Nu8TUpOvzE4fC2qYm171nyGh8AN1m2O5UoNP21i92eKawzS+mzfH81XicjQMBlFkPSz93aEtT5xNzVak1gg/WGn7E02RX7S/qjRU1j292BnZmdpHR2od7Oiew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQ4tKNdUXl7gzyfCyBuNLsF/9LAOJBGXBylA3OdzrqY=;
 b=dqJ84UkMcLu+1aYiVrbKJ/xTCvUwPGuSKbk/98RQ8IxIeF7XJjKMk9hrPZsg+uNrPdaZ0/EBPBhofCMSHKfupiVhVGLY6mH53w9oZsk5pxvR+S0It6J7xVB7D9lnnCqyLNjlxC7SqBksn4w4lEqNTPwU2nqNg21VLYYdUb8JFywCiqV+VpTp/tD1io7tvGNuVuBXBSt7qdqe9bdU13ozmOL0PRxVl7hGvqUDwZhqA9+pxXoA9nNWjyVII5GgiJizAd+9bHC6TdiC9PlbNpn+vynuUnTEuBdIFHaYkawHcZru48j2VmK568p5nvg3c2JdfJtLPvbLLDxcE/URMO4BfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 MW4PR11MB7164.namprd11.prod.outlook.com (2603:10b6:303:212::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9182.20; Tue, 7 Oct 2025 09:31:49 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 09:31:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 2/2] drm/i915/alpm: Remove parameters suffix from
 intel_dp->alpm_parameters
Thread-Topic: [PATCH v2 2/2] drm/i915/alpm: Remove parameters suffix from
 intel_dp->alpm_parameters
Thread-Index: AQHcMUEfjYketLUYoUSZkF7JCXuvg7S2d45w
Date: Tue, 7 Oct 2025 09:31:49 +0000
Message-ID: <DS0PR11MB8049D0BE8B6EA5EB67A1960DF9E0A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250929130003.28365-1-jouni.hogander@intel.com>
 <20250929130003.28365-2-jouni.hogander@intel.com>
In-Reply-To: <20250929130003.28365-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|MW4PR11MB7164:EE_
x-ms-office365-filtering-correlation-id: 95f40557-c273-4ccb-2a24-08de05845791
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SlJHOStRSitnY1VEZE1KT3A2UzU4NUFpdFJNR1hOUWg4a1dJVExwQTRwajBs?=
 =?utf-8?B?WGkvNk5zdzBXa2VqbENUemhiZmV6aThmQTVHL055OUtXa2hOUUpscmZTdmVV?=
 =?utf-8?B?VlJ1eGNzeTRWVC9EcXpXMGdkbE5uby9RaXJ3WmRiVXhzN1Y4UGpCM01naHhB?=
 =?utf-8?B?aEtTQmFpd0RKbW1sMGJhUkRwYlpHUVMvZC8wNk5FUUVjdDJZT1FOWFNkd2dU?=
 =?utf-8?B?VGhmbkRHQVVIYWFGN1ZqTml6UkxGaXAwbDFCSXVCVEcyUjVkdTVWbEo5UWpu?=
 =?utf-8?B?aHEwbWN1aUJsYVhMZkJxOUxUNUwrV3RvVk9hUFg1V081cWxSZjMyaXVpa1lt?=
 =?utf-8?B?YmpnNHpRWUIzMS9seVBENjdNRE9WejNieW1hUVlzaU5WaWh5MTZSWXVTbzh3?=
 =?utf-8?B?TlZHM3ZrL2VqM3B6WEhSZ0dYWlJGK1NSczJPYVM4M2Y2ZVVvcjZwMVRkdlJn?=
 =?utf-8?B?aTJwd0ZyY2lxMzFvVEI3WW5VVDlNU2xBWGZuZlZrMGw4U3hMbXVjVTliZGQy?=
 =?utf-8?B?TTdrb0s0QzVDM2JjTUN2NitYcW4zWGRVcjBGaEF4K3M5NTNsM1F1QzBVVHRG?=
 =?utf-8?B?dy93NTRYRWZQN1VtQWp3U0diSWNKWDQyN2pXNEJjYm5YVFhXZlBJVVZnMjRl?=
 =?utf-8?B?STZIbVB1aXZJSnJ0cG9oK3ZsVkkxR3ByNkxGY2JHR2tDbVFsSVRVL2h4VGNH?=
 =?utf-8?B?NmJqckFJYmZUemxNM0FBeVc2OVdzalVRaTZQSjRwb1M4R1Z6K0J0bVJyK0ZN?=
 =?utf-8?B?MU1xc0RvbS9RdUxBekFuOGdOakpZNk9jdVUzcUNqMk11aDFrQW5ZQW9ZRjln?=
 =?utf-8?B?Q0NrdWZHbjU5aVgzWW9JRHNNajdETlBEdXlPclpIUUlGb25RTEkvQlN5SVdu?=
 =?utf-8?B?Ym9YR3NCQ2w4azVwbmtzVnlFOXc1MmRVbDN5OURoOWpZUHVNalBDSVFZdlN3?=
 =?utf-8?B?eVZzYmxBSk9KdVJiNXFBdnlQbGhjUzg5a09jdytCTFp2KzZBd1Yrd3Joejgw?=
 =?utf-8?B?UnRMOEFpajdGR0swTWl0RFRScmpHQ3hmYUVQYmpreWp0MGFuR1NaVmU1Z0Np?=
 =?utf-8?B?NmJNeTRtcGlFelhFVFpXV1FZVld4ZjB3OTFMTUFJQ3AvVHZCY3Z0ZU9VVi9Z?=
 =?utf-8?B?b1RXMmp2cTRMUkR3NkVSMjlvVVJRWXRvQjR0TWRxNXdFMTRpZm9McExTRlRw?=
 =?utf-8?B?Ymp0UlMvNHVCUDRYR3RWb3U1amR1aWZpdVlzZXhzOEhIT0Zsa1l2TWpGYUZZ?=
 =?utf-8?B?bEtSYTBRT3NyMVUxOXZVbElvVjdTVVdkVU0vQ093K1FnRThjWjlxNjJYMnl0?=
 =?utf-8?B?VUNvM3hudllVQlJaQk9iY3J5cnJlQWx1NTNTdk55TWM1alVpQUVDWHRvalla?=
 =?utf-8?B?MmhDZ3d6akMxVUUzYnRWM1ViK0N4cFpKY2gwaW9ocVcyUlFUeEs5MG1Gekhm?=
 =?utf-8?B?M0VESE16TkFFQzVlRDdnM1RYYXg3WVI2MkR0OHhhMXEwdkk1M3I3VnV3Zks4?=
 =?utf-8?B?bDRuVkxlaEM4NjdDaHRSU3JSd01kVE5LSkt3V2d6ZFdoSDY3ZmNyTzUvUW05?=
 =?utf-8?B?N2RkRnZJNklvWTJRVVF1d3pJMyt4dE1NSjhLTUE1a0N1cGxsSFVaR0JJTXE3?=
 =?utf-8?B?SEpOemp1L3B6TzZZQVI5SERFcHVmR3B5cTFkT2tZUWZzekJuSDIrUHFEanlN?=
 =?utf-8?B?K0phN0Rkc0F6UkJweHo3TEtqdXRlM29WcGdmWDFPZnZMT1VpSFkxbStEZU55?=
 =?utf-8?B?VzU2cnhIZ3EzWDB6M2dxZ0V5MGx4dnV1QS9qMDFVMVVsZzRQVFRuUE0rYmcx?=
 =?utf-8?B?ZXovUWVPSFpZVkI5ajBnQ1p2Z01oMFRZdWJoUUlTdnpIaGNvdHdMOWlPa0JM?=
 =?utf-8?B?UTBwZ09UYzdQSFlwZVp2aS8rbjdPVG9sTmZRTmNDaVZKUkJhOEhDdGVWZmhk?=
 =?utf-8?B?S2JmVU5xUFRSVGl4OU5YSTBjb25OMTBJdlhJQzZWNTJocFFkckZ6TWRIVUlw?=
 =?utf-8?B?OWhVYjcxZUdkZTNVQjRaRi9EU1V0Wk1zcVZBbHVPc0hTUlFlNDBjOVBzR1Zq?=
 =?utf-8?Q?oS7QVt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THExOE1RNXdoK1FrbDNReUJES3pFQmVyVWJwN0g4TmpaREFHVVc2TlZOcVRs?=
 =?utf-8?B?amF0VXRDbUUzT0R6d3NNMFRuY0FwL2IzZ1JwajhyQXJSbVMzRXFEYlhyMXFh?=
 =?utf-8?B?STlBa0VzY01ucjdBUjdxa2FmcEJ4cDhqV3RKcXgwZVZCQXVyUFVMN2xSQWhQ?=
 =?utf-8?B?VzFCanVNRHZPME5Sa3ZlZFpQb25HMEhUOE45ZTRDV0dSckRzanc3SXJVdFdC?=
 =?utf-8?B?akgwVktmenFuS3FLekwyejN4L0RtOHByT2w0c3FmSjFzc0NVK1h4aFhPbGRB?=
 =?utf-8?B?YXR3R0UvVWdVSmcyMzIrbXU2enZpV09hbmJzdDlYUVRUV1ZJcVFBUEdLbXVR?=
 =?utf-8?B?TnNDWmY2VWlHcjZ4bDhRaDhDQktDQTVzYnZZUkVKRGNWblkxaEZoNG96L093?=
 =?utf-8?B?b0RlQnBPZTdqdS9NOTluY29BK2ZaTXowa1hpaHkvUURxSk8reFMycmpYeU4r?=
 =?utf-8?B?dkRFQndndFh0NlJlSk5UV05MbEt3OFJEMU1GUzNxQmV5NHJRTVl0ZlJTRTI0?=
 =?utf-8?B?TGptbTUvaFBxVHhlS2gvWFZpbnhuMDZYVWZyemFvK1o4eHNZbWk2bTBOMERV?=
 =?utf-8?B?NjdjY2cwQVk3NEc2OFR6UWQ0cEtFdzB0cmJ0dXBMd1NidXdZZ3U4TmFsRkFh?=
 =?utf-8?B?d0VlTm8yTmh1dEZnM3hXTkJlK1FIaG1EUnlISkJuMDBab1RuakQwaytvZXUr?=
 =?utf-8?B?SG02bXZzQ25rQStkOW5CYlZmb0RBS2JiZ3lhc1RiemQ4eWh1MFJqQkpIa2U3?=
 =?utf-8?B?SStTdVJ0MTEzWHBmYkdGT1htQ25IUlZEZUluMTRvOGY0MUdpK25kb1JXZzhR?=
 =?utf-8?B?RHpJelQ1WG5EbGR1QmQ1SHUwRm1TblJJNDdnSlUxTEFyMVVaSjBoekpkNW1q?=
 =?utf-8?B?WVMxaUlnaCtpWWc1ampLbWdiTXZiOVUxMzBNek5GQ2d2VWlFQUZvNWl4Sjg4?=
 =?utf-8?B?SVNjSXV6OXpMbFpud25PMkNqWDY2Y1VhREhBREpOam9CY09WVEZ6WW1Nbm9v?=
 =?utf-8?B?aUpKbGt0Z0dnRTNoZlB3UkErcjRmemJwblJadTYxc0J0M092aWpESUJYZE1S?=
 =?utf-8?B?WFZ4VGNwNVRIYTk4Q1lVYlZkNWE0N2Q2NExqVXdGYk9DY3QwdWsxclZXV1gx?=
 =?utf-8?B?UnRVQmZyeEhKNEJnbE5CRXRsVzNwSG9rSVQxUWhZbzFLM1hMRUdCbkExOS9i?=
 =?utf-8?B?WU52MURqdjlsTU01UTdvWkdDWTBOUm1CeXg1NTI5bjBTZHp6aytSWWZPMytE?=
 =?utf-8?B?TVJqSWorSENCdUFBR3FUdHZxRjUwNkdZcHdBdkVSdkYvclBRWGhKTko3bDB4?=
 =?utf-8?B?VmFrdkd1cHZlL2FEU2xQTHZjUUZRNmNrdDVFSlQ5TFpQMVJLZ2FmY0pyaWo4?=
 =?utf-8?B?NFplS3RNb0dnQ1RQZUNyTEhwb3JvajdRV1FUNGFZSUI2WnFYVS9jRXIxWUtp?=
 =?utf-8?B?bVRKaG0zMUZIWkRUZDRvR0pqa1VPd2F5eHpkV1orZ3Q3ZzQ1ZmRVQVVQS1pH?=
 =?utf-8?B?RjduOWpodUFSVHVRQjVwVkE2K3RRdjNJejFrOEtVa0x6eTJmQW5tbTEveCtv?=
 =?utf-8?B?WlVGMVVJRDZ1Y0VUK2lFdnZwTjk3WUErNG9wWTJ1NjJXVWNMczRLL0FOelZW?=
 =?utf-8?B?UVVYRDdLLy9rTWlrT0R4Z3VmangxdGdwYlZBTVI5akE2aDdEbjZJajVVMmR4?=
 =?utf-8?B?Y0pZQkttOUs5bmhKSFd5V3BJdzQycjNmYkt3RUpsYkEzcVJkRlcrZWk4bkVl?=
 =?utf-8?B?WEJSRFlPL1Z0aytqMW04bUlMNmsxKzF5SDN6dC9FUFJveTJ0aW9RbVBCdFY5?=
 =?utf-8?B?OTV0eGFkNWI3ODh0Q2gvTmNTT0tTaDFIRTVCV2Y4RjdMU25nK2pBSjh6djZk?=
 =?utf-8?B?bEthV3M0NlFIbS80VDMycFhYK01tUUVLVkxuMWV5RVVsRnFOdUk1dkE5Y3JK?=
 =?utf-8?B?dU5KdlNFaEtCMk1jeW5QeHhYak1UNExEcEJlMjZJdDlNS2ZRSGpOUG40b3lX?=
 =?utf-8?B?TGludkNKSm1tVXl5NnppYkJ0NlAvR2FHRFFvZ0FqM0FXZUpLajdMSzBjT3Bu?=
 =?utf-8?B?M0s3YyszZGFTYW56VENSOEYvbXlVRzlZa2x0RCtzSFRnREIzYlpRbXd1R3Vw?=
 =?utf-8?Q?fG6ibF/PaJTrV0RCEMXSzCMu9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95f40557-c273-4ccb-2a24-08de05845791
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 09:31:49.6030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fpYPG0t/lRrnhASzHmTdMyJXFLFzFCCokSfQ6iiO64PFG1TR1o0fYdSPTJDtAh3y8OU0h1JyQ9KVefTK9V2VRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7164
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDI5
LCAyMDI1IDY6MzAgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+IDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MiAyLzJdIGRybS9pOTE1L2FscG06IFJlbW92
ZSBwYXJhbWV0ZXJzIHN1ZmZpeCBmcm9tDQo+IGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMNCj4g
DQo+IE5vdyBhcyBpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzIGRvZXNuJ3QgcmVhbGx5IGNvbnRh
aW4gYW55IHBhcmFtZXRlcnMgaXQNCj4gZG9lc24ndCBtYWtlIHNlbnNlIHRvIGNhbGwgaXQgYXMg
YWxwbV9wYXJhbWV0ZXJzIC0+IHJlbW92ZSBwYXJhbWV0ZXJzDQo+IHN1ZmZpeC4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
DQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoN
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyAgICAg
fCAyNiArKysrKysrKystLS0tLS0tLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jICAgICAgIHwgIDIgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCA5ZjRhOWQ4YjRkZWMuLjYzNzJmNTMzZjY1YiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gQEAg
LTQ5LDcgKzQ5LDcgQEAgdm9pZCBpbnRlbF9hbHBtX2luaXQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlpbnRlbF9kcC0+YWxwbV9kcGNkID0gZHBjZDsN
Cj4gLQltdXRleF9pbml0KCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCW11
dGV4X2luaXQoJmludGVsX2RwLT5hbHBtLmxvY2spOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBpbnQg
Z2V0X3NpbGVuY2VfcGVyaW9kX3N5bWJvbHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmNydGNfc3RhdGUpDQo+IEBAIC0yNTcsMTIgKzI1NywxMiBAQCB2b2lkIGludGVsX2FscG1f
bG9iZl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWlu
dCB3YWtldGltZV9pbl9saW5lcywgZmlyc3Rfc2RwX3Bvc2l0aW9uOw0KPiAgCWludCBjb250ZXh0
X2xhdGVuY3ksIGd1YXJkYmFuZDsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5hbHBtX3BhcmFtZXRl
cnMubG9iZl9kaXNhYmxlX2RlYnVnKSB7DQo+ICsJaWYgKGludGVsX2RwLT5hbHBtLmxvYmZfZGlz
YWJsZV9kZWJ1Zykgew0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMT0JGIGlzIGRp
c2FibGVkIGJ5IGRlYnVnDQo+IGZsYWdcbiIpOw0KPiAgCQlyZXR1cm47DQo+ICAJfQ0KPiANCj4g
LQlpZiAoaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5zaW5rX2FscG1fZXJyb3IpDQo+ICsJaWYg
KGludGVsX2RwLT5hbHBtLnNpbmtfYWxwbV9lcnJvcikNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlp
ZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+IEBAIC0zMTIsNyArMzEyLDcgQEAgc3Rh
dGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAs
DQo+ICAJCQkJCSAgIWNydGNfc3RhdGUtPmhhc19sb2JmKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4g
LQltdXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCW11dGV4
X2xvY2soJmludGVsX2RwLT5hbHBtLmxvY2spOw0KPiAgCS8qDQo+ICAJICogUGFuZWwgUmVwbGF5
IG9uIGVEUCBpcyBhbHdheXMgdXNpbmcgQUxQTSBhdXggbGVzcy4gSS5lLiBubyBuZWVkIHRvDQo+
ICAJICogY2hlY2sgcGFuZWwgc3VwcG9ydCBhdCB0aGlzIHBvaW50Lg0KPiBAQCAtMzUwLDE0ICsz
NTAsMTQgQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0K
PiAqaW50ZWxfZHAsDQo+ICAJYWxwbV9jdGwgfD0gQUxQTV9DVExfQUxQTV9FTlRSWV9DSEVDSyhj
cnRjX3N0YXRlLQ0KPiA+YWxwbV9zdGF0ZS5jaGVja19lbnRyeV9saW5lcyk7DQo+IA0KPiAgCWlu
dGVsX2RlX3dyaXRlKGRpc3BsYXksIEFMUE1fQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwN
Cj4gYWxwbV9jdGwpOw0KPiAtCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVy
cy5sb2NrKTsNCj4gKwltdXRleF91bmxvY2soJmludGVsX2RwLT5hbHBtLmxvY2spOw0KPiAgfQ0K
PiANCj4gIHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+
ICB7DQo+ICAJbG5sX2FscG1fY29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gLQlp
bnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLnRyYW5zY29kZXIgPSBjcnRjX3N0YXRlLQ0KPiA+Y3B1
X3RyYW5zY29kZXI7DQo+ICsJaW50ZWxfZHAtPmFscG0udHJhbnNjb2RlciA9IGNydGNfc3RhdGUt
PmNwdV90cmFuc2NvZGVyOw0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfYWxwbV9wb3J0X2NvbmZp
Z3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiBAQCAtNDIwLDEwICs0MjAsMTAgQEAg
dm9pZCBpbnRlbF9hbHBtX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCQljb250aW51ZTsNCj4gDQo+ICAJCWlmIChvbGRfY3J0Y19zdGF0
ZS0+aGFzX2xvYmYpIHsNCj4gLQkJCW11dGV4X2xvY2soJmludGVsX2RwLT5hbHBtX3BhcmFtZXRl
cnMubG9jayk7DQo+ICsJCQltdXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbS5sb2NrKTsNCj4gIAkJ
CWludGVsX2RlX3dyaXRlKGRpc3BsYXksIEFMUE1fQ1RMKGRpc3BsYXksDQo+IGNwdV90cmFuc2Nv
ZGVyKSwgMCk7DQo+ICAJCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJMaW5rIG9mZiBiZXR3
ZWVuDQo+IGZyYW1lcyAoTE9CRikgZGlzYWJsZWRcbiIpOw0KPiAtCQkJbXV0ZXhfdW5sb2NrKCZp
bnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCQkJbXV0ZXhfdW5sb2NrKCZpbnRl
bF9kcC0+YWxwbS5sb2NrKTsNCj4gIAkJfQ0KPiAgCX0NCj4gIH0NCj4gQEAgLTUxNyw3ICs1MTcs
NyBAQCBpOTE1X2VkcF9sb2JmX2RlYnVnX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gIAlz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiAgCXN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLT5lbmNvZGVyKTsNCj4g
DQo+IC0JKnZhbCA9IGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9kaXNhYmxlX2RlYnVn
Ow0KPiArCSp2YWwgPSBpbnRlbF9kcC0+YWxwbS5sb2JmX2Rpc2FibGVfZGVidWc7DQo+IA0KPiAg
CXJldHVybiAwOw0KPiAgfQ0KPiBAQCAtNTI4LDcgKzUyOCw3IEBAIGk5MTVfZWRwX2xvYmZfZGVi
dWdfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpDQo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yID0gZGF0YTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3Rv
X2ludGVsX2RwKGNvbm5lY3Rvci0+ZW5jb2Rlcik7DQo+IA0KPiAtCWludGVsX2RwLT5hbHBtX3Bh
cmFtZXRlcnMubG9iZl9kaXNhYmxlX2RlYnVnID0gdmFsOw0KPiArCWludGVsX2RwLT5hbHBtLmxv
YmZfZGlzYWJsZV9kZWJ1ZyA9IHZhbDsNCj4gDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IEBAIC01
NTYsMTIgKzU1NiwxMiBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QN
Cj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ICB2b2lkIGludGVsX2FscG1fZGlzYWJs
ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IC0JZW51bSB0cmFu
c2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAtDQo+ID5hbHBtX3BhcmFtZXRlcnMudHJh
bnNjb2RlcjsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+
YWxwbS50cmFuc2NvZGVyOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCB8
fCAhaW50ZWxfZHAtPmFscG1fZHBjZCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQltdXRleF9sb2Nr
KCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCW11dGV4X2xvY2soJmludGVs
X2RwLT5hbHBtLmxvY2spOw0KPiANCj4gIAlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQUxQTV9DVEwo
ZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLA0KPiAgCQkgICAgIEFMUE1fQ1RMX0FMUE1fRU5BQkxF
IHwgQUxQTV9DVExfTE9CRl9FTkFCTEUgfA0KPiBAQCAtNTcyLDcgKzU3Miw3IEBAIHZvaWQgaW50
ZWxfYWxwbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCSAgICAgUE9S
VF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+IA0KPiAgCWRybV9kYmdfa21z
KGRpc3BsYXktPmRybSwgIkRpc2FibGluZyBBTFBNXG4iKTsNCj4gLQltdXRleF91bmxvY2soJmlu
dGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9jayk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZpbnRlbF9k
cC0+YWxwbS5sb2NrKTsNCj4gIH0NCj4gDQo+ICBib29sIGludGVsX2FscG1fZ2V0X2Vycm9yKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDU3ODc5Y2M1NTQ2ZS4u
ZDIzMTNlMTFmMTE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTg2Niw3ICsxODY2LDcgQEAgc3RydWN0
IGludGVsX2RwIHsNCj4gDQo+ICAJCWJvb2wgbG9iZl9kaXNhYmxlX2RlYnVnOw0KPiAgCQlib29s
IHNpbmtfYWxwbV9lcnJvcjsNCj4gLQl9IGFscG1fcGFyYW1ldGVyczsNCj4gKwl9IGFscG07DQo+
IA0KPiAgCXU4IGFscG1fZHBjZDsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gaW5kZXggMmVhYjU5MWE4ZWY1Li4xMTg3M2ExNTYxMGYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTU1NTMsNyArNTU1
Myw3IEBAIGludGVsX2RwX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
IA0KPiAgCWlmIChpbnRlbF9hbHBtX2dldF9lcnJvcihpbnRlbF9kcCkpIHsNCj4gIAkJaW50ZWxf
YWxwbV9kaXNhYmxlKGludGVsX2RwKTsNCj4gLQkJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5z
aW5rX2FscG1fZXJyb3IgPSB0cnVlOw0KPiArCQlpbnRlbF9kcC0+YWxwbS5zaW5rX2FscG1fZXJy
b3IgPSB0cnVlOw0KPiAgCX0NCj4gDQo+ICAJaWYgKGludGVsX2RwX3Rlc3Rfc2hvcnRfcHVsc2Uo
aW50ZWxfZHApKQ0KPiAtLQ0KPiAyLjQzLjANCg0K
