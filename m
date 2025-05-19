Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4243ABB576
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 09:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704A710E349;
	Mon, 19 May 2025 07:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cEg8co/l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5928D10E39C;
 Mon, 19 May 2025 07:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747638082; x=1779174082;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=/n54gNQyygrcwqbzui6/Wj3m4eJZYfAJy05kLCCI4RE=;
 b=cEg8co/lJO8PCKuYn7+mfjlJnlqXSR0mD5T5hQEDqYKzX2honWekMVjS
 S7arGGPxdDLvxns+py8LzPlpDColsEa8H9IF1iuHyIK0CjpG7efkZoFqH
 WYBN59hwHvorZ6c9qFPH69jKF0uiAZl1m0uWpxeqP/ZluEe5+NjRisskL
 94RftqdiX94xQ8s4VXU4GJg1uhcDJsdk2xKgQw1efHQ/zqJm2VPcE9QYw
 HI+VWUbISVXlU2C4cGq6ZjJyx8p1siMt/Ac8eJKTOWA1+0hJcMU7Tcfzy
 K5pAdgEuK/6zpVOlM9CorTN59eoC9lSS3roaXONf3j/O+z0d7dq9gHvV4 g==;
X-CSE-ConnectionGUID: QJjjdxEhSCamSBxQ7uyATw==
X-CSE-MsgGUID: GW/RNedkQx+RUFCW6sQA5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="49628957"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="49628957"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:01:19 -0700
X-CSE-ConnectionGUID: vYrZPKSUQfauWjgRZs1qTw==
X-CSE-MsgGUID: kBO8UJ1ZT0GDeh6GQdUP1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139124243"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 00:01:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 00:01:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 00:01:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 00:01:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3Fc/efau/dzKRHoL7hHiEnXqgWdr+sYw8z5ZCei16riCM8L3t2Pugqzfi9UYHeI7ZFMUkJbudGzYNN9uMHBnow6EpbAfBB534n96mbBdirOkB8fvb+MIEBy4RTYnPIHdmgT9RStwqa1SO96LWcQiX7f5hKxDO1zyX9XA/xtGz1tr2CnygXHyESJ0U/W/BEziikHMjrgqXssI/LJtfx/9wSV0FB2ugEx7adwmJRrhXGP5UC+7v4oCoB1a9fn2AW7KHP3NrKPKU1FIUVIWrLGb12QpEX0hbTLKbh39oDXgTnEvF1kSmMbRBMWvZGJn6B4FEQxxOEwmv4d1B+b8v0skQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/n54gNQyygrcwqbzui6/Wj3m4eJZYfAJy05kLCCI4RE=;
 b=xYsSl7oaDkyjfZQwiknF9fWgZA/aoou/jYR/+G5XZO8Pm+ruW0YAQp5X9yJLf6djc+VtepJAzhqFQ8+Hwxg7nUVwYd2j47VtmJAPZ6vg0dG6E3IB0X+UGPXHpkXn2vXHO0qeuU021N12Ah32wvksTieNyJW7pG46lnO6/Wv0vNMN1zHpxMcGGLRgEPz1TiRctZ5bSIIsU+qNaJKV2mJWkRnMDIj5vpHOf6MIxUwTWE859OTG1aKFrTkq7cvPaismLlaFuy686oyBBxEOCbSpTMwO6iy5VAtYlQppRiqzTlxbKMLFZl4pcU9AVuiCDWjiKCLSKqf6JHw5PQXM7QGhSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7734.namprd11.prod.outlook.com (2603:10b6:8:df::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Mon, 19 May 2025 07:01:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Mon, 19 May 2025
 07:01:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
Thread-Topic: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
Thread-Index: AQHbxiwXaN56NOkXz0WpJTdcRZVA/rPVLLcAgARejwA=
Date: Mon, 19 May 2025 07:01:15 +0000
Message-ID: <844de33884a10c6a27f6397c91898ad2520e3e74.camel@intel.com>
References: <20250516063019.2126702-1-jouni.hogander@intel.com>
 <MW4PR11MB7054E6900C106AB8024380E1EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB7054E6900C106AB8024380E1EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7734:EE_
x-ms-office365-filtering-correlation-id: 21065e05-c9a8-4761-68c3-08dd96a2f25f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TGZwMGI2bVhsdHRORGdzNkZYdGx2aUZjaGJBaFFzY09XVy9XNzhpNjVaY1Rl?=
 =?utf-8?B?a0ViaUlHb2FPZ3d4TnlqSnBIbjM4dWdhRGVtRU15by9HZGpVQ0k3c3ZxMUFK?=
 =?utf-8?B?WmozSkI2ZmtUbkFUNzR3dzdZNGhBYlJsNTNnMkZ3U2twY0c0WVpNNlAyR3Ft?=
 =?utf-8?B?RkNsbFE2cFNhbi9sNmQ1dDMydm1hUmM4U3BoRG9KV3ErRnFIN2J6Z0FwZVRN?=
 =?utf-8?B?Y0NHZExxZGpRSDcxb0IyZHFNN1JJRDhyajVWSjMwR3R1UVQ2RnQ5QTJhL1p1?=
 =?utf-8?B?UC9lc3M3R3dBZTl1K3JqWEtjeStzRkZPZ2M1NERtWkx5WjZEMm9Vb21zKzV6?=
 =?utf-8?B?TWlRcHN5TzdkVmFPWXlFakhoK2VWeUZFQjgyNE54M0k3NGdsVGhVOGhCOXl0?=
 =?utf-8?B?WlNxd0FwbDJXZ0pjODNwTnJoRFBiREc1bmUzQTZZQ3FXd3EzZlFXUlN4U2ly?=
 =?utf-8?B?Z3ljU3EvYVRoVUVOdjNmZU5MWWhiU08yQk53K3pPeEt1S0V3SVZWUWRxV2ht?=
 =?utf-8?B?RXQ5eXVRS1YweDVTZDVncncxZit1anl0ZzRGcTJaTFZwY1R4aHlVWUZBQm9w?=
 =?utf-8?B?QTNNR1VBU09KUE1aRW9xQlFHbTB2QUQwUzIxekdCTmhxZkdUamdDeG1aTlBj?=
 =?utf-8?B?MUNLZTJ2cTVRcHFYNEFIenU5TTBBQWxvRktGelNyS3hsTm1ydnJReTVCMktN?=
 =?utf-8?B?a2FTUG41VVh0UHFVZzJma0tHYmxvQXlrdlpjd2ovdVEwMVZyRHBxckY5WW1k?=
 =?utf-8?B?TFpnNktuUk1IbW95S0RFRzk4QjBtVmpxemM1NEN1bDRjMDBHNURNZnZmd3NV?=
 =?utf-8?B?ZklEUWpuMHFGMnJRV29rMHZoellqQ1V5Mk9KRFVNVzJkd1hOL3pTN1cxN2ph?=
 =?utf-8?B?SkFMeVE3dDl1dExvY1FRTjFSU1dXOVBrbVd1K3ZCVjM3Y2FwQzFYUEdnZnpu?=
 =?utf-8?B?NkpkNXRaOERnejZYQlp5YS9BUFF0TTNmcHFEV2JEYW5sTUNjOHJnSEVQejhz?=
 =?utf-8?B?NXd5QWsrbzRqbXgwZUhLem55d1NiaytSQnhoQTl6SGx3bDVheXFnaHFkUWx4?=
 =?utf-8?B?VS9DdEhOMDFTZDBHSDBrNVR5YnBvNG9rcGdNaFhaRE14T3Y0ZnFKYkY5cWtq?=
 =?utf-8?B?RUVZVkJMVUhYRFAwdkF3aWJJU0FyZ3FEbGZmZnFDNGRvbVNSaHhDcnZtalRm?=
 =?utf-8?B?cmdGYlVVaFdYcDFMa1ZkNkZBR3NlUzNBNFB1YzMvZWhZVDNuV1dCZjQ0eW1Y?=
 =?utf-8?B?UWtaR3RFclpiQ0swbkE5bVllNVpSeG9GbkNUOUNJUWxaQ0JNSWRvYWRHWjFm?=
 =?utf-8?B?ZkNjUUFjQVZESy8rZVlkRVdSQnRQdkxmUnBwVnk0WWkyMWtBbGV1bW9pcjZ3?=
 =?utf-8?B?NGFrNmdXU21JNm1WNUpFRDZ1ZE1vbUxhck1OTDBLSGtYWlFCdDFqa0l1eWM1?=
 =?utf-8?B?d2lySE96OGhUaU9CZUtCWE5KbFFBVEpVMnhEQTBwZGVvSWszT0FDNEJaWW9r?=
 =?utf-8?B?a3ZPc0s3T1ZNOXZrT0dZbFRwQi85WHV6WStiRGFiZDFUcUc2UTR2M3AwVjJJ?=
 =?utf-8?B?ajBvTjRSTVl4RG1nT2JuV2RKOGhrVTNlbDRuclVybEZ3SkxRS1UvbzRGWUR3?=
 =?utf-8?B?MkJaazdpRkg0OTFQeHFYTGoxbkZnakl6a3FPMWU3cmFFbmpxR2tyTXRQQXJZ?=
 =?utf-8?B?aXVEVDhPVkttRzFPZWg3UFNUODVhM3NHa0pxZWZDR0ZGUERXMnhDTzc3RERs?=
 =?utf-8?B?djJiQmpFbmV1enBYUVhpSDExVGZLT1JDR0wrQmlMdUphbXZsbzdudFpPYUdn?=
 =?utf-8?B?V0JIOFMxUzZvUGZFU0Z2czZhWW53RDhPZDIxUXZzZGZ2aVBXVzI2VnMyVE1I?=
 =?utf-8?B?TUU3SGJ2SkJ3M2hFdWVGZzNORFZIZlJHME1Ya2hjZlZJM1ZLVEZvWlZERjdu?=
 =?utf-8?B?dUJTRjNDSGZvS1lvZElONUkxdzNUbzJRN3hwL08yQU05YjFTdTdsTnF3M2NK?=
 =?utf-8?Q?/F+U1AyyMFMjwcfeoUhfRCXtp8+KIA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmZkKytjTStzN3lIaWtzbUxpaVVSR3NmTW1aVFF0WUdadll0c3ZPV1JQZ0ly?=
 =?utf-8?B?eDFEL3hCbG5oMXBvVmFjNGpudC8zUlhXTVJnWWxROU44L2NUeE9BRmhySzc0?=
 =?utf-8?B?SlRSUVpKZ3VaYVhibnhtRGc0UmM4K3pWTEJRb1MvWGQxcFM1S2dpT2hHSmZs?=
 =?utf-8?B?WTZnZ09vS1RTWXdrM2xSaEgwOW5heUFqaGxtRUZMZU51bmhQdCtxdXByU1dK?=
 =?utf-8?B?VXVxa1M3TnhQd05ZVjlLemluVitZQ3FGcVJ1RWpqU2Z6Tkxsb3NFV240TytJ?=
 =?utf-8?B?clhjOEZDNmJzTzZZV2VWSUZIbFpzQ3d4VHM4QTgzRTliQWdMVll3YWVDQ2ZW?=
 =?utf-8?B?SzNjRlUzSFJvV29XRkF6eVM3VnZRWS9ldDhPeDJaQVlOdlVQV0pvVEFlT1J5?=
 =?utf-8?B?alhyRGFXajkxUkorTThqR2xiUDJBZ01DVVNZL2JCRjV5VTNqMFhUR1pWWjdy?=
 =?utf-8?B?d0pvenpIQVA4b0l3Wi95dS9WWUxPR3QraTFNeHRGTU1KcUExc1JYTTA0ajFB?=
 =?utf-8?B?UFlVMmt6dFVCemFOdkVlZnNmenVEVDBsNHlHMzcwMzZQd01Gd0ZWOFMxWkdS?=
 =?utf-8?B?Zk5qNmNXZlMrdDdmSlFXdG1DSXByYnJITTlGRDBwRm50aEJyc1NrYkptWStM?=
 =?utf-8?B?VVd5M0trU1BHemVjYUhtVExaT3lXcytQdzVMT3RibldsYUtieVFXblJjcm92?=
 =?utf-8?B?WUY2TjBDK0kxWjJVS2M3UWlCQnM2TWVkRFJxWWVlMkpXd1owOXc1UnRRMlY4?=
 =?utf-8?B?UFV1ZVlzYThJRGpYbWdSam10eFFVN0MwRlB6UDUvc28yZXlJMHk2V010eXRt?=
 =?utf-8?B?dU9wUjlhSTczOTNvZXlQVmRheS9MTkNndy9WK2FtTGs5UGVHYXNpTEVOL0Uv?=
 =?utf-8?B?VjAzSDdDa01acGkzVDE1ZSs2RnpOLzlVdmpuQmNHOTh5QkVEaXliQXM3ZXJv?=
 =?utf-8?B?RE5XZEVYMG9EL2NScXhxT3hrUTk1aHM2RUhUWlJhTWVTbzZuSzUyNVJYeW1x?=
 =?utf-8?B?bzFKYUVuT3Z0UlFQcHV1WjhnUkZLYkQ4ZFA5UmEzeXFZSE1ybEhlakxjRUpj?=
 =?utf-8?B?MktUc2hJaHE0eitHQS9qNW5EYktsNnJKeFRVa01rRHM4eG00SDdpWlFmMG1l?=
 =?utf-8?B?NlFEbjlSUEZiZ2ZOeTlSUGtyZGppTmFQd3pka0FwWklNQnNXcTNKbFVlSlY1?=
 =?utf-8?B?WWJCdW1XWnhyOXZwenNDVGI1R0ZleldMUXpTdGRFTGNHbkdVbTk0dUFNVlpI?=
 =?utf-8?B?bDhTeTFDVEtONkRLbjhKWG95UGJUZTA5cUhtQnR0cVlDaU1FSElyTEJUcS9Q?=
 =?utf-8?B?M1FkTEFVOWtMdDBTa0htUnlyUW5jTi9ueGhlRnBpUFdIOG9GRGt5TTZFeG9z?=
 =?utf-8?B?ZzEwUDdtOXp2MFVFZmhkMG85RGRRS1dxYmVnQlFDRXRNNThHOFlDbkN6c3R5?=
 =?utf-8?B?NkwrN2dnc3pkL1JJTlZsVWFjU1EvcTBnd1I1QzdhTENlUWFHcU9tL3pONkov?=
 =?utf-8?B?YStJdDFYU0M5Mzd4U1cxN1NpUGNFMG1Vcnhsc2NtZngxaEwrRUZFYW11VEZ6?=
 =?utf-8?B?NmFNT1BtTmNndmJjZ21lM0VlOTRRSk84ZTloR3VPV29nNFZMS0lsVDZhemFP?=
 =?utf-8?B?d0FGTDREczJQWkp6d1FCZHZ0cXdjRXc5WlFIeTFiUjRrT1ZBYjVEK09FdzJD?=
 =?utf-8?B?ZzYya2hNRGpYOGlzcXBwdGYrenVKZDFjVVVxbml2THlYUWtUUUZlaWFaa3Nw?=
 =?utf-8?B?V0prTUhGL3Q0RzJ0YlRjTlUvMCtEdXpQSXM1MkU3Q2Z5RnBwNFJuOVVMNDdz?=
 =?utf-8?B?QjQ1R2ZzT2xEVjJzd2QrUWRkMWZsUHdJNTBCOHAwNUxvdG1WZlBuK1RpQlRC?=
 =?utf-8?B?TEFxZUxWVW52Mlpyc3lGWXh2V0x4TlVVMytrSWhvZHdSNmJ3L1VHZXhtTHZW?=
 =?utf-8?B?ajFmbm5aUmlCOWNEYXVBd0xJVkM5WU5Zam1MMWhIZGpmbGlvVXpoSmxlUTM4?=
 =?utf-8?B?QzJzYkFITTVEWWdvYllxS0o0L3Q1LzBTSHRISytVL05OeU1oRStYWGpmYkRk?=
 =?utf-8?B?MDlzQ1AyV3NWbWhSL214TUlFUU9OVEsxMDF5b29Pc0hraTl4bFZFdS9HOTZY?=
 =?utf-8?B?WS91V09kSjNnRkl5M1lXV3RJbHNocjRlZGpjZml1ekRmM2p4YWFoL3grNTF0?=
 =?utf-8?B?cVUyZXEyZVErcUk4R0RJbHRhYjlPVnhXRHVHRk9NejFQRnNGZFpOSkZMY1ZG?=
 =?utf-8?B?OWZpNXc0WVRCQUJtUFQrMlBhR1VnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0074BE797ED70F4B99E3D00C616FDC11@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21065e05-c9a8-4761-68c3-08dd96a2f25f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 07:01:15.1167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LR5ol1RrIteDWPO1wlFhn0kMURIP5HBAAb8lqr8tMm5aBb/rpUP+q5eOXMPS7Ku7XNzXfx00az3GdnZHOP4gvAzGKOhpZLW4S00SehzXGfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7734
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

T24gRnJpLCAyMDI1LTA1LTE2IGF0IDEyOjE3ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBGcmlkYXksIDE2IE1heSAyMDI1
IDkuMzANCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjJdIGRybS9pOTE1L3BzcjogRG8gbm90IHJlYWQgUFNS
Ml9TVV9TVEFUVVMgb24NCj4gPiBBbGRlckxha2UgYW5kIG9ud2FyZHMNCj4gPiANCj4gPiBCc3Bl
YyBjb21tZW50IG9uIFBTUjJfU1VfU1RBVFVTOg0KPiA+IA0KPiA+ICJUaGlzIHJlZ2lzdGVyIGhh
cyBiZWVuIHRpZWQtb2ZmIHNpbmNlIERHMi9BREwtUCAoaXQgcmV0dXJucyB6ZXJvcw0KPiA+IG9u
bHkpIGFuZCBpdCBoYXMgYmVlbiByZW1vdmVkIG9uIFhlMl9MUEQuIg0KPiA+IA0KPiA+IHYyOiBm
aXggaW52ZXJzZWQgbG9naWMNCj4gPiANCj4gPiBCc3BlYzogNjk4ODkNCj4gDQo+IEluZGVlZCwg
dGhlIGxvZ2ljIHNsaXBwZWQgaW52ZXJzZWQuDQo+IA0KPiBSZXZpZXdlZC1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KVGhhbmsgeW91IE1pa2EgZm9yIHRoZSByZXZp
ZXcuIFRoaXMgaXMgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5p
IEjDtmdhbmRlcg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzNCArKysrKysrKysrKysrKy0tLS0tLQ0KPiA+IC0tLS0N
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+IGluZGV4IDQzMGFkNGVmNzE0Ni4uY2Q4MzNiNjNlYTZiIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTQwMjEsMjQgKzQwMjEs
MzAgQEAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZQ0KPiA+ICpt
LCBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgCQlpbnQgZnJhbWU7DQo+ID4gDQo+
ID4gwqAJCS8qDQo+ID4gLQkJICogUmVhZGluZyBhbGwgMyByZWdpc3RlcnMgYmVmb3JlIGhhbmQg
dG8gbWluaW1pemUNCj4gPiBjcm9zc2luZyBhDQo+ID4gLQkJICogZnJhbWUgYm91bmRhcnkgYmV0
d2VlbiByZWdpc3RlciByZWFkcw0KPiA+ICsJCSAqIFBTUjJfU1VfU1RBVFVTIHJlZ2lzdGVyIGhh
cyBiZWVuIHRpZWQtb2ZmIHNpbmNlDQo+ID4gREcyL0FETC1QDQo+ID4gKwkJICogKGl0IHJldHVy
bnMgemVyb3Mgb25seSkgYW5kIGl0IGhhcyBiZWVuIHJlbW92ZWQNCj4gPiBvbiBYZTJfTFBELg0K
PiA+IMKgCQkgKi8NCj4gPiAtCQlmb3IgKGZyYW1lID0gMDsgZnJhbWUgPCBQU1IyX1NVX1NUQVRV
U19GUkFNRVM7DQo+ID4gZnJhbWUgKz0gMykgew0KPiA+IC0JCQl2YWwgPSBpbnRlbF9kZV9yZWFk
KGRpc3BsYXksDQo+ID4gLQkJCQkJwqDCoMKgDQo+ID4gUFNSMl9TVV9TVEFUVVMoZGlzcGxheSwg
Y3B1X3RyYW5zY29kZXIsIGZyYW1lKSk7DQo+ID4gLQkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAz
XSA9IHZhbDsNCj4gPiAtCQl9DQo+ID4gKwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTMp
IHsNCj4gPiArCQkJLyoNCj4gPiArCQkJICogUmVhZGluZyBhbGwgMyByZWdpc3RlcnMgYmVmb3Jl
IGhhbmQgdG8NCj4gPiBtaW5pbWl6ZSBjcm9zc2luZyBhDQo+ID4gKwkJCSAqIGZyYW1lIGJvdW5k
YXJ5IGJldHdlZW4gcmVnaXN0ZXIgcmVhZHMNCj4gPiArCQkJICovDQo+ID4gKwkJCWZvciAoZnJh
bWUgPSAwOyBmcmFtZSA8DQo+ID4gUFNSMl9TVV9TVEFUVVNfRlJBTUVTOyBmcmFtZSArPSAzKSB7
DQo+ID4gKwkJCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksDQo+ID4gKwkJCQkJCcKgwqDC
oA0KPiA+IFBTUjJfU1VfU1RBVFVTKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyLCBmcmFtZSkpOw0K
PiA+ICsJCQkJc3VfZnJhbWVzX3ZhbFtmcmFtZSAvIDNdID0gdmFsOw0KPiA+ICsJCQl9DQo+ID4g
DQo+ID4gLQkJc2VxX3B1dHMobSwgIkZyYW1lOlx0UFNSMiBTVSBibG9ja3M6XG4iKTsNCj4gPiAr
CQkJc2VxX3B1dHMobSwgIkZyYW1lOlx0UFNSMiBTVSBibG9ja3M6XG4iKTsNCj4gPiANCj4gPiAt
CQlmb3IgKGZyYW1lID0gMDsgZnJhbWUgPCBQU1IyX1NVX1NUQVRVU19GUkFNRVM7DQo+ID4gZnJh
bWUrKykgew0KPiA+IC0JCQl1MzIgc3VfYmxvY2tzOw0KPiA+ICsJCQlmb3IgKGZyYW1lID0gMDsg
ZnJhbWUgPA0KPiA+IFBTUjJfU1VfU1RBVFVTX0ZSQU1FUzsgZnJhbWUrKykgew0KPiA+ICsJCQkJ
dTMyIHN1X2Jsb2NrczsNCj4gPiANCj4gPiAtCQkJc3VfYmxvY2tzID0gc3VfZnJhbWVzX3ZhbFtm
cmFtZSAvIDNdICYNCj4gPiAtCQkJCcKgwqDCoCBQU1IyX1NVX1NUQVRVU19NQVNLKGZyYW1lKTsN
Cj4gPiAtCQkJc3VfYmxvY2tzID0gc3VfYmxvY2tzID4+DQo+ID4gUFNSMl9TVV9TVEFUVVNfU0hJ
RlQoZnJhbWUpOw0KPiA+IC0JCQlzZXFfcHJpbnRmKG0sICIlZFx0JWRcbiIsIGZyYW1lLA0KPiA+
IHN1X2Jsb2Nrcyk7DQo+ID4gKwkJCQlzdV9ibG9ja3MgPSBzdV9mcmFtZXNfdmFsW2ZyYW1lIC8N
Cj4gPiAzXSAmDQo+ID4gKwkJCQkJUFNSMl9TVV9TVEFUVVNfTUFTSyhmcmFtZSkNCj4gPiA7DQo+
ID4gKwkJCQlzdV9ibG9ja3MgPSBzdV9ibG9ja3MgPj4NCj4gPiBQU1IyX1NVX1NUQVRVU19TSElG
VChmcmFtZSk7DQo+ID4gKwkJCQlzZXFfcHJpbnRmKG0sICIlZFx0JWRcbiIsIGZyYW1lLA0KPiA+
IHN1X2Jsb2Nrcyk7DQo+ID4gKwkJCX0NCj4gPiDCoAkJfQ0KPiA+IA0KPiA+IMKgCQlzZXFfcHJp
bnRmKG0sICJQU1IyIHNlbGVjdGl2ZSBmZXRjaDogJXNcbiIsDQo+ID4gLS0NCj4gPiAyLjQzLjAN
Cj4gDQoNCg==
