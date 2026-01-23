Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KALLqFQc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:42:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F774772
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51CB510EAA9;
	Fri, 23 Jan 2026 10:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtO55tZF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F7210EAA5;
 Fri, 23 Jan 2026 10:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769164959; x=1800700959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4A04xpjWAXn4vsNm+80w16Ct6FzOIwzvaGpV8cWBnRY=;
 b=LtO55tZFhD5cagPKYUsZmaix3p7mBDGqTlkKtKVS+qZqL+sbtTXRB2Lq
 UcDa0N0oP1dxYcccccWo1iR5mXLGf3J5g2EHNXWoMaGY6GgaZ4Ln68z/a
 nGZVQzWOEwkYJCMcN0NOOz2+/vJGLyki2tRk38R/OxCbPsZGjdxTCfnQZ
 obuKfANT3Q8XQDRt/5+YZBwKPQkXR8BlWt72iu9bFwZ7hvX+T+GZ1pwri
 V2mlv0aa/qFXHWdSW8uAxPcPlon3IX5QmyCdhjVQURrUQPLXxNuV2GSRw
 4cJ05SernRFzczKXaIjWJQ8Pn6Owf2UnEYGK56gvo3+mZTfp9PoA1cLvd w==;
X-CSE-ConnectionGUID: 6n0xdTZtRxejZg5X4FkpXg==
X-CSE-MsgGUID: Le9qAxbGSGy2q8PfEw7HSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70582048"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70582048"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:42:39 -0800
X-CSE-ConnectionGUID: NLug5nCHRs+OWxaMYovjAQ==
X-CSE-MsgGUID: B+jjm05XTh2SpTIq6MEWUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211497064"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:42:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:42:37 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:42:37 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:42:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u8kFwBHcNcrfzbMz+82FSr5AR0jYgl719nIC1UfFzmt7DUlZBGbtt1fLN5kPjtH0fbCHRnAgTK7CJWJCDlr6hbupdrSMvJdtezM6joGbrSmAzv9dhyDq7cjKvjCEmZAlTZVoQUZZU/8owDVAokCoBfxvw50Z4oCoJCyGh4brAL64iVcsF2PPfuXtgm6mhOyvwu0b26n9py0q3Sx+3ePzJxTGjXcxQ7gWppOFeSeIjsQI5y7No0LhiW2PzvnHHKNJD1x8Mu0Jy/XCiAzh8LlnrUbF1D8dloRScrtPYhCmrqth8rj1nW9BwHL2BM3mwxgRQ5q/d7kXXy6H5yVyGASoMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XbnGD4/DfTQiTQA0W/9uf3xWdr9OO5ilEsv4rRfvltY=;
 b=OymD2AVHkvqDUS/r6cqodEX55Hu/7RYHckt4BTCH0ZlOtPpizf33QPF2LSN1jM+5arCIisUniPVJu9xpsx+JXf6MSVenBDdLp99k5UbXA4nL50nXRGc/pno1td09/BNo8IXbMJGDcIQ8vXPBicq1HgewXJ5S9g4i4I9XTh0+Q+v/SVeX+BvtLvMNm52sX2HEFrM4RXJiZa3XK334E6y6Sv9XHOcuvWKcDmDolQu5oCTHnC5qeAJiOT+mrZsIATwaIwfi5neEL8xeIs5kIyKJA5y6924GEzC5kKq5O9ukDUNZLMq5iwh5x/BbvwfWD3B0H11ywxQWBqQNRH84XXOZ4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Fri, 23 Jan 2026 10:42:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:42:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 03/19] drm/{i915, xe}: Extract display interrupt definitions
Thread-Topic: [v2 03/19] drm/{i915, xe}: Extract display interrupt definitions
Thread-Index: AQHciyrkRdEUde1P30SdUfmy2nV+b7VeDn2AgAGElgA=
Date: Fri, 23 Jan 2026 10:42:34 +0000
Message-ID: <DM4PR11MB6360E75572A7A7E57F287415F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-4-uma.shankar@intel.com>
 <cf81ee72dd6228c589fc565f0dfadaf32a138b7b@intel.com>
In-Reply-To: <cf81ee72dd6228c589fc565f0dfadaf32a138b7b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: 7cfb5d13-ddb7-49cb-db3c-08de5a6c1e5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qN5M61sr55mcBA7Dy30a/cCVizzMloIL94z4fC6GWytBfJ24uVM54G0ouDf7?=
 =?us-ascii?Q?Ij197G0Ke8K64RbtrFuNZccDWHq+6n6Z5SFv76dSRKcf3cBvJjRaAJ7c+Cw9?=
 =?us-ascii?Q?GZXnf+GhXIIZY8fCmJakbmu7RbSmXj9Su0DGGwHv+NiaUiaJVXc8J6lutm6c?=
 =?us-ascii?Q?celYqMoxN38WgMdUPzWHosdhmrGc2a3Y32Nj/yaXwn7BI16HfIKq3KZ++BJX?=
 =?us-ascii?Q?kRGrnf1kx49tmZMPh1UFMUMv46I4/snrN+vNYHC5iXCH1k5KbIS8GG1c/YNr?=
 =?us-ascii?Q?UKUAxsuSwTU9kawAxTsfY2G12mKc0MFjGyK3F+mGr/46p1hgfE00eTbhQikr?=
 =?us-ascii?Q?gytpjm+OQV7IOojz2oy/2/j6bzM/d6av6x985yP+suycpDzOR8G6oRJx4llM?=
 =?us-ascii?Q?XH9Db2DOYCRzCULkWdsGlGbrzlodGNHvjhmRVQiY8dZg/K7OaUO9YPfk6xtI?=
 =?us-ascii?Q?V5i3JI/PiSgKrjM9X2OPcqiQCnG7ZtFr5AYD2mRm6PFvkTh2cUm2Kd9R8gG5?=
 =?us-ascii?Q?wawpEXAjFt1DjGUV+REWWclo/TQEz5YoOKJjzCOejkyF4hjaNFfK57qOLyOZ?=
 =?us-ascii?Q?ky3pxoecv/f5XKJ6aGdVFGlZ8Y6wXPb7tWg0de4miOfbGvD4/rWkvhjJc2P9?=
 =?us-ascii?Q?HXeSFi4Up45H7W3/hAk/WOCEWDTWRhZmxW3gpF3rlIGHjLCT5fwYtjf4GIPz?=
 =?us-ascii?Q?4BR1djW1fC+HPhnEUsmDEne/4XSrsQh6hZnGiVQV+XKDRg7WoIjq4IhJBLc1?=
 =?us-ascii?Q?smazQ9Cl592kM3qBqCYgQWhi8vzE7gNsjRtz/cfR/ZQLWVf/w6VedPic/Rby?=
 =?us-ascii?Q?5ATZ9Tdzioz2YNdYJBf40vxg2Pl3GcWgE4fR31zFKiLN4Q3lcahllteOxIMJ?=
 =?us-ascii?Q?SXbbJkxinIlMYz5bxBk+MNicpJ4tw371Z/5jsoOs0oK69W4NQxle3tiviGpm?=
 =?us-ascii?Q?kAu2iUBK9EIMBgxj5bLJlXu+zt23Tzk/8oOHH8aJLfOhBMIwfKa8G+wAe06S?=
 =?us-ascii?Q?WIdQ/iEon14bIHtRSktWjpSY88Abu6/8YVHPLWpc7WeTOOh7hTX/ZNO9UPnL?=
 =?us-ascii?Q?jNNaTwSlDfnylfk8imnkNHkzYhd5X8nZO+mvoFBZQ2Wssb8Kcdwfbp4wC3ev?=
 =?us-ascii?Q?fZRy1ERSLs0g7abQcYwnMTpWAZNH6gr3amowfAFfPfd3CBcvVa053B6LosYb?=
 =?us-ascii?Q?KT8UXyAxZoxLOnHgqVIMIYO8eKTWTXRieXn3fgOD3PWMwYmiu2iYMIORJOsw?=
 =?us-ascii?Q?hfxpqA2tOM0qscq1FRXR9mmO24HSkJrFN7viNb4QwOj8Fylwf4TxIENBGdfJ?=
 =?us-ascii?Q?UR+/7T8DdlZtzAoyhqi1zHS6KPWfON+OZ9YyYk7FA/ovl+dB6VdYMj14teL0?=
 =?us-ascii?Q?8JY2qyKEE9HHpsSe7/W75n6rBgkPKgc1jrZOL0Tatz7fOrzQIPREMyfOWIH4?=
 =?us-ascii?Q?vdLrqPhsVJUPk6MXwgIScOPMn/x6ukGUa0EyZJa/d4etISXqLAQhwH3BKBUn?=
 =?us-ascii?Q?dZve0djkWwF1WP25u1kJ7l4aG84Q2Uj9by5Jlw8kiOyGgRIdcxPGZHJaH5id?=
 =?us-ascii?Q?2OetQLeOdEoE6pmODnDeyBjqFL00lb8c6hjcKkLZj8fzFB3pwSiLtUqT6fia?=
 =?us-ascii?Q?NJWObVTE+UFsyxDsjisol8I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qXuoqufuA3huV5ZvDZm86TaiasAezOE0zqqlSkjOZ13mLUWzRvi/p6uYnCSx?=
 =?us-ascii?Q?JcLDi5Thwc0kdmfCXLG/sAU1ugYOeQwdjjUNY4DzApvC2eMLAmfrkBUrVT9S?=
 =?us-ascii?Q?8Y/BxIF7tMGc1SQfC1vJycACnJxbaEYlv/TcsHjzt1JC1R+qtZCdz02c6tEQ?=
 =?us-ascii?Q?nkMhy4OrI7lh8oo+QNdmG5fBhG9I8PcK5m0Kk2P2g9mn+OhGbeurGyL5khrj?=
 =?us-ascii?Q?WyqfVc+YVsVlG82ELvgb3uFjFNh6m5ZLDvM5R8ox3u0g5Fe5xuWHKqjc5kTH?=
 =?us-ascii?Q?SKsdbbnMBnmwrA6a4PW+zVG4DE3iu8qqVIQXRWH9pymicL3U3VqLgMy8Bw4I?=
 =?us-ascii?Q?/nLxmWwhGXudtohjHzFg7QDQ0k59eZhnFWhR0zsdvSIKKaH/zvJn4Q3oi1xO?=
 =?us-ascii?Q?fYY0ihE7n/Ixu3qXQia07Iv/oH0LV/2AzzZXIcMsZyrmMGSTlTkA1B8DfT+P?=
 =?us-ascii?Q?fsKl1P7ycCW42Ns1ztpX/idDRWupsvIz1ZaCFFYOLHA56lDAjyCSHHuUbgGb?=
 =?us-ascii?Q?XJDLdVhpVRc3bi1ojhUj3uONYVpKScZveucTQtdsLkSXPUBEAfZ99p3dl5Jj?=
 =?us-ascii?Q?92Mo9OqC8CmJGuiI9J06HgC5NIatzsy/wiQAOYD2HJd+rwOt8sPiQJ8R2der?=
 =?us-ascii?Q?m83Le0OaS+1xeM1IJgP2FSrMHPyF4kPppAJTzMK9BeuFQ2WSKK+Igy8aXVl2?=
 =?us-ascii?Q?I/OTQVgxL6D/KUA9z1RAPd+6MUs9hq2yTjUuNtTgW+7v1NoWdGPmf8rSy3P8?=
 =?us-ascii?Q?m39nG0wJfUObFATVHefvbS11PRoJW9PBqQcJPAYdFCavrWfS3i/Q1l7GCARo?=
 =?us-ascii?Q?UfXEEAhZDl6uUOO3XVU9b4JUMIJv3hnxMxFSj2x0acmem+yKbvzbcGPoxU94?=
 =?us-ascii?Q?T/9+IJJjfGKOJT/nDovPEOQ61WisdYl9v0nCRgKXG+woS7jczWzbRdLPwden?=
 =?us-ascii?Q?7Na+8aVSzStVcHNcDSdsYEVCD4egCGva8KlzKhlnLeBIJS3jfWuV44Yh+LBY?=
 =?us-ascii?Q?N8SGWUuWrGvMM2GRU8b5lF3hkCzdSEsHpf2eav/0r3mI9ZQHMGo/FO0VHp4K?=
 =?us-ascii?Q?MYqncoYPM4PKvUXb147NOYm6z+w4Ch0mUYAb5JAotIykWV5JAs9aQyEnMwtY?=
 =?us-ascii?Q?SAFo9BrBrFPuPdUIKYzuqg7AsNWs2E26UeacdJRuv/15aI4yrkhrOIlfBdgy?=
 =?us-ascii?Q?LwZP1B08M7lAHIGA4vR7qkYl4YVaNCFAAxKnwz0jjwgG8oh+edMaFPWW/8MF?=
 =?us-ascii?Q?3wSYwYtDHx9M6dbTnS+VW5ikbWLE+Z9+OJnIi6Syz8EWiuL2DPSr8xZtkS+q?=
 =?us-ascii?Q?d6FdMelBBfjZF7Xxo2MAvEIuf2sZEGWVZqxIgooN5Fe1cVOcmSmUz/DGaF0m?=
 =?us-ascii?Q?2sBkEwOaOEXZrkpUEs1J2tw1X4ayGviTQcpG9rxiNUtAc1HP3a0iOBkbSLQD?=
 =?us-ascii?Q?3UqinpAAQe0npz0mWTTsTYVbXuXY9yph3SXM2qrsDAScMwKFNmHl5iBoyNkb?=
 =?us-ascii?Q?xLd5uvRDwPcDFn79z7EEuVahtLDIUI4/KhXaVDPw2gigH3DHQzzWinBI4bTm?=
 =?us-ascii?Q?ZSoBtxg3qSd2Catf0QQVy7qSNU6u4jR8XxGPfhNwqvWvhhHbtfQl2KtQVdRN?=
 =?us-ascii?Q?jfdp6j16KcKciVEBSqFBxsURvmrJ7XMqV4E8YzvfcdSkQN7VmyPLtq/UN1qZ?=
 =?us-ascii?Q?Iez5b8rUZWJXcD2I07sxh5J1AcW8iTUtGVtyN5v0JKt5iVf+EAH3eVML6vdG?=
 =?us-ascii?Q?rPhYAcWt3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cfb5d13-ddb7-49cb-db3c-08de5a6c1e5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:42:34.5726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlNyUCkFpERT3pCvY2wtoSRYMzF/Ky20kn4+hX5CjRupzPFbTTADLnrTUFzZXObpB1IDTdbULnzrTbzA/3W4Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 258F774772
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:00 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 03/19] drm/{i915, xe}: Extract display interrupt definit=
ions
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Move common registers to display to allow intel_display_rps.c free of
> > i915_reg.h dependency.
>=20
> The grammar's not quite right there.
>=20
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_regs.h | 34
> > +++++++++++++++++++  .../gpu/drm/i915/display/intel_display_rps.c  |  2=
 +-
> >  drivers/gpu/drm/i915/i915_reg.h               | 33 ------------------
> >  3 files changed, 35 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 4759a9600d3f..1f922d013cd3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -1333,6 +1333,40 @@
> >  						      GEN8_DE_PORT_IER, \
> >  						      GEN8_DE_PORT_IIR)
> >
> > +/* interrupts */
> > +#define DE_MASTER_IRQ_CONTROL   (1 << 31)
> > +#define DE_SPRITEB_FLIP_DONE    (1 << 29)
> > +#define DE_SPRITEA_FLIP_DONE    (1 << 28)
> > +#define DE_PLANEB_FLIP_DONE     (1 << 27)
> > +#define DE_PLANEA_FLIP_DONE     (1 << 26)
> > +#define DE_PLANE_FLIP_DONE(plane) (1 << (26 + (plane)))
> > +#define DE_PCU_EVENT            (1 << 25)
> > +#define DE_GTT_FAULT            (1 << 24)
> > +#define DE_POISON               (1 << 23)
> > +#define DE_PERFORM_COUNTER      (1 << 22)
> > +#define DE_PCH_EVENT            (1 << 21)
> > +#define DE_AUX_CHANNEL_A        (1 << 20)
> > +#define DE_DP_A_HOTPLUG         (1 << 19)
> > +#define DE_GSE                  (1 << 18)
> > +#define DE_PIPEB_VBLANK         (1 << 15)
> > +#define DE_PIPEB_EVEN_FIELD     (1 << 14)
> > +#define DE_PIPEB_ODD_FIELD      (1 << 13)
> > +#define DE_PIPEB_LINE_COMPARE   (1 << 12)
> > +#define DE_PIPEB_VSYNC          (1 << 11)
> > +#define DE_PIPEB_CRC_DONE	(1 << 10)
> > +#define DE_PIPEB_FIFO_UNDERRUN  (1 << 8)
> > +#define DE_PIPEA_VBLANK         (1 << 7)
> > +#define DE_PIPE_VBLANK(pipe)    (1 << (7 + 8 * (pipe)))
> > +#define DE_PIPEA_EVEN_FIELD     (1 << 6)
> > +#define DE_PIPEA_ODD_FIELD      (1 << 5)
> > +#define DE_PIPEA_LINE_COMPARE   (1 << 4)
> > +#define DE_PIPEA_VSYNC          (1 << 3)
> > +#define DE_PIPEA_CRC_DONE	(1 << 2)
> > +#define DE_PIPE_CRC_DONE(pipe)	(1 << (2 + 8 * (pipe)))
> > +#define DE_PIPEA_FIFO_UNDERRUN  (1 << 0) #define
> > +DE_PIPE_FIFO_UNDERRUN(pipe)  (1 << (8 * (pipe)))
> > +
> > +
>=20
> Superfluous newline.
>=20
> Other than that,
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
> PS. This one took like 5 seconds to review with 'git show --color-moved'.

Got it Jani.

Regards,
Uma Shankar

>=20
> >  #define GEN8_DE_MISC_ISR _MMIO(0x44460)  #define GEN8_DE_MISC_IMR
> > _MMIO(0x44464)  #define GEN8_DE_MISC_IIR _MMIO(0x44468) diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_rps.c
> > b/drivers/gpu/drm/i915/display/intel_display_rps.c
> > index e77811396474..bf00266dae4b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> > @@ -8,8 +8,8 @@
> >  #include <drm/drm_crtc.h>
> >  #include <drm/drm_vblank.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_display_core.h"
> > +#include "intel_display_regs.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_rps.h"
> >  #include "intel_display_types.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 80ea0df40b1e..5cd124083c17
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -804,39 +804,6 @@
> >  #define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
> >  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
> >
> > -/* interrupts */
> > -#define DE_MASTER_IRQ_CONTROL   (1 << 31)
> > -#define DE_SPRITEB_FLIP_DONE    (1 << 29)
> > -#define DE_SPRITEA_FLIP_DONE    (1 << 28)
> > -#define DE_PLANEB_FLIP_DONE     (1 << 27)
> > -#define DE_PLANEA_FLIP_DONE     (1 << 26)
> > -#define DE_PLANE_FLIP_DONE(plane) (1 << (26 + (plane)))
> > -#define DE_PCU_EVENT            (1 << 25)
> > -#define DE_GTT_FAULT            (1 << 24)
> > -#define DE_POISON               (1 << 23)
> > -#define DE_PERFORM_COUNTER      (1 << 22)
> > -#define DE_PCH_EVENT            (1 << 21)
> > -#define DE_AUX_CHANNEL_A        (1 << 20)
> > -#define DE_DP_A_HOTPLUG         (1 << 19)
> > -#define DE_GSE                  (1 << 18)
> > -#define DE_PIPEB_VBLANK         (1 << 15)
> > -#define DE_PIPEB_EVEN_FIELD     (1 << 14)
> > -#define DE_PIPEB_ODD_FIELD      (1 << 13)
> > -#define DE_PIPEB_LINE_COMPARE   (1 << 12)
> > -#define DE_PIPEB_VSYNC          (1 << 11)
> > -#define DE_PIPEB_CRC_DONE	(1 << 10)
> > -#define DE_PIPEB_FIFO_UNDERRUN  (1 << 8)
> > -#define DE_PIPEA_VBLANK         (1 << 7)
> > -#define DE_PIPE_VBLANK(pipe)    (1 << (7 + 8 * (pipe)))
> > -#define DE_PIPEA_EVEN_FIELD     (1 << 6)
> > -#define DE_PIPEA_ODD_FIELD      (1 << 5)
> > -#define DE_PIPEA_LINE_COMPARE   (1 << 4)
> > -#define DE_PIPEA_VSYNC          (1 << 3)
> > -#define DE_PIPEA_CRC_DONE	(1 << 2)
> > -#define DE_PIPE_CRC_DONE(pipe)	(1 << (2 + 8 * (pipe)))
> > -#define DE_PIPEA_FIFO_UNDERRUN  (1 << 0) -#define
> > DE_PIPE_FIFO_UNDERRUN(pipe)  (1 << (8 * (pipe)))
> > -
> >  #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master
> IER */
> >  #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
>=20
> --
> Jani Nikula, Intel
