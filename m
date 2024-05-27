Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5F28CFA01
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38C410F917;
	Mon, 27 May 2024 07:24:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dil8FpL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C23C110F917
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794673; x=1748330673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NY0HNy4nyMSwmd5lWg0qJI/OehtSIO/NqbEmMeyK54Q=;
 b=Dil8FpL/UOAikCoeLsj+nUzcfzXe3PddFCZOys47gV/OM4U9D2qJxfM1
 syweO6Z+yDj9U5aSRjswfzdY9o886ZLjeix/4sM/uBxsOHTLyxSsrxXLx
 4f4CAITEAuqbAKodNdmrZITN4fZ+zdZ+ofBeTL90o3dUvQ15L9wy+Vmhl
 zucD2YZiVK6Mj9wN4lJF4Yc7NwneJJ53TVkLiZ6Bq+LvQN71lryfGxVd2
 QE+0nJxOZSweChKQXky/RMqgHB/m8GgVTHPJ8sfpmvPOcEeruvIX8w7rT
 5HNtorEeXmT6fIFmaFbIJXY6oY09MY5o8SRkBw/8frwtv4II2Ds/r+TO2 g==;
X-CSE-ConnectionGUID: ROV64cZ2ScWS2MFveETekA==
X-CSE-MsgGUID: xnFphtB8Q8SSrSdTVi0/sw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930681"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930681"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:24:32 -0700
X-CSE-ConnectionGUID: FawwJ3D7RcSjb2McWnfN7w==
X-CSE-MsgGUID: N/tVStc2SwaJUHOuCh8dkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39103944"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 00:24:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 00:24:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 00:24:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 00:24:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 00:24:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egv6DBWudHJyDBsTFROMkxUhp+8WXDP7ZCsNgtZV7/IKIVeziz4Ne7YFe1O2BXl98fcJ0nTAHCMgOSvEPU/dAXqiSd5xNPgh8sgjg6KDzBXnu+irihJrzwD9cTm2ei9dOjZXO5n9EXdOLchInRXCbFQXflx9+9KkxMpC46YO1Ai+BDN28p98y7JzjPw2ptFygN3vxBiqTQN7MtXs2+C9ZBNan5IOwAJa/iahdwlVvLaQJNgcOJeN8elreavixtU9PqkXhDjtcLk1owm+uykQS4/6KnWf4E/aYI6Bb4NR7TQc1qflBhRnRT1IzeS5SxYkLvbw0w72e+4hFD7bmSaGvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NY0HNy4nyMSwmd5lWg0qJI/OehtSIO/NqbEmMeyK54Q=;
 b=e9kziuieZjgS+1TiMXgMXRTQMrDwuOGy1ebbF0oSONt3XXEq973HHMb7ivrCWWFREskySjYX3t/AyXBa1SgRTenPs76NxWtIneNh4S0U69NVGaV9VyL4OkizSt+C79gtsvs7aIEoxjLFQuTTLQeSZdrogj+NX+2fFaBrHvMTlSHtfIYPR+Sji18S2g6AngWOgn6qrk54LEjF82qlZOBbqY70OCKCRDCu4Q1QWYPnKjE/TqiirRb5TyfBQ0YduiWzRUo4e9BQisNCEXBXRKbhLz0HZP/VTEf62QCU7F3ZWHFNeTOFRrQMi6k2dFCX89cYvSQAzSl4BX+4Thgy+cViSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PR11MB8713.namprd11.prod.outlook.com (2603:10b6:0:45::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.29; Mon, 27 May 2024 07:24:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7611.025; Mon, 27 May 2024
 07:24:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v2 00/17] Panel Replay eDP support
Thread-Topic: [PATCH v2 00/17] Panel Replay eDP support
Thread-Index: AQHaq1t4MwW4JoAFokSlKKnTPdCnRbGl5rCAgATQZwA=
Date: Mon, 27 May 2024 07:24:27 +0000
Message-ID: <c5cfee460b7ca066414bd2caace05595c695064f.camel@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <PH7PR11MB59815451039C10F4B26D9C4FF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59815451039C10F4B26D9C4FF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PR11MB8713:EE_
x-ms-office365-filtering-correlation-id: ed24e34f-0a3a-4c31-cb2f-08dc7e1e0afb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MmlqcUpPNGNVbXBtS0JSazlSOS9JczFNTXBvK3U2RXJ3N3FnOTNmTjhXck5z?=
 =?utf-8?B?ZjhiYXhpN1Y5VzYyTEhVQ0R3cnJoaTJXRG9JbkIza1dXNlRDMzY0NGVIQWRW?=
 =?utf-8?B?ZkJ5enBHdXE3eTRpZEo3dTgvazlOTmJMZVBnQ0MwRG5zS0t3NkJoTll3NkRZ?=
 =?utf-8?B?S0ZzZU9FcWNtMFR4ZkdQSSthZDNwUEowMzNCSUZvdzlFcG5ZZmJLajROZkw0?=
 =?utf-8?B?NzVnUDZjUWpobEpGZ2I4TWVKVk5UR2M1ajFESEpCUVRnVWZaUzNaQzI4ZlI0?=
 =?utf-8?B?UGEyc1VCaTVwWVJrY0hkVENURkdLdUsxUEhORTJvVWZBOHdYOFRSdmlleS9L?=
 =?utf-8?B?ajFLMFNjdmF5NkRHS1Fnb0k3VTBWYUorMDZ5b25wWE1MRG5pRjluTFFZWXRU?=
 =?utf-8?B?NzRrTUZrTFgxMldwTkpJSlUzZE9vcWp6Q2pjSnlvQTdMN05rWWNjci9vN1hE?=
 =?utf-8?B?V1hGK1VqcElkcy93dmJLWjcybDVLTUpRWkdxdVNCNS9BbVBCbDB5NzlGUHNZ?=
 =?utf-8?B?bTVkdU5qN0dSL05ENDZTL3Q3NjVSbktQWDQ2eG12WTRFRm9sZlF5dm9HV29Z?=
 =?utf-8?B?R2pUKzYyc2ZjUDVGNW5pUzJmcXdwdTIrOGdPQ3VoUEloWHZFMVNlQkYxcURG?=
 =?utf-8?B?Rno1RWFLRTM1dS9EWFJhNElpbVFwV2J3VWlKVmN1Zm9GK3RIVzlFY0ZBZTg0?=
 =?utf-8?B?VEZlaHN1NHFrazF1SHpsQzJ2NzkvdHMrRG5BNXZob2s1dmxFVDNVaU44VVo3?=
 =?utf-8?B?aWxvSEk1RkFGNlYxRGs0N2Y1SEFlbEpKN0VvTDFCNGI3QzlGaFdGeS9Zands?=
 =?utf-8?B?T0VzQ20zTlJlNWZpYzljOWV1OFpacXlkNGxROU0xeGx5b2FUUXVyRHBDWWFp?=
 =?utf-8?B?bFRXdEc4aWdnWjRoYUJ5RkNHbFcvUHhQdlVKZ1pkQmRGRUF0YmJpNVBFMFhl?=
 =?utf-8?B?cUkyVUFIRWdUR3FhN0hvRC9jbGpiZzErTnNOY1RDdGh5TjlDR0lSUnpJcDha?=
 =?utf-8?B?K0lsc05VN2ppcE1jblA3WGFWWUZUc041RUFPSkJYQmJBVU5PTHI5clhxUlN3?=
 =?utf-8?B?WXNuMGpqVDR3VW1ZeTFHQStIeU5PSkN5NWZtU0hVa08xTUlPc3UrQmZjd1o2?=
 =?utf-8?B?Nyt0Uk1rZ3VQNTJVQk9RN0JXeXFQKzQveWdYQVdablFKVGdxVzg3QWRyZDhr?=
 =?utf-8?B?L3pIVTNoSVJHZFcreHd6S3ErWTd6Q2ZMbEJBWENXVHRvYjNFV212RXA0TEZF?=
 =?utf-8?B?aWNaUldvV0ozQVNURDNETnJ3N0hTNlQvcTFRSEpKb1JVMmMyWkJpMVVDSU9o?=
 =?utf-8?B?UDgvb04vcktaYmtSandMbGpKWVFYd0VJcFNBZUdBakpsRWg0V0ppbUZqKzV0?=
 =?utf-8?B?cUpiZktxQ1N3TEovWFhRT0pMdE9BVjFyTDFmejA3MUV5eWsvL3o5ZjNSKzJE?=
 =?utf-8?B?NWlKeDJZalZaMUFnN01Kd0hINkVTSnJ1bUJtNVI0dG9mZDNrZFp2UXh6TDdY?=
 =?utf-8?B?K3R2ekpudEdWVzF1dzBBV2ljTElwcnhMMVZ0eTZodXY5eDFIaHRqNm1aVGRz?=
 =?utf-8?B?UjJ0NVhwcWlYTjNhYVMyQlZjdWNlQTFvOC9za1I3clhBNm9KaFN1d0ZLaXVC?=
 =?utf-8?B?aVFCTXFOZXdLczM2dUxPSkR2ZXg1K1dvcDlLUGMvWFJyWDJYYkc2WEJPZnJ4?=
 =?utf-8?B?bG5qUEdKclg4M0FyMW9acDk4Sk9GcUx1RGdheTYrdWdpSW90ZWNqZXZCOERW?=
 =?utf-8?B?MUZEbnNoUzdTMExGaGx0SUlXeUZ2WlNJSDFRaDhSZDdmWUZ4dko0OTczbzVM?=
 =?utf-8?B?eWdxVisva2NDNlpta2hBdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1RVaDVCYTFFSGVlSXBaUlhMcy8rSExvRnlXa3lVQU8xVS9oTFhyREpuMDRs?=
 =?utf-8?B?akZJamZzV1laWVk2WGVDejJxRVBSSkhUSjhFMmorTVNUeUlVMTh4bjFjTDg0?=
 =?utf-8?B?bG1YRjhseGlmTnJjS3ZZdWhMTWw4WEpxVW1TY2pWMGJ1YnhqRC9sNXpKcnpU?=
 =?utf-8?B?dEYvaDNUVFVXRDM5MXhsNnJjTkxNK0ZzczJZbkJXQ0FzR0FPbzN0b3IyRmhk?=
 =?utf-8?B?QXUzb0VodWUxeGhJVkNUTzJFV2N1dDhoTFAveEw5NDhlSFZDNjd3MHBac0pQ?=
 =?utf-8?B?N2U3alVTb0UwMXdNSEFpTWZiQTFvVDRKWW5IVVZzeWpnUVczTThpNFJKbjl1?=
 =?utf-8?B?eTY4eDNVenY0UjdscVBzbXdsZDY2bTcvVzk5S0JTeDlkL29IR3FrOGs0YnJH?=
 =?utf-8?B?dHJRd0dPU0NtaFlzSUFkWUo3K0JhR2tUOGJXSENpSU02UVJMT01EQVRYY1VE?=
 =?utf-8?B?UWhmcXZKOXB2UHA1R05PUXNIaWpSMzdINVRjRTZJQ3VOMTR4ZTFmZkFrYm9Y?=
 =?utf-8?B?Nk1pYWVuN2ltUUZGTCtzVVhpTmV3WVdaWFBGc0puWnFMRmxac2VSVmhzQ2dq?=
 =?utf-8?B?bnN0UmdIZnc0ZkFmeno3Rk12cWZBTFBjSzg1Z09sSUtkUkltUytEL1FNeTQv?=
 =?utf-8?B?MGpTQ3dBSjFHSHJlemlsNnhmODl4ZUNGMi9jeFZHbEtiYTZEZXIrbHluOSta?=
 =?utf-8?B?dHNMeDF1WThndjhDKzEyWEZXMVYybFRmK1BPejQ5L1l4aHpQOGJXQlJkS21x?=
 =?utf-8?B?OFJrc2dCRVhmWHROZGVOTjBNZ1NFUU93UW1PamhMeDM4WGttY29paTZxbWda?=
 =?utf-8?B?U2tuL3FLUVArK0w3VGN5YUVOSHZsMUhNeDR6M08ySWQ0YXBRdXZQckNYOVlr?=
 =?utf-8?B?K1RJVXdhVENVMW03YUpISk5wWDFVKzVtNDVFVVIwbFNIU051SitKZW96S2Fn?=
 =?utf-8?B?YmxKbFFkS2o2V2h0OG0rekl0dTl1QjJSNEhZRWx3QnA5OUVCVkh5NVpSeVhy?=
 =?utf-8?B?eVE0Q1lVL1pkM0M4L3YwZUFkUUs1UHhZT2M1UzdUUkZxZlNGODlIT01vQXM1?=
 =?utf-8?B?b2R3U1NjdVgzeTM3WjZJenRkcXVwanhvenRtV2VSVzFSVzdmOU1FRHJNMEZQ?=
 =?utf-8?B?ZXhaZDZNT05VQXBXMlRaekx1cmkvcFJZMHNZdzJTUHIzKy9sSHByWk8wbjhR?=
 =?utf-8?B?UVQydlIwM0VYNnhydzl6WVhLWG01WlUrZ1p1UW1IY1EydHJEVHNUTGVCOXlB?=
 =?utf-8?B?RGVmdmUwR1lLMTlkQXN0U3hxczJ3dkUrQ1dVSXlvOEI5SmFWQ09jaVlCMFpR?=
 =?utf-8?B?YlhYTUF4L01ENnVBZ3VHN1dsMzcvbVRQZlBVMU9hWXJoR0ZqSXhjWlNvQk1o?=
 =?utf-8?B?Y3k1c21LYldRS2RUSExSblNYRU5JeElVZ3NOZVBSZ2Y0blFHS3NNUTRzYXJt?=
 =?utf-8?B?TGFFOFhBN2UyL0h1Z1RhWm5PYU5CNkFtQVRQQ043Rkg5aCtnbTFQWlJUcjVJ?=
 =?utf-8?B?RGZJTGZwUXJhdkFzTThnMlVtZndXNzJiTmlXWkhaZ0NTODB4NDF1Z1dEaHNv?=
 =?utf-8?B?d3pKcCs5b0tROUcxSGc3eno3MkhsL2hMd3R5NTZVU1lOU1FCUWJHekRrT3ho?=
 =?utf-8?B?Q0VndlhtVE01akY5QkxOeFRYNDJLTTNHT09CQTlQNzUxdnFBN3JOTXpzTWNO?=
 =?utf-8?B?a0FiZGVoN1Vnc2JEL1N0TkZ0NDZGdHdEaTMvT1pkamJsZEdaNGpTeTI2RHJS?=
 =?utf-8?B?ZTFjelZJaFpCcHpwK1Q0bk5XeE1WSTZKVTFkR0FvbHVlRGVtU1lXbWVWcmJj?=
 =?utf-8?B?QUFyS2FMckZtRmdyLzc2SHVTMHhVWVFaMUdMSXZSTGx1U3Q3elArL1dsdnNp?=
 =?utf-8?B?UkFHd3RXalBNZlVZMncrcXF2eW4rVVF4MVdtcEx3RkxHSzZUVlF6Y1ZONnlk?=
 =?utf-8?B?MCtIMlhHTWJQeHd4UFZhdFluTzREcnJPbnhrTWw3a1FWUVRQcTlWdHQ5UG5Y?=
 =?utf-8?B?OUVad1AxbncvdTRocFFMQnZlSCtYZFF4SGZReVQxV05EeFlkRnlpMXJjTnRC?=
 =?utf-8?B?Z05saE92UHhSUmZEMGs1Z2d3SHVMaWsrcmEzQjRUb01HUDN2WlRGd0JUa2hO?=
 =?utf-8?B?aCt3MVE2WUllbFBqT0tNV2pORC96REozUnBjRExPVmJVNGZQaTFXcXVYZ1RY?=
 =?utf-8?B?a0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <176F3CAAA3EA454EB0B5ED0098936FFA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed24e34f-0a3a-4c31-cb2f-08dc7e1e0afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 07:24:27.7962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4NkpgUw+Q48ycqnvhAD0PA1MF/+lbejBT8nXteGQGR6bvLtqU6/hwI2p8fTt4HGkZp0WFdo8wF5ELOg9opRKM0pdaegph7YkF8YWydYpAFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8713
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

T24gRnJpLCAyMDI0LTA1LTI0IGF0IDA1OjUzICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwg
TWF5IDIxLCAyMDI0IDI6MTcgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBL
YWhvbGEsIE1pa2ENCj4gPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHYyIDAwLzE3
XSBQYW5lbCBSZXBsYXkgZURQIHN1cHBvcnQNCj4gPiANCj4gPiBUaGlzIHBhdGNoIHNldCBpcyBp
bXBsZW1lbnRpbmcgZURQMS41IFBhbmVsIFJlcGxheSBmb3IgSW50ZWwgaHcuDQo+ID4gQWxzbyBS
ZWdpb24NCj4gPiBFYXJseSBUcmFuc3BvcnQgaW5mb3JtYXRpb24gaXMgYWRkZWQgaW50byBkZWJ1
Z2ZzIGludGVyZmFjZSBhbmQNCj4gPiBwYXRjaCB0bw0KPiA+IGRpc2FibGUgUmVnaW9uIEVhcmx5
IFRyYW5zcG9ydCBieSBkZWZhdWx0IGlzIHJldmVydGVkIGFzIGl0IGlzDQo+ID4gbmVlZGVkIGJ5
IGVEUA0KPiA+IFBhbmVsIFJlcGxheS4NCj4gPiANCj4gPiB2MjoNCj4gPiDCoCAtIHByaW50b3V0
ICJTZWxlY3RpdmUgVXBkYXRlIGVuYWJsZWQgKEVhcmx5IFRyYW5zcG9ydCkiIGluc3RlYWQNCj4g
PiBvZg0KPiA+IMKgwqDCoCAiU2VsZWN0aXZlIFVwZGF0ZSBFYXJseSBUcmFuc3BvcnQgZW5hYmxl
ZCINCj4gPiDCoCAtIGVuc3VyZSB0aGF0IGZhc3RzZXQgaXMgcGVyZm9ybWVkIHdoZW4gdGhlIGRp
c2FibGUgYml0IGNoYW5nZXMNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIgKDE3KToNCj4gPiDC
oCBkcm0vaTkxNS9wc3I6IFN0b3JlIHByX2RwY2QgaW4gaW50ZWxfZHANCj4gPiDCoCBkcm0vcGFu
ZWwgcmVwbGF5OiBBZGQgZWRwMS41IFBhbmVsIFJlcGxheSBiaXRzIGFuZCByZWdpc3Rlcg0KPiA+
IMKgIGRybS9pOTE1L3BzcjogTW92ZSBwcmludGluZyBzaW5rIFBTUiBzdXBwb3J0IHRvIG93biBm
dW5jdGlvbg0KPiA+IMKgIGRybS9pOTE1L3BzcjogTW92ZSBwcmludGluZyBQU1IgbW9kZSB0byBv
d24gZnVuY3Rpb24NCj4gPiDCoCBkcm0vaTkxNS9wc3I6IG1vZGlmeSBwc3Igc3RhdHVzIGRlYnVn
ZnMgdG8gc3VwcG9ydCBlRFAgUGFuZWwNCj4gPiBSZXBsYXkNCj4gPiDCoCBkcm0vaTkxNS9wc3I6
IEFkZCBQYW5lbCBSZXBsYXkgc3VwcG9ydCB0bw0KPiA+IGludGVsX3BzcjJfY29uZmlnX2V0X3Zh
bGlkDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBBZGQgRWFybHkgVHJhbnNwb3J0IGludG8gcHNyIGRl
YnVnZnMgaW50ZXJmYWNlDQo+ID4gwqAgZHJtL2Rpc3BsYXk6IEFkZCBtaXNzaW5nIGF1eCBsZXNz
IGFscG0gd2FrZSByZWxhdGVkIGJpdHMNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IENoZWNrIHBhbmVs
IEFMUE0gY2FwYWJpbGl0eSBmb3IgZURQIFBhbmVsIFJlcGxheQ0KPiA+IMKgIGRybS9pOTE1L3Bz
cjogSW5mb3JtIFBhbmVsIFJlcGxheSBzb3VyY2Ugc3VwcG9ydCBvbiBlRFAgYXMgd2VsbA0KPiA+
IMKgIGRybS9pOTE1L3BzcjogZW5hYmxlIHNpbmsgZm9yIGVEUDEuNSBQYW5lbCBSZXBsYXkNCj4g
PiDCoCBkcm0vaTkxNS9wc3I6IENoZWNrIHBhbmVsIEVhcmx5IFRyYW5zcG9ydCBjYXBhYmlsaXR5
IGZvciBlRFAgUFINCj4gPiDCoCBkcm0vaTkxNS9wc3I6IFBlcmZyb20gcHNyMiBjaGVja3MgcmVs
YXRlZCB0byBBTFBNIGZvciBQYW5lbA0KPiA+IFJlcGxheQ0KPiA+IMKgIGRybS9pOTE1L3Bzcjog
Q2hlY2sgRWFybHkgVHJhbnNwb3J0IGZvciBQYW5lbCBSZXBsYXkgYXMgd2VsbA0KPiA+IMKgIGRy
bS9pOTE1L3BzcjogTW9kaWZ5IGRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXkgdG8gc3VwcG9ydCBl
RFANCj4gPiDCoCBkcm0vaTkxNS9wc3I6IEFkZCBuZXcgZGVidWcgYml0IHRvIGRpc2FibGUgUGFu
ZWwgUmVwbGF5DQo+ID4gwqAgUmV2ZXJ0ICJkcm0vaTkxNS9wc3I6IERpc2FibGUgZWFybHkgdHJh
bnNwb3J0IGJ5IGRlZmF1bHQiDQo+IA0KPiBTb21lIHJlc3RyaWN0aW9ucyB3ZSBtYXkgaGF2ZSB0
byBhZGQgZm9yIGJlZm9yZSBlbmFibGluZyBlRFAgUGFuZWwNCj4gUmVwbGF5Lg0KPiAxLiBXaXRo
IEhEQ1AgZW5hYmxlIGNhbm5vdCBlbmFibGUgcGFuZWwgcmVwbGF5Lg0KPiAyLiBXaXRoIDhiLzEw
YiBlbmNvZGluZyBvbmx5IHBhbmVsIHJlcGxheSBjYW4gYmUgc3VwcG9ydGVkLCBub3QgZm9yDQo+
IDEyOGIvMTMyYiBlbmNvZGluZy4NCg0KVGhhbmsgeW91IEFuaW1lc2ggZm9yIHlvdXIgcmV2aWV3
LiBKdXN0IHNlbnQgbmV3IHZlcnNpb24gY29udGFpbmluZw0KY2hhbmdlcyBzdWdnZXN0ZWQgYnkg
eW91LiBQbGVhc2UgY2hlY2suDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVn
YXJkcywNCj4gQW5pbWVzaA0KPiA+IA0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoMKgIDIgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyOTQgKysrKysrKysrKysrLS0NCj4g
PiAtLS0tDQo+ID4gwqBpbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5owqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTkgKy0NCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjEz
IGluc2VydGlvbnMoKyksIDEwMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiAtLQ0KPiA+IDIuMzQu
MQ0KPiANCg0K
