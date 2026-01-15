Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD93D24142
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 12:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C347F10E0E0;
	Thu, 15 Jan 2026 11:09:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fqk6oNA/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8C010E0E0;
 Thu, 15 Jan 2026 11:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768475397; x=1800011397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GMqBKHgzJSFxMWIde9pwCB/u9XR6NAfOxET92d8BYOw=;
 b=Fqk6oNA//aYQGRPR5yw5VdxqXJoi6Z9J1mOos9DgrUa9s12/5HTbEp2q
 NxdHJznunAtyrY1yKFArO4pQ54l26HCrsjSFd8mfrFG9Waqg/ynHWfidb
 YbPYe6uSpPF8UuWly1tpysRBV7/evf/w/I4PPDpi62UkDm11ydcJvv624
 ksPVMfL++bFEGHbu58IqFQY+zI0fQTJtg8+g6jgBBo28Zf187MbjmNXFi
 U5JF+PCZqjahDQQm1g6g2as7WvPXSAt+rfdnP1GFCRgsSbefi9VKdTQR2
 GhgfttSNnALypTTPpP2zGg5huuR3eX1MEpF99vJC9UkSutxDe79ShR98e g==;
X-CSE-ConnectionGUID: wNQBl/FOR6eFNZLPCASCUQ==
X-CSE-MsgGUID: 8OZ2e6EYR4a7EgDIKkzbXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="69758829"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="69758829"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 03:09:56 -0800
X-CSE-ConnectionGUID: ep5a8t0XT1iZuZkL0NY82Q==
X-CSE-MsgGUID: XQDrdKhkTqm+iJRRyTx7BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="209404616"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 03:09:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 03:09:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 03:09:55 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 03:09:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aj2PslLhwGCAIYz15nZmmmcTgHhE38PuR/RHW15C16vQHcXpa3rbpILGSWLRmyeZZZKmIkdJJxDZjfc5t9lOBkWM5e6viSDltbvfTOSEjbmM9vAuGHzUG8BzhKhxHOEAGVFLCUG6//UM7zbbmfKOXeJ2sxuHBFQjLZs5qvSnv6F6MpexthKzKtuE1z/H6/JXuM5Ba7d0WDGYbtdcUx3vSPMbv3E365k+ENZW/dTSJGjkVi5jjeJcuENncijCy8V7ZHSCvTP4fYmfczn/HCYRBIkrwie/xZSFJIQHOy9zg/vDqV05uiz8pwT+SdNLHBjI5N61Fd/yLiQ7gRUEAvEHDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GMqBKHgzJSFxMWIde9pwCB/u9XR6NAfOxET92d8BYOw=;
 b=TH4DkDqJ/6np20wVAL9DJHcsDaWBDlXqCI9IuwfCWF+/81hb5NZjHW94i5vfxFJlxQCeJqQxI/p8pNLiGSzavu3iDmZKA5eRCpUmps0uIZ9YakSnHvx65R2m1wvVgmod//++oQQa/tHoLD2ESU7wrNhOMbOWrkJT+Jbi4dQcPLAy3X62mrYNRSo74ZZfzzWoSlEDl6MIs8nDQ0Wpt3hg4lCPgwJrhv9eFA9p/PHvnB8VP74FyYozjPFPA7gdlrf8Ii0TLk8iiCPFuowGHFPetsyIpBJcZdz/EJvs7jpxFQ1mTstz+6y+QC6K7ks2V7XilNMUpHPu8l3vUgMaN1Wxkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6281.namprd11.prod.outlook.com
 (2603:10b6:930:23::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Thu, 15 Jan
 2026 11:09:51 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9520.005; Thu, 15 Jan 2026
 11:09:51 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/psr: Don't enable Panel Replay on sink if
 globally disabled
Thread-Topic: [PATCH] drm/i915/psr: Don't enable Panel Replay on sink if
 globally disabled
Thread-Index: AQHchezM28qWm4o+Vk+Zh9h6k6yv2rVTEn6g
Date: Thu, 15 Jan 2026 11:09:51 +0000
Message-ID: <DS4PPF69154114F14FB57A5C217035A8C71EF8CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260115070039.368965-1-jouni.hogander@intel.com>
In-Reply-To: <20260115070039.368965-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6281:EE_
x-ms-office365-filtering-correlation-id: 2ac41704-f1c6-40ce-a1c3-08de54269aa2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YjRHSXgxTmFhK3BpMkkxcnBQQUtGVklYVG9OWDNEcWt0WnI1UjdhU1JnaCtl?=
 =?utf-8?B?L3pyd0lIQU9WdzBwcTJBc05BUXRndTNMYi9HdDQ0SGVaYmY3TnZvWEJ1QVdR?=
 =?utf-8?B?Yy9mRWd5Z3U4VDg0RUs3NWtpdmY4QXFWeG5RRmVHWTdPWXVoWFZKSldSVXdy?=
 =?utf-8?B?c2RGNFUreVVzd21yamE4bE5sZWZ2Y3Nma0lDS1JMaU5HSHM1TFpKRkFuUVJk?=
 =?utf-8?B?RXVCM2lDQi9ZN3Fvb092QVJGODJoM3U0L1QyT2E5QisydjNMRTRXMGprQ0pm?=
 =?utf-8?B?Ym9sWkV0YWwwM0pOUFVrNDJQVUVuNzI4eWNEVUZld01rOVJJRGFheWh1QVJ2?=
 =?utf-8?B?RkZhT25DME4waUhBU2NCQW0rOExwOHJpd25zanNkWCt1aEpQVUg1UGs3cFZR?=
 =?utf-8?B?VXJMdEJDWGNNVlR2N2xRVER4QlR6OWtyeE9VQVkvTjY5Vk9BU0hJZ040MXpO?=
 =?utf-8?B?Ulo4MTIxVEVoTkNKcEI4NXFwaFBTaDQ5Qmg5RGNiaGdJQitnTDdiZmMyMksz?=
 =?utf-8?B?ejVRUG9iZlhLK0pvY1phbUkwOUIzY1d2d2E3NTdyd3ZIUHRtaTlmVXU3b29o?=
 =?utf-8?B?WDgyY21DL3lvZVFOK1BKbzlyS01oRUdyRFZQa3c0eHNZeVNYeW5qUFprQVJB?=
 =?utf-8?B?cUtIQVRpMSthVVUzTldUczFXcncrQTNEcCtiUk9ibEdoQkgwT05LVmV0N3RJ?=
 =?utf-8?B?OGRib0h2bzg5L2FQSm1SbmY1YWRoYmMwNlZkQWNCS3RjMHZFWXN0Y05UQysw?=
 =?utf-8?B?UVBEN2VBdWFIcVRobEJycElMRGRUWlJna0JoNk4zVFNod01xbEowU3BMaGxV?=
 =?utf-8?B?cllyQ0EyTHFZek83NnMxbE11NWdEZlNyaVJNUzFMaklaeFR4R2g0U0Z1MzBT?=
 =?utf-8?B?bG5WV1hONDM4V2VISmRSbFE2eUd0TWhWYW44cXlQRVdmUjR0eXhQRXJPcEcx?=
 =?utf-8?B?QXRVTlVXM2ZjMjVEZ2tmNW1Vc3VyZGFvbHFxcUpoUWI4WHpKditpWmpWY3hW?=
 =?utf-8?B?NUFNRHY0WkZQNU5VS2RUODk3ZDlxSk9GRGQ3RzhGVjZmS2xTdVRQTkY1d09F?=
 =?utf-8?B?em4vajlJdGNNalBRdFFHYWJBOEw0eFR2MU9vdFJlNFdqNldYRzM1clJwcmFQ?=
 =?utf-8?B?RWdiSFpMWXZFcmxyc2ptcStyelhWT1kxbDFucVVDbUx2eWl4U0w2R2l6UVNC?=
 =?utf-8?B?MjlDQVF4QWRzTlplSDF2WmpvS3Fod1NocDA3aG03c01ITWFBRmgvQkhPaG5H?=
 =?utf-8?B?MUNWUDk2ZDUrbXVYWHg1SmF1UW5TK0Jyc0dYWHkzQS9TZjIrZnhteTBIbTNF?=
 =?utf-8?B?S0xFekZhRjB3Vitzc3BVSTZFcytBczBlQU9HcUY5NzE5SmJRdlVVOFNaWkZa?=
 =?utf-8?B?Z2RORDVmSDFRTTVzeWhoSXFDeDRPdVZGMGsxbC8xWkVlNE5nbWZkYnVqNVVr?=
 =?utf-8?B?WnlQMFlYWEhWNWluWUZhek1qd3lGT1VEM0JTSlNqL3FxV05aNFdHeDkxWEhJ?=
 =?utf-8?B?OUw5OTI3YnFiR3lSK2Ywbk1ZN0lNYnhOUld5SjBBRllrcFBmT3FuVDVDRXFO?=
 =?utf-8?B?dHdlOWlqVDYzekR0akJKRzN0aUZqSS9VejNGSkxtcXZYRlRpS0krTXZ6Zm4w?=
 =?utf-8?B?Ynh2VTVvaUZtUlFCMWJzT1JlckNlbkZzaDNBN2xKb21nR1IxY2U2eGZqaFg0?=
 =?utf-8?B?bys2Vi9aTVl6cmQwOXZ1Mk5YR0Uxbml1T1dETUxRY1haMXkza1orYzQxeW9i?=
 =?utf-8?B?TlA1T0VXU0ViK1FCWWYrRnVTdTFvSTJMdUp3ZlRzOVozZnBJdkY2UGpqMXd6?=
 =?utf-8?B?am1ESExYVWlGOEFjWlVnUGRZQlVRN0UwME5DLzQ4NTBCNEZlb0FJYWtFTkt4?=
 =?utf-8?B?Q1JKQnpOQXJaQS9YNHFGMG9VeEZmdHZnZlFVM3FjYlI3Tm1LREtaMjNrSVhl?=
 =?utf-8?B?dEUySHhZTE5KYUlSVEZObWdpRXJLdmFGR253aE5TOTJiajJCM056NU9UWnJW?=
 =?utf-8?B?NDd0NHM3dXQxYmNCSFZubUxDOXVUdTI5SXF2UFQ4Q3hNVURxdmRJNzFxNHhP?=
 =?utf-8?B?TTNJMDcwYWorY29qNk8zc3hnOGFsOGxTSDJ6ejRCNjFsTmZ3UnNTQnlBWWVP?=
 =?utf-8?B?bFZ5UStuTGtBbjBhSjVnN2NpM2l3bmNvVmNhUnJ6NXhhK1BsaWZnYkZIaVpj?=
 =?utf-8?Q?WbdeEen/9mmyC7gHKy/g1Cg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHN3T0Ftd050VjU5TVhqdHVXbFlkYmM5cURXZ2w5dnViSHhPUFYzclk1bndK?=
 =?utf-8?B?VkppdGd4Slp2K1ZTVUtPeGY1eFFvQlo2NVNTcHNtZ2FXQzNyQWNLS3R6NTlN?=
 =?utf-8?B?cXdJNFpJQkx2Y1U1S0NpMG4wZVNQVDN0MGZUWmIwem8zQmhDN1o5ekpGUU81?=
 =?utf-8?B?Z2ZXZDlZcGNaVVFmY1MyVkpCaDh4NnhNL0s0MU1oTURJUHhBK3dwRmd5MzNH?=
 =?utf-8?B?TlJaZ2lxTElPTmFuUnlSOUgrdUxkL3o2SzEycGh4SlFhMUlLSUxJRmk2RWtF?=
 =?utf-8?B?Q3FNL2ZqU0FoOXpBU1lMZDBPS3F0UHRmb3FkMlJweWJsREVMNmVHV3FndThB?=
 =?utf-8?B?RmpNczVEV2ZQc1QrcDlrcEp5MHFjNGJ0VFVyNkZ6c1d3aUdQTk9HdGt5NlRG?=
 =?utf-8?B?RG5zbEV2bm1NdzVYdlVtajNsZ2Nwbjk0ZnN4ZXdoR1hVMFhPNXVMc3Ewa05S?=
 =?utf-8?B?a0k1MTdmTnJjWGovdkRkaFJCQ3B5ZXFzSlRtcTdJbnBmbDc3bjlwdUNKSGMx?=
 =?utf-8?B?SHQrc283MEdvRXhSc1NKZk1MWGc0ZVJGcytwb2N4MldoUFpvdndRUWphZlh6?=
 =?utf-8?B?K1NrS1M5QlZOOUNCTDBROVZrMXIwQWZlQXAyQ05pTlh2bk9jS0NXTFJQSlJW?=
 =?utf-8?B?K21uOGNsdDZHNnVkU3kyOWtBZ3FhSmdwbHBtQ2htQUxWZG5aWEdzalg1ZEln?=
 =?utf-8?B?amhraTNwb2t5cFpGR3dYNnh0T1NQZ1hJRTRXeWJPUWwwMk14Y1pOYStNZDQ3?=
 =?utf-8?B?Yy83cFZacmhEOHRCMUdnTkhCWjVUcmpvSkFVMnFVQTB1RFlqNXJ4V0U5VzR0?=
 =?utf-8?B?enNLMTlCaFlHU1pEa0o1RXRyVFNUR1M3aGlyMjBMUmZKMDdFWnZiVHNtT0hG?=
 =?utf-8?B?eGp5MGhrTTA0OXFJMEM0V1RjaEhZMWpWUnZMWUFZaFkwT0dGb0hWV0I3eUM4?=
 =?utf-8?B?NldEY1dJWUpXV1JsMk9DNWZHMlpsUTlqRk4zaUx2YldtZlVCMXRpVEZ1T2lX?=
 =?utf-8?B?a1FQamltdzc3MEw5ZS9MYlJsdUI5QjgyM212MVpub0hYUHIvczU4TzRzTG1R?=
 =?utf-8?B?dEFjdE1pNnNTMHNUOE5rMEpkTk9mSUJMS2NhYnd3TG1FdmJaczJuNXdtSHRl?=
 =?utf-8?B?eTJibGQyUkgxR0thZzdEd1N1WE1SaU1CbUJPNktaRUt4NERHUFNYajVpanpj?=
 =?utf-8?B?TUlsQ2E3V1dSM2s3SFJNcXRDRjlBR1hqZmxTOHR0c3RTNnVFL2Z1SGs4dmd1?=
 =?utf-8?B?ajVZTzkrdEhSdi9pNWdCTWpWak0xSU9MdUZhNDlkRlV2QURabFdGTVJlMnFj?=
 =?utf-8?B?VlFIczBsNTdhSlMyK2h0d1NZcC9ZS3VEajUzRllNQUI0cUJkbkZQZVc5MFNY?=
 =?utf-8?B?azE5TUlnN0VhVTNFWjBxek1WeGhBZXprcWxWaldDdW15UmRlYnlqeSs0UUpH?=
 =?utf-8?B?djd3UEFZL0dBcG00a1R5dE9PdEgvc0dVWG9PakFJOC85L1JwK2FtWVdSM1M2?=
 =?utf-8?B?SndmejlaTjl1NlhsK2kzTVVaeENqVEt1RTlFWGVsNWtJUStNbC9JU0pocGtz?=
 =?utf-8?B?Y2c2Z0hnUzI0RU9jR01TNnVUdDFjbVFVdTFuUjNSTmlQY2s2ZnF3RFZFRWF1?=
 =?utf-8?B?M2VJVEZBMjJUclJCeFVyZzFqWk1aYUlSdG9oYzZzVEV4anpIUyszc3VyN2Y1?=
 =?utf-8?B?c2thQjFYWDcrZk9aTDhybnR0ZVh4Ti9ybHI5bDFpZDM3aVNGZ0k4SHVIVnV5?=
 =?utf-8?B?TlQvTm5vQitEL05pR0FERlhuK1huWUMwaFk3aXdjOGFESjMwT3JCd2dFbE5D?=
 =?utf-8?B?UEJEa3YwVWRHeEZIeVl5Z3R0MGpCKzh1ZTIzZGxDZTdaR2pnc1pBYTFXbVNs?=
 =?utf-8?B?NEltSWpSQ0hzUnJlWWgrODJmM1BjN2tUYjNSK2tXZHhVMnBrL0JadUl6QlBJ?=
 =?utf-8?B?Yk1LcWR4cy9wOFRsc2pScHluQi9pbUY1SmtZOVBxZnd3aER1dWc1U3BVQk1q?=
 =?utf-8?B?eFhiZU42ZGtVaEpZUEwwY1EzTG5sOEpUZzB5b05YcHZWL0hjUHFubG8vaDg3?=
 =?utf-8?B?dW15QXV6MWltSklxbFJHS29qVmFkWEE5R0RXajc0L2tXbitkdGxNcEJMS2Uv?=
 =?utf-8?B?eFVlcllyRlNnalUxOVA4SHJNSmJRNGdBQVhWTktxTHVsYUJ0MkUrL2NjbWJy?=
 =?utf-8?B?RkQ4ZUdwRFdUc042MWR0c1Izdm9OZmRuTjZKM25mUnBVTFlUNjBqZkpwZVRN?=
 =?utf-8?B?dVppZzNqK09pSFdzRTMwU20vV00zOTRVNlNCVzUzVVlUYVZwMUFMaC9PN3lB?=
 =?utf-8?B?YjNSYkE4NmdsZFNnUHF4WlhpanhCakMvUm9yVENuQm5ReUhzOW1aQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac41704-f1c6-40ce-a1c3-08de54269aa2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2026 11:09:51.2489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9jcfUXqYTLErKjhZRjp4e0mwIgIEzWc0J+C9nFJ2yshkk7+arV7M5ojJDZyVQ0r/+2cfiPqXejOEQtRzDjd9cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6281
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIDE1IEphbnVhcnkgMjAy
NiA5LjAxDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBKYW5p
IE5pa3VsYQ0KPiA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbyA8
cm9kcmlnby52aXZpQGludGVsLmNvbT47IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVj
dDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IERvbid0IGVuYWJsZSBQYW5lbCBSZXBsYXkgb24gc2lu
ayBpZiBnbG9iYWxseSBkaXNhYmxlZA0KPiANCj4gV2l0aCBzb21lIHBhbmVscyBpbmZvcm1pbmcg
c3VwcG9ydCBmb3IgUGFuZWwgUmVwbGF5IHdlIGFyZSBvYnNlcnZpbmcgcHJvYmxlbXMgaWYgaGF2
aW5nIFBhbmVsIFJlcGxheSBlbmFibGUgYml0IHNldCBvbiBzaW5rIHdoZW4NCj4gZm9yY2VkIHRv
IHVzZSBQU1IgaW5zdGVhZCBvZiBQYW5lbCBSZXBsYXkuIEF2b2lkIHRoZXNlIHByb2JsZW1zIGJ5
IG5vdCBzZXR0aW5nIFBhbmVsIFJlcGxheSBlbmFibGUgYml0IGluIHNpbmsgd2hlbiBQYW5lbCBS
ZXBsYXkgaXMNCj4gZ2xvYmFsbHkgZGlzYWJsZWQgZHVyaW5nIGxpbmsgdHJhaW5pbmcuIEkuZS4g
ZGlzYWJsZWQgYnkgbW9kdWxlIHBhcmFtZXRlci4NCj4gDQo+IFRoZSBlbmFibGUgYml0IGlzIHN0
aWxsIHNldCB3aGVuIGRpc2FibGluZyBQYW5lbCBSZXBsYXkgdmlhIGRlYnVnZnMgaW50ZXJmYWNl
LiBBZGRlZCBub3RlIGNvbW1lbnQgYWJvdXQgdGhpcy4NCj4gDQo+IEZpeGVzOiA2OGYzYTUwNWIz
NjcgKCJkcm0vaTkxNS9wc3I6IEVuYWJsZSBQYW5lbCBSZXBsYXkgb24gc2luayBhbHdheXMgd2hl
biBpdCdzIHN1cHBvcnRlZCIpDQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gQ2M6IDxzdGFibGVA
dmdlci5rZXJuZWwub3JnPiAjIHY2LjE1Kw0KDQpMR1RNLA0KDQpSZXZpZXdlZC1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKysrKystDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTFmNGFjODZjN2FkLi42MjIwOGZm
YzUxMDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtODQyLDcgKzg0MiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3Npbmso
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gDQo+ICB2b2lkIGludGVsX3Bzcl9wYW5lbF9y
ZXBsYXlfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gLQlpZiAo
Q0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ICsJLyoNCj4gKwkgKiBOT1RFOiBXZSBtaWdo
dCB3YW50IHRvIHRyaWdnZXIgbW9kZSBzZXQgd2hlbg0KPiArCSAqIGRpc2FibGluZy9lbmFibGlu
ZyBQYW5lbCBSZXBsYXkgdmlhIGRlYnVnZnMgaW50ZXJmYWNlIHRvDQo+ICsJICogZW5zdXJlIHRo
aXMgYml0IGlzIGNsZWFyZWQvc2V0IGFjY29yZGluZ2x5Lg0KPiArCSAqLw0KPiArCWlmIChDQU5f
UEFORUxfUkVQTEFZKGludGVsX2RwKSAmJg0KPiArcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVk
KGludGVsX2RwKSkNCj4gIAkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBQQU5F
TF9SRVBMQVlfQ09ORklHLA0KPiAgCQkJCSAgIERQX1BBTkVMX1JFUExBWV9FTkFCTEUpOw0KPiAg
fQ0KPiAtLQ0KPiAyLjQzLjANCg0K
