Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C26DACB0B8C
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B0D10E206;
	Tue,  9 Dec 2025 17:26:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W1wcuTVV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBE410E206;
 Tue,  9 Dec 2025 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765301213; x=1796837213;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=EzDHCkLAJtPWb049MmWJ42YExkr3gkcvJpBx9OFWQNw=;
 b=W1wcuTVVhptEAK84KLYQg1LWaj7AKnHH3Fk+taWhyymWJjTcH0RIioUo
 wvtODqxPczaQTZlAR7L+HfgtKfArcIF9hBxpPTElykuMaICGMFEjfvkKl
 eAD5ch1GK5pQLPMbr31t1nqSAV1NsQXKbdQdHmCjMZhNG1Z21i6XJyTtD
 IajM+ElNXPyGfSy0UjvgC2a8H4/NhlZHPAWmDqgAJOqpYMwc8JIGe1CE0
 e2b2z/T/4FI/vEfrHC2yduws2WZYGkHwMBswBkBu1ZLsbPUFcEmZAveiH
 Npt6QIas+pFp40ZrAu0Ku04Y9SYtMTIAbVBr3ihyrdFfo11kGyU3xlD1R g==;
X-CSE-ConnectionGUID: DnptohRFTUab6MSi9XXd6g==
X-CSE-MsgGUID: GVVBkBSQQbGWCIgQSjDjkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67302465"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67302465"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:26:52 -0800
X-CSE-ConnectionGUID: Lay3+/dKQwGiNgz2xpWH1g==
X-CSE-MsgGUID: OKak4V8rRwq/v0qRR+n3dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="196192653"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:26:52 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:26:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 09:26:51 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:26:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SUl0SAp60mj9YzaYL6WK+54zyxqdbWRCvunrAjW8CGkuon2g1IdNhUPqXQg4Z2YJouZQh96T2FQuXWenGUyQk34RfkdgT5fAQyprkAcOA8o78rqroGN+Rmb+Mj5MkNTVbmFyIrF5CjwpvWIlan6fJkDEqQa19H/F32o4Ynn6KubggcLZpbtHGz0s92KOSLSxulDVxKPOi/Qp0IHYItusYVl/HZ3zFtDxtMiif/MJfDmjX1PuziWybgskmAkMMtpo4w82oBj7lDRta+1Nd/wRLo8472SuPPtexWkdawXvIIha3LSyrqOGnOGtTiJ1xGpU4V0d+q/y5L6rLMWbFn7ILQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EzDHCkLAJtPWb049MmWJ42YExkr3gkcvJpBx9OFWQNw=;
 b=InupDVgSC81iM0n1uywyVZ8UsrtI31RoQub4CdZWrCf2v+76pvRH3PvrkyFcrWUf4h8/TXX07nXUygjtjoycgLxSHnr7zDhUmRjB3h841Zd+7n9CAgzWLUAFwpRcq3vtdQprFRUqkhOYmQ/PlglxWveuX6X3zHQxc97m8jKKBN6LB3VhM5c3myxkgK7MLalbEeuvYOKxwVgbwKTaL67+GUC4T2yNrC1j37/ZrJZmAUFYZIRyd1VDNc3Yfg4i/jAPfbxoS5itB6XlBGJyXCrPDfdJUJ9jIj9aN9lU6u9mj91VYkW9C8h5qOrQU0n8yOgGAkPBfVSAU750vo+18qHp7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB8144.namprd11.prod.outlook.com (2603:10b6:610:18d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 17:26:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 17:26:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 42/50] drm/i915/dp: Factor out
 intel_dp_dsc_min_slice_count()
Thread-Topic: [PATCH 42/50] drm/i915/dp: Factor out
 intel_dp_dsc_min_slice_count()
Thread-Index: AQHcX+T5jcEjLCIKfESjdMDb0kMvDLUZojOA
Date: Tue, 9 Dec 2025 17:26:48 +0000
Message-ID: <e583532e23e1207c076e979ee308b9695f76bbcd.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-43-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-43-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB8144:EE_
x-ms-office365-filtering-correlation-id: 3ad824e6-adce-4398-3061-08de3748225f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?c1V5RlZ5WloyRHRUbDIzV2d2bTUvUWpnekNraEFZNENlM3NrVmJGbHhVc2p1?=
 =?utf-8?B?ckU3aVJ3UzhTNnBVT1ZXNUdmcXdxV3I4cmIxWEp1TmNhbkRzTlhzZXlQcUNW?=
 =?utf-8?B?cXBRdisyQUZVN3NoVCsvOXI1WkRtVVM0Ti9Ma3hJZmNZQnZOT2ZSQXNQRjdW?=
 =?utf-8?B?dk9VeURhMFdTZTZNYjBpaXRiZlF5Yk1PcTNHNStuSHE2WS9KRkN6U2trME14?=
 =?utf-8?B?eXNjNkUvYWhvQ0JkOFdxbGRpL3V5ZjNySVpsZ1R5UERqZ2ZXUGl3U2ROeGR3?=
 =?utf-8?B?cFBKWFk2b1BTQ3BWYW9QYlRqWmtUbExaNmUveHZ2UjVia3M1eUhtY3RsSGFh?=
 =?utf-8?B?NWxuWmMvd05COHFBd0Fzc2pMN1BPOEhWVFMyZmJEa2ptRG4zZXRISGFnMHZS?=
 =?utf-8?B?UzBRUkRhKzVUa3ZzUFo0aHRWelg3MnhqZ1hXYTcvL0pVRUdMc1BnQ0hFU1pv?=
 =?utf-8?B?bTByRGZFRVJ4amFrMlRxZk9rMUtuRkVvTzY4WnBObkRXWS9ETTR0TzV6MFlr?=
 =?utf-8?B?UW0rOU5WVDM0ZlFSaFhUMitiRHAyQW5yalkxbytWM1Vtci9QNkk1c2c0UlhG?=
 =?utf-8?B?dm9LYUw5ZjcxZitVUlBVZm91Tk53bXNHUS9nRkF4YS9BcEtOR1JaZlcxNWVu?=
 =?utf-8?B?MmtRenFQZGJnMlN1RlZha0ZZWVlzNTFuUGdhcGxuM0hqc0p2V01WbGtuVW1o?=
 =?utf-8?B?dmNNUjQwUmI4YW00N2x0Zmp6ZUJpZUw0NEhDcFNLQjNMcnVkYUhPaG5Vbi9l?=
 =?utf-8?B?T2xDM29yaWpxekpySGZNait6b05EaTArcjNGYlF4c1BuTjNINXNyUXhpek85?=
 =?utf-8?B?NEY4TXdDR2c1YzVCd2JMSjNxK1QxTVlPRzBuNm1sMWRIdGV4RThrako5amtL?=
 =?utf-8?B?UG9MS2tOaFplUHBvU0orL0pKTnA5L0tYRlNLRXZXS2RJQkdTTWRob0pTVWdz?=
 =?utf-8?B?V3V1NFpsT0hZWEo4SmYxOU8rMWVOMTJHRmpLRUI3YmpESDlPaktYSlFiREM2?=
 =?utf-8?B?bCs2RTZaMG4wN1dTL0ROc2hSUXlzNUVzOTJWbkpKOTRldjFrOHc1Y2NvaGR5?=
 =?utf-8?B?SENUYjNHOHdjVkRDMzBIT25Ta25Oa3NwWThSRmV2bXo3dWVDZHBVODVJZUNE?=
 =?utf-8?B?OFNFYjBnU0FzZ3M3NGU5UVZCRHFtYVhjempCMCtpbUI2YnhIUDh6OXlXR0lp?=
 =?utf-8?B?N0ZKZWwvVFIrNWRsd1dUU0N4bmljemk1QUhMdzVSWWFjRk5CaVkvdi9kK2FJ?=
 =?utf-8?B?TExnbVZ1WmNnWjBYNXI4eXgyRDVpNE9mUVFybGYzdFIwZHBZR1NmdGRSNVVN?=
 =?utf-8?B?Y1VYb3hSRWlsb1VZeDY1WGI1cGdINmdIU2QwdGhCNy9Ob01KeFh5UGROOERz?=
 =?utf-8?B?VHFabDFlaTNFazQ1eFovU0Z6RTFDNlk3Rlp3THVUSERTbEFkdlQyN3duNXBa?=
 =?utf-8?B?YlNXeDRWVm1vL29NRUlVU3JrdEh6QmtTdEdmZnBXWVRZcFVQcjd4dWpjSUsy?=
 =?utf-8?B?UmdCVFlHMS90Z0hSQ3ZLemV4ZjRxcmV4U2NFLzVxUGJya3lKbFVOUEZrUUpi?=
 =?utf-8?B?Rk9EL2FWSFh3ODZiOGppeUhtVGpzem5DcDlYT1lQTTQ0SlhlMkZFWEM1cGRT?=
 =?utf-8?B?cWxBRTBma1krcTZZSmFtUXRlazJXcGwyWUtwUUJ0MklFNk5ENVQ5b0tEdyt4?=
 =?utf-8?B?cjFrcHZvSW9WbFY4MjR0bGh1dEMzdmR3UGo2eU1yR0p4RUk1dHNLRGN5VE1D?=
 =?utf-8?B?MzdCU2JkSDZuaWZhVkM1ODJOelUrTEovQzRsS2RrSSt2R2tFQlpiazFhUyt5?=
 =?utf-8?B?Tk1rTGdGeUJuNlJHQ084R0ZqeEpyUkVoaGc1YTE3NEJvK3krV1RzVHNpVFNm?=
 =?utf-8?B?cTZSTncrU3Z5ZERtdDA3bzdVeDVyOW5GWjViREVqSDlUMk13cWFETm9DVG9u?=
 =?utf-8?B?Nk5FSjdabGp5aDN3R1ZVcnFYeDRhcUlKR21jdWVWcFI4bnhZR0VBeE5yWkkr?=
 =?utf-8?B?Qzd1L0ZBbkM0bUdaT0crRC9VS3UvNnZTUWNvdlNDV2hjMTFqS3hBZmtmaUNu?=
 =?utf-8?Q?JebzgC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cG1PNUdGeHZBZCs0eDJmTTFmVFgvMi9ZSWZkYWoxMnpFU2FBRXduYW9td2g2?=
 =?utf-8?B?UHJucGVVczg5OE5KRmpMK0tyejk3TEFXTE84cklPeU9wMGs4K2luTEsreDB5?=
 =?utf-8?B?TEhLOEJmczdTMWRkTUdicXcvb3NZKzlDVFlnZnV5NVhETlZWaC95Y3hKdVd4?=
 =?utf-8?B?anpieTg0eGRqeEtQaTJUWXVZaG9oZzYwM2Z5TXNPZThENWV5TnVvcEg5UTJn?=
 =?utf-8?B?ekhQZmkyeUtwdks0bTBmU0JQT2ZlQklpSEU5RjJzOUg1djJrMGN6eUdpdkxR?=
 =?utf-8?B?M3czK0tqbE45MDhTUmtEYWVNM0gycm5kYjNEdkVNOEszYTRNRW5DaE9WNTVB?=
 =?utf-8?B?ZE1COEM1cWR5NFhid2xXV3BGWDRiR2g2ek9Wbi9ZdDcxelVHanZZY2k2c3dU?=
 =?utf-8?B?MXdMdTk0M090UUhqeGdlVHpiVk11UDBJb3VINEU0NG5rclBnZ1dJVEhCKzJS?=
 =?utf-8?B?QlBjN0RMR0ptUnlDdkVhbkQ5a0srWkwramdkbUplZ2p5TnZNb1M1elBoNWRj?=
 =?utf-8?B?K1ZxbHh0cFlQd09YRFI2d3NLd2FnNndtZ3NJQW55Q2NOcERFUGJHTVRZY0Ri?=
 =?utf-8?B?V2p0d3RITHhSdDR5bGJyTksyM1IyVkQwYzM1L29Ua0FsUlEyMjJ6M000bit2?=
 =?utf-8?B?TmNhd1FSQktkVUZUT2wwSG1Yblp3VlR4SExNQkxFOW10UkU5ajd0Q09LREdp?=
 =?utf-8?B?dkFob0p5RW80MmN6dHphR1dDNENrcVh2cVlDWSt3eWI0WlNHOGx4R2NxWWox?=
 =?utf-8?B?VHVubUFMVCtwaWN3T0VRV09pci9oaHpmTHJlMHluMUxJd1lET2o0NjY2Y3NL?=
 =?utf-8?B?QU1Kckdvbm5PdXM0WVcxWTIxT2tLTXdiZytOU3dKYm5nWjBnYmxZZTAxT2Yx?=
 =?utf-8?B?RGlDK3Nhd0xnWTlsdHJwQ2dKSlpHZy9BTXRRc1lmeUVPOVM1bnJmczBua2ls?=
 =?utf-8?B?ZWhSZkVacDF0YStDQnh3QUFhb3VMNi8xeVVqTUxleGFBZ3NaU1plQWVJQ29t?=
 =?utf-8?B?YlQ3VE9OcnhrTVNQWERLTVVvUHRHRkhIVk14L3FsRlBIb0k3eGllWXMwYU1v?=
 =?utf-8?B?cG5lcDFpRUF3ODhSSi9uTEpKNW9HU3BXdUxJWCtpdExiV0tzdXRaMHh6K1Za?=
 =?utf-8?B?T3Fwd3g1eWJVOGFKZk5GckplRUJjdDZ5TmRReXU3TmxxYXBnQlVid0lBSGR2?=
 =?utf-8?B?Vm9KMmw0d2pZU255SWFHdTMwREs4aEtBZElOM09xRDV4YzZuditEWnVGZzRH?=
 =?utf-8?B?ZGxmTktQc3pCU2ZlbEZaaEZRd1hnQUxseXcwMmZXQTB3ejVyc2NWT3VrWnlP?=
 =?utf-8?B?M08rbkdpSlp1WVFsQkN5eVcxSUtyRUlGOEJXUUNMc2xpUERaK1ZWc0JWREhi?=
 =?utf-8?B?OFcyRkNpeUpvemdEampBcmVhS2h2cm01cmJZZmlLSEI4SUQ5eWFhUndkMGxT?=
 =?utf-8?B?eEJsZS9hdmhJeXhmMUszZ3hzMUtoZGhMKzlLWm5maWQranplZjcyWTJZT0hx?=
 =?utf-8?B?SjMyL0FEdTJjRm05QTVUMHhUMmF0WDdZZHYvRFpsaTEwZU1tK3RrKy9GRXR3?=
 =?utf-8?B?TGtYSm0xN3Fvb1d6SFgxOE5DRE1hSUZndStRdExtcWk3NkhxTlRwb2JHNGNk?=
 =?utf-8?B?MjBoSTVzcFkwNDhvN1BPSnhnejJ3NDhpK0xZK1hOb0dzTnN0a0NjTkFHQ1o2?=
 =?utf-8?B?NjZ2YXZZTFA3Z1JHUlcweVhWT3ZOWHI1VWQ0RkdXam1BdVkwMnRPU2MyMnBo?=
 =?utf-8?B?YjR2dGZLbU4reWJrZS9JQjJIOStRd0hnb1F5KzlIdTVKbTFvV3BWQWlYSUNW?=
 =?utf-8?B?b0ZXNGJLN3FMV2RMaVNwcXR1RWhvd2VZdFRrKzRkcDJyek9qVmdOMnpRbVZh?=
 =?utf-8?B?MWN1M3V6ek93NDVFR0NmRXZDTGNtOS92R2phZ2ZFeGc5TkpXOHFUU0FnOHpm?=
 =?utf-8?B?enY0Wkx5Z2FJTFVWRU11a0VlT0Q0SXQ2VG52UENvSmlqcXkyTHR5aDl3Unc5?=
 =?utf-8?B?UmJqTjNKNDZkNzhUdlpSa1V2ckNuOUtFV2VFdnpCZEpjVmhSYWc2L2dXNXhx?=
 =?utf-8?B?RVE3OFZDeG5FbGhpbnIwSWkzSGw1eWVFMmdQWThlbjYzOUN6a0s3MkJTOWdN?=
 =?utf-8?B?UGtpYU1SK2lHMysyNVIwYndXREEwMmZ4ZCtIeDY5MlA2SC9iWFhGaHRuUGpl?=
 =?utf-8?B?d2Y3ckEzMnN0enl2N0FDU1creWxiWU1BbEhGSjJzb1d0Q2V2dWF5MEZ1aFU0?=
 =?utf-8?B?UVdoUFhMT2VNekplUUJ4MTRTWVVBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8DCEAAFCAE048B4785EECF2F7C12D020@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ad824e6-adce-4398-3061-08de3748225f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 17:26:48.6710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5wBggSFf0lPOWEWl6dqHXeu/v0D4qLg91m0d0Y/vMBUA2GUI3mUhMe5zz3G4KPH0jGbllSPitJ2BAH70XZ2gsEiaUrSacFX6hpb6ZXCc/dA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8144
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZh
Y3RvciBvdXQgaW50ZWxfZHBfZHNjX21pbl9zbGljZV9jb3VudCgpIGZvciBtYWtpbmcNCj4gaW50
ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudCgpIG1vcmUgcmVhZGFibGUgYW5kIGFsc28gdG8gcHJl
cGFyZSBmb3INCj4gYQ0KPiBmb2xsb3ctdXAgY2hhbmdlIHVuaWZ5aW5nIHRoZSBlRFAgYW5kIERQ
IHNsaWNlIGNvdW50L2NvbmZpZw0KPiBjb21wdXRhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIzICsrKysrKysrKysrKysrKysrLS0t
LS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4
IDEyNjA0OGM1MjMzYzQuLjc5Yjg3YmMwNDFhNzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTk1OCwxNCArOTU4LDExIEBAIHUzMiBnZXRfbWF4
X2NvbXByZXNzZWRfYnBwX3dpdGhfam9pbmVyKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5LA0KPiDCoAlyZXR1cm4gbWF4X2JwcDsNCj4gwqB9DQo+IMKgDQo+IC11OCBpbnRlbF9kcF9k
c2NfZ2V0X3NsaWNlX2NvdW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5l
Y3RvciwNCj4gLQkJCQlpbnQgbW9kZV9jbG9jaywgaW50IG1vZGVfaGRpc3BsYXksDQo+IC0JCQkJ
aW50IG51bV9qb2luZWRfcGlwZXMpDQo+ICtzdGF0aWMgaW50IGludGVsX2RwX2RzY19taW5fc2xp
Y2VfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiAr
CQkJCQlpbnQgbW9kZV9jbG9jaywgaW50DQo+IG1vZGVfaGRpc3BsYXkpDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9y
KTsNCj4gLQl1MzIgc2lua19zbGljZV9jb3VudF9tYXNrID0NCj4gLQkJZHJtX2RwX2RzY19zaW5r
X3NsaWNlX2NvdW50X21hc2soY29ubmVjdG9yLQ0KPiA+ZHAuZHNjX2RwY2QsIGZhbHNlKTsNCj4g
LQl1OCBtaW5fc2xpY2VfY291bnQsIGk7DQo+ICsJdTggbWluX3NsaWNlX2NvdW50Ow0KPiDCoAlp
bnQgbWF4X3NsaWNlX3dpZHRoOw0KPiDCoAlpbnQgdHBfcmdiX3l1djQ0NDsNCj4gwqAJaW50IHRw
X3l1djQyMl80MjA7DQo+IEBAIC0xMDI0LDYgKzEwMjEsMjAgQEAgdTggaW50ZWxfZHBfZHNjX2dl
dF9zbGljZV9jb3VudChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Is
DQo+IMKgCQkJCURJVl9ST1VORF9VUChtb2RlX2hkaXNwbGF5LA0KPiDCoAkJCQkJwqDCoMKgwqAg
bWF4X3NsaWNlX3dpZHRoKSk7DQo+IMKgDQo+ICsJcmV0dXJuIG1pbl9zbGljZV9jb3VudDsNCj4g
K30NCj4gKw0KPiArdTggaW50ZWxfZHBfZHNjX2dldF9zbGljZV9jb3VudChjb25zdCBzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+ICsJCQkJaW50IG1vZGVfY2xvY2ssIGlu
dCBtb2RlX2hkaXNwbGF5LA0KPiArCQkJCWludCBudW1fam9pbmVkX3BpcGVzKQ0KPiArew0KPiAr
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0
b3IpOw0KPiArCWludCBtaW5fc2xpY2VfY291bnQgPQ0KPiArCQlpbnRlbF9kcF9kc2NfbWluX3Ns
aWNlX2NvdW50KGNvbm5lY3RvciwgbW9kZV9jbG9jaywNCj4gbW9kZV9oZGlzcGxheSk7DQo+ICsJ
dTMyIHNpbmtfc2xpY2VfY291bnRfbWFzayA9DQo+ICsJCWRybV9kcF9kc2Nfc2lua19zbGljZV9j
b3VudF9tYXNrKGNvbm5lY3Rvci0NCj4gPmRwLmRzY19kcGNkLCBmYWxzZSk7DQo+ICsJaW50IGk7
DQo+ICsNCj4gwqAJLyogRmluZCB0aGUgY2xvc2VzdCBtYXRjaCB0byB0aGUgdmFsaWQgc2xpY2Ug
Y291bnQgdmFsdWVzICovDQo+IMKgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZhbGlkX2Rz
Y19zbGljZWNvdW50KTsgaSsrKSB7DQo+IMKgCQl1OCB0ZXN0X3NsaWNlX2NvdW50ID0gdmFsaWRf
ZHNjX3NsaWNlY291bnRbaV0gKg0KPiBudW1fam9pbmVkX3BpcGVzOw0KDQo=
