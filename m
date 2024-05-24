Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B248CE145
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 09:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53AAB10E2E0;
	Fri, 24 May 2024 07:03:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HsfjjKHW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D9D10E2E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 07:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716534191; x=1748070191;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Gdj+ZO1pWuAeDul53wBebs9JQUDoGvDd99UDxWI1U4g=;
 b=HsfjjKHWqE208/KOWD7awf07gO7ZyXLMEirVCUnEL58Ja/BLwf9Ab/6B
 4n/Y0TJvFfhBbdso8M8FRKEXLmBb96OqIC9FUo7d2bUZiD8fdVTSBiyij
 jgmA7NLDgeMFvoGT9GMDRY10BCg2x3xdNnKtHdIsaRS5RzHMWGpDOk8+K
 UAb2amvB+yXZ0XRxgZsqly+vbiWr+j7jjuudPUNpw+V2XAnsIxUaxaDDO
 oIsNGbD+QeKbv2XurBZPeOUtpX4dzxzTZPXf9TOFeRBqgTJNSUAMJ0Js9
 kjat+2iFTKhCPwzg5FXIsv1s8e46bWvA5cqDZa19r841l5lDtm27AjM+P Q==;
X-CSE-ConnectionGUID: T3d44fViShaLNFOZj39K1g==
X-CSE-MsgGUID: TM6qR0DLQ9eJlWU0S0+uOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13128211"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="13128211"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 00:03:10 -0700
X-CSE-ConnectionGUID: exI/vxfaQuqh7mJHolrDKQ==
X-CSE-MsgGUID: cq5fSwg9Qq+IUTTdrcMZ4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="64743139"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 00:03:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 00:03:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 00:03:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 00:03:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYLalCT+c1ktTMKWZyiLF52gqYsALTIpKjB+I02snH15NHPGjs6pwe1UPd25dUPUOhIYI+4MPmdU6tTD2ld7aU075VZNycF59nHq4E/r5c+iEexCj/4NqQPLXorc80UR2MmIMMLZYRvw8XxmzdvSfSxmWOEqMEFpJzhe4/kxDdjCRRMWjfw+Vo6fkNAraA2uZtr3Uzo+dkeE6rsYs1qU/4nw6bGWsJUf3SMoZ26hXf3/H23EJoKdhPqb6vc/KXOJ2f3PD28Xn05Zp+/vU+NIFq/F15xKdIRamTVb+DBhIlqZfhVzo8nYKmSE0S8BY5I0iTy/T7Jgu92bIX7tcvAulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gdj+ZO1pWuAeDul53wBebs9JQUDoGvDd99UDxWI1U4g=;
 b=eyJTdiQYufDO8zf6oFjtXc5OAobnaARTUhkOsuIEnvo0mI0FplgslKQtC8+1SMwt97bblvgt4Dp8WommFYzMhT+aGM+KENzUR2XuW57hEqNPlKMVXtYo1NjTVgKMQVcN5x3HA5sYCmPhQN4cPiB718S5sfXkW70PRYNIZ9n/rbyxo0mFB6FnP8kGcvbBp1+eMn3BeLqJDc8qH+Fp9IQk9Ue1f2wB5kXtfyKqzc1jyHjeDbN76aIMs5dtzOD8NdlPYtajDYkkf2ssO5PR97JjX+TFlbYSODkxe4nHSVMpYdpNACkRz/UXgrlyM3hRgmwgEqSq6NuB5G4oEyv3BvVm3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.22; Fri, 24 May 2024 07:03:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 07:03:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v2 00/17] Panel Replay eDP support
Thread-Topic: [PATCH v2 00/17] Panel Replay eDP support
Thread-Index: AQHaq1t4MwW4JoAFokSlKKnTPdCnRbGl5rCAgAATdIA=
Date: Fri, 24 May 2024 07:03:07 +0000
Message-ID: <0fef0481842ef5bd6d57eae471041d64baba710a.camel@intel.com>
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
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5311:EE_
x-ms-office365-filtering-correlation-id: a67b6893-4beb-4416-733f-08dc7bbf90d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bms3K0d1RVV1azl6WStaMm9IdExodFBhUGI2T3RYZjNvTU90VGZhTXAzTXFm?=
 =?utf-8?B?Sm5Wa3V0dzdVTmZaRXErbDRGSXlCZlo1TWJCeTAzb3YvWkFCSlZUV3N1cnBr?=
 =?utf-8?B?dmp6djFrdTJ1b0hRNEFpUGRaQks1MElGS2xjYzR6bDV0TlhwRHIwMnBFMFJz?=
 =?utf-8?B?SG1XWGNhMkZFRThBM2VvdWI1dmYrSTFXd2F4TSt4cUFCTSs3dXdGZ281ZHBw?=
 =?utf-8?B?Rytib29GWFR4aGJVWmRlOUNQeWVZbHh0MmtjcUswOW9jWkFxSXNscGJzcHZO?=
 =?utf-8?B?NVhsUnZLOWJGeXhnSmFIWndpZXhQMUNscmxmOFVwYVBWQVNGekhmYzFxY2FE?=
 =?utf-8?B?K0ZqMDluUU5kbVNHSXpxMjlzQ2ZJcitPQkhUOWhqWXQzblRuaTc0T2tvR2JZ?=
 =?utf-8?B?SUZEL1VwVjYrU0N1Qm50Y3Rmd1NPRGVmM3QwK3dxYWpLY1dISWpXc2ROSTY4?=
 =?utf-8?B?RmtZZUNWNVdoYWxVQ0gwdm1kd3BJb2pKTGFiWHBHaTNIbSsxRUpDOWNsZ1ha?=
 =?utf-8?B?cEZHQmU3OXNWZjc3VDZwOUl6WXpXM0g0ZkZONGFPTHJ1Tzg2ZENNR0JLbzd4?=
 =?utf-8?B?RjdXOHRqU0ZkRXJDbGI0cHJSZUZQdW5xZUlUTndhUEhCNkFuR2NrUklvTHhq?=
 =?utf-8?B?V0RyR0dDd1NNZVZQUW83TkVNZmtGb1JjR2k1dDFnWVE3czVxMDQ5NUhJSU1P?=
 =?utf-8?B?eEllSld3SXp6bmpqNzBxWm5Cbmdid0hzY0REUlp5WXM0NUxNNTdiZWdUN3py?=
 =?utf-8?B?byswSFVJL1RKbnhqQ3RzcHF0WmM4eWF2SVBpejNJK2M0MlFPYzVkWHY4NmNL?=
 =?utf-8?B?MmtPcEpjd056eDFtcEdNSTdIYzJndFluOC9NaWNqZ1dSbnQyYkdoQTBQTlRS?=
 =?utf-8?B?ekExcGF1UjRwVFBzeVp5bGxCbmZDQUk1NGNBWk1TMWZkY283U2RPaEUyZU9p?=
 =?utf-8?B?NFNNdGVyeXFSSVpIK0dYaVZEa0hMTzlHN2tnZ0NUT1plQkNVMWhqYk4xM0N2?=
 =?utf-8?B?WGpnaldmbXRwZ3RESkoyQUNqMFQ1NjE0TFVGN2FjNHB3M1JoWng5TFdsTkVw?=
 =?utf-8?B?YXZQOSsxYVdPWUQ3YVBic0RsdVJseGh0dEVkMlcrczM2bGI4VkpSZ0NvcFhB?=
 =?utf-8?B?eGZyZHhZVWdxZCtTdTJGbitOZzl1b0hzRkdpNjRubEgrbjkrdnBNMUxZSVFB?=
 =?utf-8?B?ZHRCZmZjWnkxU3VObDF1RDc1d1lRMG1JWkVGNGFmT2xWWU1Xc3dQUEd1cUJt?=
 =?utf-8?B?b0tFTUV6amVxZ0tiL1JYY2xDb3NuRWVjZ0NJZ3hvcXYrQUlSV3NEYmFHaFJE?=
 =?utf-8?B?dU82YjFJMVpkTE54NUZaZUxJK05kREM4UmlSV1lEZXlDT3pvWGZSVno3SVc0?=
 =?utf-8?B?RjR5a2R3dFJoaDN2YWJlbHF2OW5TOXpJaTkwZ0wrOERBUU9YZVNXdGxGQUs3?=
 =?utf-8?B?d2g4UEF3Uy8xaGNJb0hpSnhJOHlUbXRocW5VeDRMZkxNWTh4cHhKaVFLUDFO?=
 =?utf-8?B?MUxKTXBVa3ZmNmh2V1FkNGc2YmRvZlZ3OHNkYVpWQzY4U3E5T2svRHhpQVNW?=
 =?utf-8?B?WERpeWEyRHRsUDFWT2poMktPU1ZVOEM3K2J1clcxWnFldW9Ham5GZ1lJbGRk?=
 =?utf-8?B?MlBKWTNleTBCT0Y4cHhldkJUbmdwYnpqRTJLaXFrYXZQRjRZSzdVcFU5ZTJL?=
 =?utf-8?B?Q1gxbWRrRWJob3MyelhRMXNLekhFSEdKMGxGV1ZNQmU0M1hSRUttRVFnSlVp?=
 =?utf-8?B?eHArdmRQSkNwQlBYOXI0NGZOZlNyVlh3MkJ6TWQ0NHMraUpnVEFya2pHV0c1?=
 =?utf-8?B?V3J1eStodWRVdkUvNm5VZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEEvTTd6a0MwSUFwN0pLUFNGMWQ0b0xUa3BSb21maHk2cTRHOWk0MnRZS21J?=
 =?utf-8?B?Z2dINXpHTzBiL2M2QTRGNWlRZG1QMUtuMXd2SDYzT2pmQzJjQUVkVWxWMHNi?=
 =?utf-8?B?ODY3TGlmNmx3ZEpuWEE3SitFd0E0Ry9sUlVrTXVMQ1dYalB6eGVFZTdPR1BK?=
 =?utf-8?B?V21nZ3F1VkdhZnhEUVJ2Uy96WldZSXoyMDM0VFR1dnVSVnkwVFQzR2F0b1Yx?=
 =?utf-8?B?blVWK2ttUzAyblpacTVOWnAzRnZuZ1ZiK2M1UHJyeStlRmF4WXFtRk5Ua2V1?=
 =?utf-8?B?eUQzSkcvRGNwaUJWSm5NZjlaMTZWdU4wanFMRjR1UG0xSGMvMFcvendMZlRm?=
 =?utf-8?B?ak1jVDRTWkI1WllGb3NreU8vNTZsOUwwbGRyZWdzMktqYjMzb0tvYnArUmdK?=
 =?utf-8?B?N0RBTUluUUF0dFhERjNTZHBJdlJmdmRDcThnNmlabmo3ZjNZaU1MWGJld1N0?=
 =?utf-8?B?eWdQQjRzWXcyTzdHSklobU5DTTZPdjVsazU0ZGlxbTlqd3pSMEF4NGdGaDdU?=
 =?utf-8?B?K0toUWRCbE9OODdzWkt0ZzBFdlJIYkgvbUpGbm5abWgvVVFpTTIyOGlmL2NL?=
 =?utf-8?B?bGJYQ21SeXZXalNzeEhZRER0TWNKY0lYNG1lejB6bDh2b050dDlhTnVGbDBO?=
 =?utf-8?B?NWdXU2pDNEdPbnZHSG9sZ25GZFVxQ2ZpcjErK0tISnFhelZ5NzZOY284clJJ?=
 =?utf-8?B?Tm41cmcrWVJ6UzRFODF1NVREZjl4YXR2SVhvSnFhZ2k5ZVFlR09RT2E2T3ps?=
 =?utf-8?B?WUJFajlIZlFndThBcVFIb3RLTHMrYUZIS2cyMG5Nb01VbnMrdDhHeHJzenVo?=
 =?utf-8?B?dXFPa2JMOFVEMU1yTXloYnZwVUg5ZWZOWW84Ri9yN3hlOVB5YUF2OTVVTEdX?=
 =?utf-8?B?S21VNmRSVHdScHorNHVWYVFMSmxXU0V0MzUzU2NDRzRVUGZWUGNxSVJSclNm?=
 =?utf-8?B?TVZJU2JhVENtR1Q5dnB4S1VjelJHWVN6TFBFU01QZW9YbkdBRnNnMk5YcllI?=
 =?utf-8?B?eUtFT0xQQTRyQU16WmUwMGp1WXZLYmx4ZmlXZkZwWmdYWEFvbDBPcEFIaFlr?=
 =?utf-8?B?TDRFcllyRmE5N1BORHNrR083OEVRS3lybEJHMG1LaUtWazJZOEVXY1Vmd3Mz?=
 =?utf-8?B?NmYrRE8zVFlmS0lmT0VMUTBhTFhxMm1BSnBodFlOYTlxNW1iWUJZbk0yQzlt?=
 =?utf-8?B?bE0wVDVNQmRPeWxLSzlJZDVzcDRud05UWERJeWNGRnAvb1p6RS8xcURKMVBT?=
 =?utf-8?B?REVhdWE5d2hnSzZ0dGVYZEh0Q1VuOGtSNGVyTXFoVC81WU84WEYxN2FlWFZw?=
 =?utf-8?B?ZWNPQUVkMytpTlYyK0RYd01zaWtoRW5BVTV2b1Z6Q0JJY2t5cXpNY3h5aUF2?=
 =?utf-8?B?NWdKVUY5Vm5yWVNsdG5JZTZuakdhOFloY2RjMkExVmNEUmFjVFQzSUNKT3Bm?=
 =?utf-8?B?OW1YcXpOa2l1b0pLMTcyVEcvdXlwcGV6YlB6SDY3eVJEYlNRdTJ1S1R3ZXJn?=
 =?utf-8?B?dzIwYTVYMmJOYndzVmZIWWZ6L0FvRXN4T1NkaTJib3A3NzVBZ2U1N2tVZ1ZG?=
 =?utf-8?B?RnR1b09aaFFxdGxKZ2pQcUJYakZKNUx1VmRzd2F3aGhQb05uckQ5QUwwajZY?=
 =?utf-8?B?OVpTZWltdzJuOGdqOFA4djdOdGQvZGJueXJiN2FpRHc1cCtkMTlHSHdUUCt0?=
 =?utf-8?B?enRuWDc5am1vZkl4bUNkY2o5bXBCZ1pUL1FGamJGVFNLQitFZnFXS2ozTk4v?=
 =?utf-8?B?dlBPdXVDM3hybVh2T3IrQld2eWdRZEdlSmxMU0dHZERPMnRVWHliWjFDdEdO?=
 =?utf-8?B?b0ozL3p5aWpJSDFTRzFTaUo0Wk14T1crVVV0OUFsNlBPdXgwWXkxUlNPeWZq?=
 =?utf-8?B?U0FPTGVkSlpoYXpFMTJGQ1hTN1A0S1pPK0RVV2NlZDV2YkJ6VmVJaE91MG5k?=
 =?utf-8?B?emhJVW1rZUlVb1ZSOG1QaVRLNWlLeFRWTHpRQngvd09naEJLRk5nRVIvVW15?=
 =?utf-8?B?cEhESFRkSjlxaGNZa1NPMjRJZUZUY2xzZjV0eE9zU2ZFWHpzMHA4RGdUYnRn?=
 =?utf-8?B?cnpSVEZsWTZISTVCbDNYcmlMenVPYlZMVkRIbUk0Q1pMUDk2NTdoZ0pUTGpp?=
 =?utf-8?B?eUFZQ0RJVVlaMXcxQWYyTHBmcnd2VitpL2RVd3hSck0yQ2h4ZXNBSUthckF3?=
 =?utf-8?B?ZkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2F346CBE19A2B54880729045ADAFFD08@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a67b6893-4beb-4416-733f-08dc7bbf90d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 07:03:07.8151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0hkZP0Zb5rv4kGGrJ4LGnvmPdgoCEa5bHsTyLFyz4QBERfU4O4g9rGVi4fvYHso/S0qOOkYKKslUFjidsMIGnM6QIB/63Ax8phEk/KULD5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
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
IDEyOGIvMTMyYiBlbmNvZGluZy4NCg0KWWVzLCB5b3UgYXJlIHJpZ2h0LiBUaGFuayB5b3UgZm9y
IHBvaW50aW5nIHRoaXMgb3V0LiBJIHdpbGwgYWRkIHRoZXNlLg0KDQo+IFJlZ2FyZHMsDQo+IEFu
aW1lc2gNCj4gPiANCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaMKgwqDCoCB8wqDCoCAyICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjk0ICsrKysrKysrKysrKy0tDQo+ID4gLS0tLQ0KPiA+
IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDE5ICstDQo+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25z
KCspLCAxMDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoNCg==
