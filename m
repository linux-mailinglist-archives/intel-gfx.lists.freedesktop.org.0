Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A216DB33654
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 08:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426FA10E339;
	Mon, 25 Aug 2025 06:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWtUP09A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6893B10E339;
 Mon, 25 Aug 2025 06:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756102958; x=1787638958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JKrH2dLBtEYVTHwQAy1ow5GP9ehbf+Ol/MkYI4jAXX4=;
 b=hWtUP09AXH5zQ8rSR0cQjsH2uDT5DHqcsAIwG7eVa2XqJWlSFLXwTrZu
 MAD+fbJq7pH0n5iCVcS974m17cWRcRmEryKoxaL5bzQ1b/mIsrGQSnbCa
 mrJttoVzH3uK//GaeeHR2pDqyahxZTIN+jwSZPzDWNuU0/RSJS//LL+z8
 2JL/+1xsQPybkD686xlgwWwoOITDVbtwqoQUeBreONOVZaLZpQ4fgyLf+
 xgO08gzcIewx+mNBkdZjpx+93isDKDPYxyoJm+Mi+Lozj4/nKacEVQmy4
 /v0cWhF0IXrqU+ZiA1w1d35ytI1S1zCFob4admEamGvAI1BdBLIy2e/Jn A==;
X-CSE-ConnectionGUID: At8Q64agQUyfC/Hps1hGag==
X-CSE-MsgGUID: ZKJnKOc0S1uVxmKTZWF01w==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="60938108"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60938108"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:22:37 -0700
X-CSE-ConnectionGUID: hjzpzTdET8+hDnAkE3I0YQ==
X-CSE-MsgGUID: Z74HEUMFT/usmkEo8HDkOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="168821598"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:22:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:22:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 23:22:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:22:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F0weST/k8hm5A9UPSBzctp7pTkBI7oLLAadht9i7q2ZmZ2Lm7SkhatVirsLCk8BCs+a4w8C+YqGMVengtmrJ6kdEcpnbHg3QVaNVTIeQoGsm5atcNSUnP5kwf6jzgGBLePSiQbRteZL+or0G5ydvhuDLQQHf+whUG73FOLpbAlOfOVMfIWaiZnZA0o1/9/u7hdKstxgoAPATPO8S07+h2U/aenkNm+Trg9tjjFMteGpnhbUOFTrTKakZsBgZBct9dyGzcV20q4Q6JJkj9YspNH6WH6XyNXoCNpCQxJ5lLBrStF09BliF2SzoVUvlVh3HG3eOxtNo/T7oT14qhRZYoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JKrH2dLBtEYVTHwQAy1ow5GP9ehbf+Ol/MkYI4jAXX4=;
 b=ngcf05g/nbtVjZHGu5p5H1iL5Qb4a7xdkNZPPD81l1TAUCp3n0/K2SiQermwf4FVm/QponT5zALHAjFdqQiwgpLPde9p2EzZxQab1+NhzPCn5tgklJ1YR6/0tboYwcD2gSG5sA8RprNRxrXhLCzWZPGW6FsvTXsM+2Uo9VnqFOA76mGeHBDojPkCNw/i/haBYlAI6CJdsRDCyXl3rmOvKWS8wVnhB0NaRz+GD51gDwW+8r4OMlwbOLarmhElw35Nr+p0eQkAwWzMgKptNy1V3+eySnQyeky80UJP/uos9aGBu0WP5Lqp/aChzWJmH7Vq21ZOfMgeJsGNwpKTF+ysEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB8268.namprd11.prod.outlook.com (2603:10b6:303:1ef::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.20; Mon, 25 Aug 2025 06:22:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 06:22:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value
 on PSR dpcd init
Thread-Topic: [PATCH v2 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value
 on PSR dpcd init
Thread-Index: AQHcElhrR+T7d6lvUEu/uOVDzriiqrRsuYUAgAYzEIA=
Date: Mon, 25 Aug 2025 06:22:33 +0000
Message-ID: <94ea582fdd40cfcee407dab14c09743c79a70741.camel@intel.com>
References: <20250821045918.17757-1-jouni.hogander@intel.com>
 <53e3d526cd41f74c906377cf8fb9add6d7dd441b@intel.com>
In-Reply-To: <53e3d526cd41f74c906377cf8fb9add6d7dd441b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB8268:EE_
x-ms-office365-filtering-correlation-id: 6d1a03a6-e22c-4f0b-1806-08dde39fc6c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aFZrNG5qMkNLelZqdnUzOE14c3dNN3VvL1E2ZnkvdDR0c2V4UG5aYW5kNStE?=
 =?utf-8?B?a28vMVdnb1U2bjFHUjZQb1ZaUVlENUY0dUxEbXp1YXNXWnM4dTI4a2dCMzVu?=
 =?utf-8?B?Z0JvL0tXTFBCWDcvUmNJZnZnUVc1UlpXai9oZFZKZVVLdG55OC9MTFFkZnZR?=
 =?utf-8?B?Z0Vnb1lhSE9SbWxrR3JPcktDOTVFZUFVQzBRTTJ6dU1YRVUzLzI3WWtpVnp1?=
 =?utf-8?B?RUpGU3ZjcVNzbFpkd3BqeE00dndlQS9NYVpiUUJXcnlaNkRkTmFyUHBHT3Vq?=
 =?utf-8?B?MTNKR1NkUjRacURhMTNRbGhPZTFMRk5SOVUvaTZXR2Rvdy9aV1MwV1Fkalgx?=
 =?utf-8?B?MDFIeUlnUFFMQ1J4ZnMrbjdQZFF2eTdPQXBHMXZ1WWorMFhwQnJaOHZuQ1g2?=
 =?utf-8?B?ZHdQeUZVK2FheFFhR1Fvem5GY1VNeGlqV0Zzc3V1WVNzK2prZUZ5dko0ckdt?=
 =?utf-8?B?eXNPaU9KUVo4NHlJVjZ5SzdVSG5FNU9ibXZmYmd5Y01SeHZHMVVEWXNZcEZZ?=
 =?utf-8?B?ZzB5dWZyajdrdmUxVEhCV1BBNVdMSjJYRDJ2MER3enZoUTNLaTE1cFlYSDk0?=
 =?utf-8?B?eGtkVGtSOU0xVUtHUzhON002R1BhZWZRci9ZdVRTYlRqanFzdlVGdzFaeG5k?=
 =?utf-8?B?MmJ1NmJaakhQVGs1OXc2Y3VyYWI5UmMvWWxnc1Z4Szlya1dKbGUxQmVxbE50?=
 =?utf-8?B?R0hTeTY0QTZLM0w3WmFTMzdUcnRXamd0dURvTzhsYVFsZVZ6WUFpREgvWFVV?=
 =?utf-8?B?aUs1UW11MnZVMVJRUzBDSVcrWUdFR2RSUXA1WWhSSzJ4TStyMTFuZEk4RHJ0?=
 =?utf-8?B?MWJneENKUy8zLzVjY2hvY1lnRmRnQlpaWVlLanNKS0w3YmthYXJtNnFDbTRt?=
 =?utf-8?B?YkhLc0dwQmtuN09xK2xjZUtzT2pkeWZsT2FBclN1U1VZNDB4SDl5QUNhY2tm?=
 =?utf-8?B?Mk45Ti9FZDZGazJiTXIxYXA1NVFGUUxVK2FYL0oxOUpGYkxRdjBpVDRaK2Jj?=
 =?utf-8?B?REF2bVhadmdKdFc2cFZCelpQenp3aFl5dDVjMjFxMTFvdnB6a2hxYTlLeVNB?=
 =?utf-8?B?NUhXdkxOWHc4Q1NQYng2WjIveEFESjYxaHU0SWh0WW81amE0TW4wZXh5YThL?=
 =?utf-8?B?RHVnd2VGMHBMRHgxZTVPaE1tTXFiWU9zUUNVbXUxSldTUXBURUw4ZWVyVGZl?=
 =?utf-8?B?VndJalNiNEJvc0NyYkY4bFlycWlTL1J1V2pnNUg3U0JGNEJsYXNKZVVEVTFU?=
 =?utf-8?B?WmtndXNndDFsanhFb2ZWdDBOSGVGUTd1eXJCWFlVUHByVGRRRU9abGk1bDNY?=
 =?utf-8?B?NkxDOTBjeWV0UVdXWGZpenBPZE1RN2xNSGxHL1lua0NHdnlUYnlxcjZKNDl2?=
 =?utf-8?B?eXNOM0RKYXFBc2tqSWg3WW5Zemc4VWtpNEYxeEV3TUVUNGtLelVqMFcwbldu?=
 =?utf-8?B?R3JLSmQzemJSOUtReW9hcmFucDZkejNKTXlNS3lRUzVWTjhoVWoySTJEUDgr?=
 =?utf-8?B?cGpLbjdaU2p5K2hMSi9BVERIY0gvUFBLQ0VlU3QzNnNLZ2RoWU5yUHZweERo?=
 =?utf-8?B?T05aeThieXlENVZmVmJCSDNGOXRuZlRKL0dVN1A1NThFeTBRSTJLUXRLRTdy?=
 =?utf-8?B?KzJQU1VFczNkOWM0ampNZDBzZUdDNWs4R0p5SVprQlM4Y05oR3VsZUV3VmFq?=
 =?utf-8?B?LytXelVXYi9MckxrSy9lcDlhWEtndTZueHEyZ2NNdnh5aGRpcUI4a296clhK?=
 =?utf-8?B?MkN1SGdyL25WellxYzBIWGZOWmk3NVQ0RFpZd2MvSkdpdXMwaDAvaVoyTVBH?=
 =?utf-8?B?WVgzWnFiMVVxOFR1VE9yUmhrOXpVK2o1N2MrSnVXVUFMSzU2eUNmemN3YUtn?=
 =?utf-8?B?UFN2cDhGZWFaL0gzSkhXaFRUWVFoTHJzczZNb0IyNHVTN1ZrVmxONzdGL3Ra?=
 =?utf-8?B?R1czUjEyQXZ3eGJCaEdCRmVxODdkQTdsM0VNV3V4MkRvTmlacHhJZVVkNjdI?=
 =?utf-8?B?Zkd0V2FnaHdRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1FaaklsZUl0YVF1eDB6L0dJWWEzcEZXajBpU0NrWnhqM1hOTmhZU2lZTks5?=
 =?utf-8?B?OXRtYnBuY0FvTXZKSUU1VVBqc3YrNVhPTlhmdDE4WHZ5YzBIQVZPQ3RNVVlk?=
 =?utf-8?B?K3VJYUQ3L3FHMm1jSkh6R2NvYWlwdlE3MVdZYmVKc0pIWk9FQmljaDcyNTBQ?=
 =?utf-8?B?cFBXbEtqS2xYMkNXNHltVHVhQ0lxMnJmbmpFODJ3OGsyWi9GWUpVS2w4QUxP?=
 =?utf-8?B?OUhhdHpheXNXUURaZEZQM1hGSWtHN3h5NkVUUXYraFRjUEFyakczYVhJdkg1?=
 =?utf-8?B?QXZLWDdLS3RaZ2dIa0wybmF0d3JxN2FzL1dzbFJiMGphK1d4TXFkaHNHSCsv?=
 =?utf-8?B?eGczMUR3SkZyS1k2RVVDcU56UW92SjdQZnduWkFCSS8xdnJYb3R0TkpxMk1K?=
 =?utf-8?B?UytZVWFjNHV3amM3LzBkSlp3ZEIzN1hIYUlnZisyanpkYlI3TkZNNlZTVVY3?=
 =?utf-8?B?ditiMExqRXFlcVoxbnlrUldmTGhHL0xiNmpldnppZmdOSjJPMDlxNlhwdnpB?=
 =?utf-8?B?N3Z1b3F4TnpiUlRGYlZrWExPaWRIbFFDUndvRWVpQ1JLRlplUnM2QisvTzBz?=
 =?utf-8?B?L0o4MEJsWDFFejJkbnVQLzhHVFVza2djUWdhdkc3MXZLV2JPMUphVWczbDha?=
 =?utf-8?B?ZUhlZi9zVUgyM0VwOExXQ04xV2RpcnJ2Rmd0MDM3WS9zMlhWKzVvOUUxKzZW?=
 =?utf-8?B?emV0QmZRSVFSS1JWZXJnQjhWTXNtZXJFZkx4dlFqY1VMK3JUa2wyd1FHN1hm?=
 =?utf-8?B?OXYyVzJqZERySlBFdU5GMTFVZFEvNXkyRnZrRDMwWjhtTHBMUTExTHJRUEVB?=
 =?utf-8?B?ODIwcE10ZENQbTN0eFNXRkZqVS9pQndUTzZvZk9UOExkV2JtSU9KWG5jeU1r?=
 =?utf-8?B?WXNMSkZwUFRTSFI2Q2dka0M0anRwc3NmUVBMU2hOSURQWjdkTERBQVhyQUpi?=
 =?utf-8?B?N0ltM081RUdqMk52MC9KdWhOTFpHaldSckt5dHVzN0R5Tll0VnNWUWc2WW9S?=
 =?utf-8?B?c000TThoVmtib3F3a2pJSmRCeitMYTNMYmk5YllqbUdoellRbHN0dGh0Q0Rr?=
 =?utf-8?B?MW9FTS9JeWZYYk43UEtNcDlaWkhvTVlDR0daSmlkTXdWb0VCaXV5dVN6RWZt?=
 =?utf-8?B?dWlKajVVUGlodmJWUGxtUHVVb3Bsdk5VZTVXZmlTNlhEa2dsa2ZOTHpJdkIr?=
 =?utf-8?B?TXNNbTJhTC9RNEs0VEJwY1M3VjE3a1IwUCt2ZmMvVEJTWlFUYzhpVlF1UXkr?=
 =?utf-8?B?dkcwbWJ1S3NRbTNURGZmdmVqN2JFMHV6N2JqMmV6UldMYmtHTFF1MnYwMjd1?=
 =?utf-8?B?UEVBbGVBZHgzcSt6ZmdSMTZnbGQ3WS9uRStRQ1RoUFcxNUY3OExXQ21MVDh3?=
 =?utf-8?B?T04xOEFsdk5ZZ1I2djFvR3hTR29VaFNlYlpsN0Jwc2F4VWRLVVRaRG1SYkI4?=
 =?utf-8?B?TmRvaFdxWHlDd3RSNUthRmZsbmRVdUk0Q0JxT0F2L1AxVUcwRHV6VTVkRk12?=
 =?utf-8?B?NW9zTVQwcEZScVVONHRGNkZueFZHVUpFb2UreWpLSGNYZUx3OVBQS0N6Ylkw?=
 =?utf-8?B?RUx6WkV4RUs0S0tiYUVHRlFQTFpCNzFnV0E0TWNlcUovM1dhTVY4bjJrc2xB?=
 =?utf-8?B?MzVNUStxTkxtc0RrZnZrUHNHOWZ5UDNTZHB0OTdxTG9KNEJEME1CRmhtK1lJ?=
 =?utf-8?B?anVlVzZaUHk1cW5OU2p6c0xYWkdQcGFIdVlUMU1HU1dic1orckkwYVhkcVVV?=
 =?utf-8?B?amxseHhVTzhFdzFmQXNNbTFVdFJtanZsaGJ2SXBpSHp6eDlwc3R3UWxzZCt0?=
 =?utf-8?B?dlJ0SUZQQy9zVlBzUGp3L2Uxamp2dXBKYjBpbUpRTmV5OEdQRzk2Q0syQWxr?=
 =?utf-8?B?QVR5UFAwTTBjTDJndEpjd2xnVVRVZFoxRzJYNUF1RURvRHlQU29PenAwU3V3?=
 =?utf-8?B?c0FWaGEvcVFnbnRaVmZTZ1JPRUg4UmVVelM3aWZwTFBMUncra0swT1EyeEFS?=
 =?utf-8?B?R2YvMFFuL3cvS2ptUUI0UHN4NWZWOW8vUmc3SmpWU3N1MGFZOEpmMFpvRG9j?=
 =?utf-8?B?UVBnNVNXK09sS2RWQnNvYjBCMnJXM0tMK0pjM0RDUy9yN282dU5nTFhYNzcz?=
 =?utf-8?B?U1J2MlFHYUhtR0t0eVA3QjhWaEdnQk5GWDhxd2hlZTBmeHdyMjk2OHptR0xV?=
 =?utf-8?B?Q3dQZUhTWHU3RHdMSnRtYityZzBCazl0M2RPdGdVTGNkcGd5ZEt2VVova0xM?=
 =?utf-8?B?c0Y4QXZUOHBpdlc1anNxaG9UWHBnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E340B0486F79A4F8B613C86E772E452@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1a03a6-e22c-4f0b-1806-08dde39fc6c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 06:22:33.0258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZXrHU8Lu3Sodkjf6619L68r2iwb/OD4O549VXElTftZBNaj7auiALHIiDcpO2uo03PQwvjoWy+wnb+0fExQNc63U1wwHWM/0g/tRyXFFSlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8268
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

T24gVGh1LCAyMDI1LTA4LTIxIGF0IDEwOjQyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAyMSBBdWcgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEN1cnJlbnRseSB3ZSBhcmUgaWdub3Jpb25nIGRybV9kcF9kcGNk
X3JlYWQgcmV0dXJuIHZhbHVlcyB3aGVuDQo+ID4gcmVhZGluZyBQU1INCj4gPiBhbmQgUGFuZWwg
UmVwbGF5IGNhcGFiaWxpdHkgRFBDRCByZWdpc3Rlci4gUmV3b3JrIGludGVsX3Bzcl9kcGNkIGEN
Cj4gPiBiaXQgdG8NCj4gPiB0YWtlIGNhcmUgb2YgY2hlY2tpbmcgdGhlIHJldHVybiB2YWx1ZS4N
Cj4gPiANCj4gPiB2MjogdXNlIGRybV9kcF9kcGNkX3JlYWRfZGF0YQ0KPiA+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAN
Cj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNClRo
YW5rIHlvdSBKYW5pIGZvciB5b3VyIHJldmlldy4gUHVzaGVkIHBhdGNoIDEuIHRvIGRybS1pbnRl
bC1uZXh0LiBMZWZ0DQpwYXRjaCAyLiBvdXQgYmFzZWQgb24gZGlzY3Vzc2lvbiB3aXRoIFZpbGxl
Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiANCj4gPiAtLS0NCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzMiArKysrKysrKysrKysrKysr
LS0tLQ0KPiA+IC0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAx
MSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDYwOWRmNTNmMWVmMS4uNWFkZGRlNjMxNjhlIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTU4MCw2ICs1ODAsMTYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5
KHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHN0YXRpYyB2b2lkIF9wYW5l
bF9yZXBsYXlfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+
ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3Bs
YXkoaW50ZWxfZHApOw0KPiA+ICsJaW50IHJldDsNCj4gPiArDQo+ID4gKwlyZXQgPSBkcm1fZHBf
ZHBjZF9yZWFkX2RhdGEoJmludGVsX2RwLT5hdXgsDQo+ID4gRFBfUEFORUxfUkVQTEFZX0NBUF9T
VVBQT1JULA0KPiA+ICsJCQkJwqDCoMKgICZpbnRlbF9kcC0+cHJfZHBjZCwNCj4gPiBzaXplb2Yo
aW50ZWxfZHAtPnByX2RwY2QpKTsNCj4gPiArCWlmIChyZXQgPCAwKQ0KPiA+ICsJCXJldHVybjsN
Cj4gPiArDQo+ID4gKwlpZiAoIShpbnRlbF9kcC0NCj4gPiA+cHJfZHBjZFtJTlRFTF9QUl9EUENE
X0lOREVYKERQX1BBTkVMX1JFUExBWV9DQVBfU1VQUE9SVCldICYNCj4gPiArCcKgwqDCoMKgwqAg
RFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpKQ0KPiA+ICsJCXJldHVybjsNCj4gPiDCoA0KPiA+IMKg
CWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ID4gwqAJCWlmICghaW50ZWxfYWxw
bV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChpbnRlbF9kcCkpDQo+ID4gew0KPiA+IEBAIC02MTEs
NiArNjIxLDE1IEBAIHN0YXRpYyB2b2lkIF9wYW5lbF9yZXBsYXlfaW5pdF9kcGNkKHN0cnVjdA0K
PiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+
ICsJaW50IHJldDsNCj4gPiArDQo+ID4gKwlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkX2RhdGEoJmlu
dGVsX2RwLT5hdXgsDQo+ID4gRFBfUFNSX1NVUFBPUlQsIGludGVsX2RwLT5wc3JfZHBjZCwNCj4g
PiArCQkJCcKgwqDCoCBzaXplb2YoaW50ZWxfZHAtPnBzcl9kcGNkKSk7DQo+ID4gKwlpZiAocmV0
IDwgMCkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaWYgKCFpbnRlbF9kcC0+cHNyX2Rw
Y2RbMF0pDQo+ID4gKwkJcmV0dXJuOw0KPiA+IMKgDQo+ID4gwqAJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLCAiZURQIHBhbmVsIHN1cHBvcnRzIFBTUiB2ZXJzaW9uDQo+ID4gJXhcbiIsDQo+ID4g
wqAJCcKgwqDCoCBpbnRlbF9kcC0+cHNyX2RwY2RbMF0pOw0KPiA+IEBAIC02NTYsMTggKzY3NSw5
IEBAIHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRl
bF9kcCkNCj4gPiDCoA0KPiA+IMKgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gLQlkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9k
cC0+YXV4LCBEUF9QU1JfU1VQUE9SVCwgaW50ZWxfZHAtDQo+ID4gPnBzcl9kcGNkLA0KPiA+IC0J
CQkgc2l6ZW9mKGludGVsX2RwLT5wc3JfZHBjZCkpOw0KPiA+IC0NCj4gPiAtCWRybV9kcF9kcGNk
X3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ID4gRFBfUEFORUxfUkVQTEFZX0NBUF9TVVBQT1JULA0K
PiA+IC0JCQkgJmludGVsX2RwLT5wcl9kcGNkLCBzaXplb2YoaW50ZWxfZHAtDQo+ID4gPnByX2Rw
Y2QpKTsNCj4gPiAtDQo+ID4gLQlpZiAoaW50ZWxfZHAtDQo+ID4gPnByX2RwY2RbSU5URUxfUFJf
RFBDRF9JTkRFWChEUF9QQU5FTF9SRVBMQVlfQ0FQX1NVUFBPUlQpXSAmDQo+ID4gLQnCoMKgwqAg
RFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpDQo+ID4gLQkJX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qo
aW50ZWxfZHApOw0KPiA+ICsJX3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiA+IMKgDQo+ID4g
LQlpZiAoaW50ZWxfZHAtPnBzcl9kcGNkWzBdKQ0KPiA+IC0JCV9wc3JfaW5pdF9kcGNkKGludGVs
X2RwKTsNCj4gPiArCV9wYW5lbF9yZXBsYXlfaW5pdF9kcGNkKGludGVsX2RwKTsNCj4gPiDCoA0K
PiA+IMKgCWlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0IHx8DQo+ID4gwqAJwqDC
oMKgIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4gDQoNCg==
