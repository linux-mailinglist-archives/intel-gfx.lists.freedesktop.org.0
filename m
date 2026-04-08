Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM/rHN5A1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:49:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5FA3BB731
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2872610E619;
	Wed,  8 Apr 2026 11:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0nqhXK1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A7E10E341;
 Wed,  8 Apr 2026 11:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775648986; x=1807184986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aSwPbRmRTQIWJ76EEw3AydUfszAovgvJMuqgRM1VBvw=;
 b=d0nqhXK1oJmXszrEWhSMC4oXvGV4TLsFdD6K1x7QnR77lZmZ31zLVfDl
 6EL4j/q/m8lGjQmGF2K0NK0n0AweSo/O5zW2LXKs+7SfHFC0UTwlYe4wt
 vbzwEdL2UzZYz0keQE7+Iuw+dngdLWmxjET31WljhQN6zsJUikFdGxXwY
 PLc8v6y1Oe3YOqtIrIojsNJEARNmPNVxVPZDI4Z8MQ+i+3uMMs54nHnbF
 DtHtS7jJMbYkqehkzaHKjIEuGoBPkrDIA6hejv2OK0FzBrP9Zs6kZ/eop
 6Y7W1cWJ4dgyJ2Bf/dSieFqMsXMDhXzSmS9mCBQg1HBp7KewDrEfDaYku A==;
X-CSE-ConnectionGUID: T7lnsGRXTt6OkkovowQV3w==
X-CSE-MsgGUID: i2RJBFNkRvuZMXwNGwUnZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="75799646"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75799646"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:49:46 -0700
X-CSE-ConnectionGUID: s6gN10NSTDqXr/pLdGmbKA==
X-CSE-MsgGUID: baRfpEEMS9+qEzFAbcNW4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228701684"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:49:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:49:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:49:45 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aCyXERk2C3CJvZf8lfs7XQDpNteUeWIMmGbDEYTfpxNRIVur3+AByws8O35Psr7pUXdsAtw438C/5j0qAVS6WkomAnkefweS/4EagHbHTchfe+QZlaM5FiFeY5BEnbTwkX5lbVnXxWft4ynb8AsXDFSR7GN3eWRQCGWnoNN7xt1j4LtotDnmAN7BNPDcOCQOOhICMA4tO5d5hlMjRSoqZFR0c3hh/l2a4BB8N9DmnnMvfQFIgctLsalQm+Nk0NvANHhApx4ANzjdI/O4I4UsBFLuq3xSiIKn3eWSIdVp+SOnaIWOZWXFHDVksSpS/tOpZuUHAgKMCeo2n956/CrRDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSwPbRmRTQIWJ76EEw3AydUfszAovgvJMuqgRM1VBvw=;
 b=S5phaPziGCfWsPVIP74s0W/j/eRjBqPR84Ik0DzL/BqAAjnv/8mhQjffnxRzZutBwl3o/nxETzLj0K8qQXmSD5VJo1gkDI3PzvGsWq7OVOP6oVS9JnBtyAdOMhK3ipwtVPM0XeltIheKg51D1x9OsXhgJjjHZyX85Tt6Ax2YJ34st/+L1FhAf5DzgD+hIXa683E+YowSM8mIE19HkLwNr9u7Z0qfB50uY7mYfEsSBO3O2vOm0pt1ZDYvs3+tqAVVFpIU5IRg0c2LUT6EKr38qAm57DAJcpBVazzORwL9vJBiBSpep/yXSGxtFrLm/Z5emuevP0M/VKHwd5TBoX+3Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BL4PR11MB8847.namprd11.prod.outlook.com (2603:10b6:208:5a7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Wed, 8 Apr
 2026 11:49:36 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:49:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/9] drm/i915/wm: Consolidate SAGV pipe active/interlace
 checks to common code
Thread-Topic: [PATCH 3/9] drm/i915/wm: Consolidate SAGV pipe active/interlace
 checks to common code
Thread-Index: AQHcu5UEuUnbgZZVI0uPAwYJqX9O+LXVJF8A
Date: Wed, 8 Apr 2026 11:49:36 +0000
Message-ID: <b595997399ed3f33fe394deeb0b4ec6c94deba91.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BL4PR11MB8847:EE_
x-ms-office365-filtering-correlation-id: 57950d6f-b09e-45c7-7dd0-08de9564e8aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: qp56kZs1fMg3E7ohFcQ9yqGKRo4JDuwqCGickUmgCvush14J71zUWl+9Ks8ViLP4ZhY0oFQ6VnHXm9ZVSMBlinQyr8TdT4tmx0dzgfLhyJ2uZgND8HSaFO/PyoaRT2+kUWknc/VAM6jbK7XDYCQdQg0hqg2Ut0ZVKT1hQWEz/eDUtAJ8m5BzWjx6zbuimTaNsbBUi9VKO48IVSp7iU/dARayLvwRPDMRO4sX5J/lC0OdEgMPmgPHppyF0CqTeFiTKKPJoHRGOn+asCNOOllRBf9+7UMFK38KQQNn+V5LwcXFOGBxCOWHYgr4d4TbaApGXdayPL7dTGKNnJptPqQ5HvRxRIV36nLagx/LQlnz6Go2hlAum9mqF94tokiJFdVLdowbsKF3a0tHczQx2BcNmybyjPVoInlXMbl2ewDmPLNo0oGlBsWA5AcHoXoInf2TS2zHJrnp1P+jziXKFBiTro8A/JJNvcKKd0Oq690FFm425RGn1aLf4ZICVYpduVjMWlzpK34fVyBf/jSNOzL2SVVLobNKZGE6iFE9z8Iy+2fQuqWsRavOp8a+zHJSABYITix4CgTFiHQrF4w5ZIje2732nRitBjcArx5HEvbfowoDI3mKU5TxQHyRLPV0yTRZLTH7C5fuXmkkEK/uHW1yap6hcy3Pd3YXGoIDj53dmTKn1/9Yl7735U0LEhZIYdzeAPN/8Uxf0OleKXvnX9ESGSQ/0PwscZ2oDGBAQX9TA2TgjfosX7makXtTJ9QBiP+uNYw4p7wX5VDRc8y5e8+8l0+TvmZSv3Q1LH6gT9dBJ+Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0xVYTZ3RkhYOFFFZ3J3V2hLRExIZ29uVGVMdEFOZEhBWEpaMzUxNWNlRDVj?=
 =?utf-8?B?VVpocDRpaUhHb3c1SEQzVVZlbDFwZytxWVpOQWh0QU0rQmFIWHZLU1Nwc0NZ?=
 =?utf-8?B?d0lFZ0R2UDVVWXhBOStXWFZaLzFjME9xMDNteWhlakFlVUlVTjR0UHgzY1Bu?=
 =?utf-8?B?U2NlMktaT2ZROFBKS3hBTzhlL0ZXSTY5RFhsa2dtNktqMXFoamZ4NjU5S3RG?=
 =?utf-8?B?VDNPVzBqUFkzNWhsYmhqaUVnOHB6Z25XZDVGRGhoQlhDWlJDbmwwUXN0b1Ez?=
 =?utf-8?B?K254K2ZvYXdNZFdENzZaK3IrMFYzVXJTQWl5K2loQjlYVlp1MFZoaGNYWUli?=
 =?utf-8?B?Rk5TRDdpZHQvUVRveVY1cjBpbENXTmdQeERRZXNVSUFEVmpuR3BsUW8wdjlC?=
 =?utf-8?B?YStVU1M4MGtxS0RuMkpWd1M0VXBhdnR4SUFhcW15N2dia2tDeTIzdCtvR3Zn?=
 =?utf-8?B?b21IKzVvSDVXVTMyQWIxUmlvTndBbkFkN2s5eStuc3hWVnFsN1d1UDlWV3BG?=
 =?utf-8?B?NG5tVGo0K211K0RrSjlCTERzcllYai9YS01uelBrWDU4Qkd1bUZnc1ZYTHR2?=
 =?utf-8?B?QS9xVDdOdk4zN2pyMzR1a2ZKclBqbCtQckloaS9XVmNuK3liVmhWZFl6TElp?=
 =?utf-8?B?TFVkTUd4anlhYUxlaWNLeUxPd2h6Q2M3YyszanVIVHI2TmZPM1B5ZjRST2Vi?=
 =?utf-8?B?VDJtTXp1Q0l3RisvTTdjajdCTDBpaUpLb3RMM2xVMVRLWHcwK1lka1RyYmgw?=
 =?utf-8?B?SThncWJWNGU0a3lXcldGWldraTFjMDlxLzRrV0k2bXJweDhGd0RnazIvVWxk?=
 =?utf-8?B?bmNCUGJTa2QyN2xHS0pJd1U1QTNBajRaSC93SzBiakprVDVlTUxOMEtsM0NP?=
 =?utf-8?B?UHJMQnRVTnpFQlF5VWhwVitoK0JPaUdLTlVZdTlUWE4zV0JvTTFnK3Y4SytO?=
 =?utf-8?B?dEpRRXdyRFhRK2N4TFRKbHpPNXZLYklQcldlSFlFSnd4NExSY2hHSnFaTnhy?=
 =?utf-8?B?aGUzd2pheUlMd1hwem1jdXpFNENrNU5oZ3hlRXdjVFluakpTcm9HUWpEU25M?=
 =?utf-8?B?L1VMR2dnUDFJYkw4c0tJQ2I0eEk5dUtvdGIvTWF4Y0tDV3llMEgrcGhpZHdo?=
 =?utf-8?B?SGhMOTVBckJHcEN1SDNKN3RRdmRJa1QveUJaMDIzL2g3NGFYc05sQTJObFZy?=
 =?utf-8?B?RHFlbVlaSTVueXZSanNyVCtXWEFUalBtNlh2bGpGRGpUMHQvZHN4bkdwSEhB?=
 =?utf-8?B?L09mS1BWTkZqV01RUFhpVVQ0N3J5K2x2TVpidzlRUnlGK0N6a3NCdGJCVXBm?=
 =?utf-8?B?ZHJoczhJaDA2WThFL2lVczhhSXVTT0JBZlVTWUZua0hpN0wyaVlxYXlNbjB4?=
 =?utf-8?B?cWZadHdZSWcvM1B2aGtrSEwzZk1Qak9GVng1bG9qeXQrK0NHNjY1aDVVcklw?=
 =?utf-8?B?ZE5zVFZuSzdGTzhiZ1l2eGswUytEUWpHaVQvb2ZqMDNVV0RXOHBieWZTQ0FL?=
 =?utf-8?B?QWFBV0t0OE5DOW1Fa3E3UXVHR3Mxc3dsRHZ1bXo0QzU2SHQ3VzhBMTdUMi9E?=
 =?utf-8?B?Q2h0TnBBUVhYaGVtVk02Z1BrUlY0cmVYN29kVFNjUnJ4S0RidnI5ZndsS2dX?=
 =?utf-8?B?ODgveVZlc0FDWjFQSThMc1lJcGR5WHNQT3cyRXNXVkI1OUZtb0FUVmp6Wkgw?=
 =?utf-8?B?WFNjTFVDMjVlS1JnL2lVVVBkTWJERjh0RlN3NGRvZzRwMk9hbGY3THA4SHpO?=
 =?utf-8?B?dGhRN2lGTjV6SVIvbGJ3WEswK0praWZKRWdXSmpEMXpHRFJydUJPZ1k4S2NX?=
 =?utf-8?B?TEpnN2VNajk0VFg4akdRQzV4Q0doZEg0VDUycnpJK3dqUk0xazU5MnIvVG1r?=
 =?utf-8?B?QTJyMmF2RG9ScWJuNTBkYUNPOGhuV1diS20rNEdFZGllTXd0djlTYWg3TTI1?=
 =?utf-8?B?Y01GRXRvcXFGRi8rczk0NThBdlhqd3RxVE9MR1ZMQkRJeWJrQ21HUDJpN1By?=
 =?utf-8?B?WTFUNENtOEp5VmNEbnZyVnJldmNHNTRHdWI1VUhrRk92QVprQ3NYYjJJaGtT?=
 =?utf-8?B?ekp0czlUcDFaSFBHcWd0QlArWC9RMlFTaUN1aFdmbnBtd0s0Zno0UG9uUXoz?=
 =?utf-8?B?bEIwVXM5S1h5K1FVRlEyK0xFd2d1MVZDMzIrZko5ZDg3dm5GbVViYTNiR3Yy?=
 =?utf-8?B?MEl3NGo4UzU5cHdudzEzUEtld1FURk5aNFoyNVVNTUNjTjdidWk2YXU2YWoz?=
 =?utf-8?B?aVE4dlZMeVhFSnpRM3VaTlhLTDNMWDV4QnZyUG1xUWZtYzNEcHpGcnlXcGVu?=
 =?utf-8?B?dmlUR2x2WXp4SW4yellrWW1XNndGM0Jmc3NnZDIzZU9pUVR4MGlubklYYVF4?=
 =?utf-8?Q?1I6z8pCvtMmDNabPLCrykdd7DQ+Nn3kx3j72YoQwr7xYB?=
x-ms-exchange-antispam-messagedata-1: 4Vy87nvvidtFY+W5lasWgzqFDhSiEzgMjE8=
Content-Type: text/plain; charset="utf-8"
Content-ID: <21BD49208CA8FA4ABE52F22C50833B56@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Vms/zwZGXB8I2eytBAkIJZYHjo8hBJukmCJzd8gesbJgmckdS9wW9oZyjBJRUkQ4ive6IMPA9TYIxSl1KQ/J+rEIqWAB8l4ZrKu5/ZCgUE3WAxO1ZOu2RLkRgB/ms6CcU+7g1hSC6lWLe80zDkWn5Z/VShnUSxqD5jQ2MQCvrzk8s2/hYgeIecarsEth7TP97toN/x7BHSuEWo60l9ATPq4TeTffikkXDtJrn+yEzg3uWcbl6NI0mdpptbLAqgkFdM0qTB5ur/CgzHlBtDicTdPA5TlQhT69WL++IiXSrdh0fUDwMT+kCVxC9JPmZhoY15UvC4ZmNnatuQ0L05J8Aw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57950d6f-b09e-45c7-7dd0-08de9564e8aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:49:36.5336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gBisBVHjeyswYJiHGpkTNrCpQRNlB1oerk/aFBi5iGgH+XugpJDLWxShMWq4KYyJgmp8VLBSg6BUn1FaigI994tRB5xBV7vf02j8NQzd1Pg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8847
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CC5FA3BB731
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlcmUgYXJlIG5vIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIHBsYXRmb3JtcyB3aGVu
DQo+IGNvbnNpZGVyaW5nIHdoZXRoZXIgU0FHViBjYW4gYmUgdXNlZCB3aGVuIHRoZSBwaXBlIGlz
DQo+IGluYWN0aXZlIG9yIHVzaW5nIGFuIGludGVybGFjZWQgbW9kZS4gQ29uc29saWRhdGUgdGhl
DQo+IGNoZWNrcyB0byBjb21tb24gY29kZS4NCj4gDQo+IE5vdGUgdGhhdCB3ZSB3ZXJlbid0IGV2
ZW4gY2hlY2tpbmcgZm9yIGludGVybGFjZWQgbW9kZXMNCj4gb24gVEdMKywgYnV0IHNpbmNlIHdl
J3ZlIHByZXZpb3VzbHkgc29mdCBkZWZlYXR1cmVkDQo+IGludGVybGFjZWQgbW9kZXMgb24gVEdM
KyB0aGF0IHdhcyBtb3JlIG9yIGxlc3MgZmluZS4NCj4gVGhlIGhhcmR3YXJlIGRvZXMgc3RpbGwg
aGF2ZSB0aGUgY2FwYWJpbGl0eSB0aG91Z2gsDQo+IGFuZCBpbiBjYXNlIHdlIGV2ZXIgZGVjaWRl
IHRvIHJlc3VycmVjdCBpdCBoYXZpbmcgdGhlDQo+IGNoZWNrIHNlZW1zIGxpa2UgYSBnb29kIGlk
ZWEuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF93YXRlcm1hcmsuYyB8IDE1ICsrKysrKy0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gaW5kZXgg
YmNkY2ExYjk5ZmU0Li5lMzdmZGU5Zjc2NWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zMDgsMTIgKzMwOCw2IEBAIHN0YXRp
YyBib29sIHNrbF9jcnRjX2Nhbl9lbmFibGVfc2Fndihjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsNCj4gwqAJ
aW50IG1heF9sZXZlbCA9IElOVF9NQVg7DQo+IMKgDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5ody5h
Y3RpdmUpDQo+IC0JCXJldHVybiB0cnVlOw0KPiAtDQo+IC0JaWYgKGNydGNfc3RhdGUtPmh3LnBp
cGVfbW9kZS5mbGFncyAmDQo+IERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQ0KPiAtCQlyZXR1cm4g
ZmFsc2U7DQo+IC0NCj4gwqAJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9p
ZCkgew0KPiDCoAkJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPQ0KPiDCoAkJCSZjcnRj
X3N0YXRlLQ0KPiA+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsNCj4gQEAgLTM1Niw5
ICszNTAsNiBAQCBzdGF0aWMgYm9vbCB0Z2xfY3J0Y19jYW5fZW5hYmxlX3NhZ3YoY29uc3Qgc3Ry
dWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQ0KPiA+dWFwaS5jcnRjKTsNCj4g
wqAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsNCj4gwqANCj4gLQlpZiAoIWNydGNfc3RhdGUtPmh3
LmFjdGl2ZSkNCj4gLQkJcmV0dXJuIHRydWU7DQo+IC0NCj4gwqAJZm9yX2VhY2hfcGxhbmVfaWRf
b25fY3J0YyhjcnRjLCBwbGFuZV9pZCkgew0KPiDCoAkJY29uc3Qgc3RydWN0IHNrbF9wbGFuZV93
bSAqd20gPQ0KPiDCoAkJCSZjcnRjX3N0YXRlLQ0KPiA+d20uc2tsLm9wdGltYWwucGxhbmVzW3Bs
YW5lX2lkXTsNCj4gQEAgLTM4OCw2ICszNzksMTIgQEAgYm9vbCBpbnRlbF9jcnRjX2Nhbl9lbmFi
bGVfc2Fndihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4g
wqAJaWYgKGNydGNfc3RhdGUtPmluaGVyaXRlZCkNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqAN
Cj4gKwlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsN
Cj4gKwlpZiAoY3J0Y19zdGF0ZS0+aHcucGlwZV9tb2RlLmZsYWdzICYNCj4gRFJNX01PREVfRkxB
R19JTlRFUkxBQ0UpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiDCoAlpZiAoSEFTX1NBR1Zf
V00oZGlzcGxheSkpDQo+IMKgCQlyZXR1cm4gdGdsX2NydGNfY2FuX2VuYWJsZV9zYWd2KGNydGNf
c3RhdGUpOw0KPiDCoAllbHNlDQoNCg==
