Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPeBHvNIgGnC5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 07:49:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4EC8F35
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 07:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6E610E143;
	Mon,  2 Feb 2026 06:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXnc3Apn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C5610E143;
 Mon,  2 Feb 2026 06:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770014957; x=1801550957;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ijWbBXmo1CZ8Wk9d0huTBKyKsdjlPTNSyckfSbS3mDY=;
 b=FXnc3ApnsFQz5Cu75P/INgH/y/MxLv26wgw9yRqi/cpG/iBGKoFZM9NY
 KswexBuTKyIkojILEZBwGyBBSov7bbbPySYE23rf78pRqDGjztbyJCFl1
 V+Hf+hTGLdJX/TrQG7CuJOWyoe5ZZ2smxdlXW+zhc0wbevYqJHrXQHxa3
 mmhcm7pf+Z2S5laQw2owiDpg3Ho1EQLu1B7ySXx2c7B3qK+eo2PBKUwAo
 5BDXB7v+CYrOPBNX2hyM6/eIRHYbCFxwNDArEp/nKu7+CdgCFATkGg4rL
 12oE/Es6sL2dYP+6g8q9F/3CxhW0PSotUKTRSxhnrSSHcUMYgjDWKpW8N g==;
X-CSE-ConnectionGUID: 2MSEAhh4TaWNAemjCxoCEw==
X-CSE-MsgGUID: zzRUVQ5dShmexVX+ZMyE5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71063728"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71063728"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 22:49:16 -0800
X-CSE-ConnectionGUID: MQT/9mYJQAu5oxFcw3cMTg==
X-CSE-MsgGUID: snpMRGyMRdmPVidm7G51Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="240126370"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 22:49:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 22:49:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 1 Feb 2026 22:49:15 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 22:49:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CKp/+xjwizydKHXJBW8oBDKx0XNHywf98wUqBRquaeD/8MIxyICbJui7GTXTHOG1zEjNQjxI5YfaZS/lfrNfeE2DT7VzBImabGIcU5enR8PfAMLJXSrnMm92K8twZJlD4xbmy4moh8uWFFQ08iK6CLCs/Clgclvr65q6mQP3CQf+oQUNJMNNNbRF0ZZdrTAkesveraQ32kOu9nCfMlv2PmTWMIgOn+oyaa9va527LB0myJGzNN5Zn0L1sCSt4sHKM18Br18lI3+WPNd1MmUDBCd3p07O4USIxTPBDCAmXOpqSuCGcMllV6ieumQAKWrx1IqiKKc42ucyYg2OSy8OVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ijWbBXmo1CZ8Wk9d0huTBKyKsdjlPTNSyckfSbS3mDY=;
 b=kOTU1X3wfnek5sKeGX/k2DlvrO25kGPSPxUBf4H8z6D66TGF093LgdFOp0/j5aNyH2rbunL5vppDYEvlXYyk1O4zs4Dpfcjvrc0Pi4tyZCwIb32gMdyoLwk0H2gzkBgdwXah5nsQh0FxghnVJYeSaNBx0P6vtOTbWZOB1oJHUOALCcHwZHIAWLG85KAzDwx5AXVbDXSCofRfmjN7LVU7F18KxxOHBO2VfSehbKSpE4QBBtj1ct3PnZ0b8lVdIWAibG+EEbJbw6F+aBFXU+inQBiUEwVKyhpaTxVLlt8Ybb7C+zBj9VOJaBi0VdmUYulMISx2o9fJtxOB4VdNOFc4cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 06:49:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 06:49:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v11 04/11] drm/i915/vrr: Add helper for PSR to enable
 Frame Change event on trans push
Thread-Topic: [PATCH v11 04/11] drm/i915/vrr: Add helper for PSR to enable
 Frame Change event on trans push
Thread-Index: AQHcj4pRv4sS7ed0eE2EioJe2NyK+rVm4FQAgAggqwA=
Date: Mon, 2 Feb 2026 06:49:13 +0000
Message-ID: <150f34acdff987d5466cf67442235d9c0712a760.camel@intel.com>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
 <20260127124120.1069026-5-jouni.hogander@intel.com>
 <e0591f92-7dac-4099-892c-954f73ec1acc@intel.com>
In-Reply-To: <e0591f92-7dac-4099-892c-954f73ec1acc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: ebbc86af-aa7e-4686-fe11-08de62272d40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UWZEWnh5ZGp0UFJpT1dQK0dvVzZ2STAxcEszTjA0WTFzWFVkVjI4em1ZM0tO?=
 =?utf-8?B?dUNvcHNoc3pqa2NIZXdkY2N0czRzK2lEdXZkc1R1YlBGUUwrV2N6YjdXWUVp?=
 =?utf-8?B?eTkwV2ErWllxUWFPOHQ3NUlaWWI1MkluR3VYQUowZGpBaVFSMnRjeEtZVlI0?=
 =?utf-8?B?OUZ4VzBjTzhhaHhNcU1FcGFXbGFCMWp4RWpGc2p0M1Q4U282UXBhOURpL3Jx?=
 =?utf-8?B?YU5aTmcrVmU1OVVaOEVTRWc3Y0VRcW9jTXhVaE9KNUtFblhiU0s2cnJ1aVdG?=
 =?utf-8?B?aWxwVlpiL2dYS1FsTnczRWxIMTJlMGhnbGNUMlJ4aXRPd2dxNHp6cmQ0anha?=
 =?utf-8?B?YTRSWnZQNFlvOTZXbjRxdmdGRlpLTEIwUlZkdWJCa2lNS1pIdUpRU3ppTXM3?=
 =?utf-8?B?dnZMQ1ZrbjlobTJWTWFRc2JTUkgrUHp0QTh6T0xlMXUxWnV5YldlN2h4ZUQr?=
 =?utf-8?B?eHU0NkhaNko0WXN0SFkzS2ZOc1BDUUF6bENZdmoxSjRCY2VSYy85K09Uc01h?=
 =?utf-8?B?Q0JFRkQ5YkppOWpJQnFSZWFXbG1pdDVIbXZZV1ZVcmMrRGFadTUzQmplZU9u?=
 =?utf-8?B?SlhhaUJwTlp2MHVhU3hZcmxOZU5KNmJ3SWJkZ3JZdEFobWFFSG9yUEZGWDd4?=
 =?utf-8?B?QXR3VXg0cXBpUm9XUEZJZVJWVGtjWFdMQkRnSzJteDA3dlUybUIrREpGTnFU?=
 =?utf-8?B?SFdmbnk0eFhBeXFCRDMyOTk5SjhoK0tnc3Y2S1N4Tm05WGZ5eG50WjNzRnhZ?=
 =?utf-8?B?a0puL1Z1emlyR3JmYnlGWnZWVis5ZXdlMzlLVi9vOEtObE0vOG40YTVKaGFI?=
 =?utf-8?B?T3NnM0tFbnNVRzFWbGJpNGU4YmxqaEd0SFJnTUZXOGk4M29yaDhqNjl5Tkpr?=
 =?utf-8?B?WGQ5MGRtV0pmcEVXY2VUTkZ2QjhsakJhci80cGlxS2ljYXRub05uSG5yUU9m?=
 =?utf-8?B?WVdxVmVLb0V2emo5a3kvSnhlMGdaYkVTOGkyZVZnMlp6MkE5cXJ1Z2VaOGI1?=
 =?utf-8?B?ek9HTm1Gc0NzRGkrS1ZQRUlUbHBwR0ZtMmJxKzQ0TlB5d0NLUmVpbFpKNURC?=
 =?utf-8?B?VHJyT0cyT2owNXcrcEFid0RyQWtQMlZWclB3T3haalpWZmtBZWlqc0p2YVZT?=
 =?utf-8?B?K3lZVHZYdXZhSDJLTkJsUWFXNVhzdVY1MVdDZ1NWQWFSZzJGbkNhbHlZSWhs?=
 =?utf-8?B?dzdJNlo5TWxLWDNDNGgzZTJHUkpKSFZ6Z3BtbmZyTUl2bm8rVUpscVMwMEV3?=
 =?utf-8?B?cHMzSzRDclZuemVKNm51b2Ewa1gvYllhRkFycEEvMnBHYjBJRitSTG54bE16?=
 =?utf-8?B?N1JPcmJ4U0drZkdpYjlXdmpndEs0WjR1WTB4eUdONWkxR0NlZW1NN1Z5YXpo?=
 =?utf-8?B?d3JMVGU2RzY1ZEN0MG1MZXllQUxueXJheTlSbHZqU3N5WWk0S1R6S2JGYjhz?=
 =?utf-8?B?Y0FFeFFoUHpvTlc1a0FsWUNjVXlwdmc4djkzWStKU2pxM1VpVzlQbVVqVVMw?=
 =?utf-8?B?dnM3SE9acmw5K3o4alRDVWN4VlV5OHcwK0tZVGEzSUJEWVkrRzBjemJyZkls?=
 =?utf-8?B?MVJnRUxQbUFHaUF5VUwzOFZiQjFZQ0tML2RwVExvUkJERzduUVpNemRVOU9Q?=
 =?utf-8?B?L1hEMjREbGhaQlV6TUtLVDdwaGZtakRFenBSaG1NZU9uNnh1dG5kbG5EY0Vv?=
 =?utf-8?B?NTBrMGpzNW9VUXlMdDRTdVRXa25JdUMrSmFhMjFuSE5ObDRQN01zUDJESTNI?=
 =?utf-8?B?S0g1UE9uSmJ1ZTFtUVRxelhxQUpLbTk2UnhSM2tveDAxU05XNmNQWDUvYkl4?=
 =?utf-8?B?U3FYN1lDTFB4a1EwRjllVnhaQ25GS3M2eUx6RVZPU1JzOEhwQUh4c2NSN0xv?=
 =?utf-8?B?cFdTeHI1eXJ6cy9PMnRjU2NLTFBaREhmNndmaTNKaXZWbG5hZm9jeTY3aUpn?=
 =?utf-8?B?UmpEUTlrYXc4bzA0dWQ3alhyYk1uczExL3U3aTh6OFpEcHlHcXhOS21OZTFQ?=
 =?utf-8?B?Umw2Z3lUZVpEK1RqOXMrenhpcUV1ZWlBZUxBOVJhcEg0WXZUY0JTbWVHWUxZ?=
 =?utf-8?B?NTVMTkxHZHo3eS96T29rSWJIQjlQeVg2dWdpemJYdThyWDQyTDB4d3ZiR2xh?=
 =?utf-8?B?Q3Jxc2pjTTBmaUVpZEk4MWhlMzNGRk9xQ2JaTHowaVZQdUg5bWdReEQ1bFZG?=
 =?utf-8?Q?SJRBJj76uApQDGnWoqnCrrk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2QyTy9xTllSOXVqbFQ4MHQ3MkV2N3NNSVdzbjhuUzZ5VUZ6QmNHNHFSRThz?=
 =?utf-8?B?UXZVUUE4eFdaSVQ4RG44b2pPZ2xrWE1VTG9XRkhhb21na0VzcFpKdnNlWmRm?=
 =?utf-8?B?ZlFJMWdZeDJVZkNaWG9LZkVXUmIxak1DMnFZNWJtUVBucDQzRE50V3BqSHU5?=
 =?utf-8?B?dG1iMFBCcDRiNjQ0eUEyODBET3g0THdkQmJNY3ZCWHZGNWpMbkVjcjN0U3VC?=
 =?utf-8?B?Ui8xOEx4SUNRVlJyVkU5enhvMXo2QkFIQmNUZzhGTUhOUks5MXNYc05Scmtz?=
 =?utf-8?B?YmFnRmMycjV0Z1kxb1lNdUNpa0pwK2dudG5ld2gremhRYkdYQUlvaU0yQlRM?=
 =?utf-8?B?T050aXZOaTNJN28raTRxNWNKUjFKbVJqM2R3NVhWZEtqWnVxVU1mT25WYXlV?=
 =?utf-8?B?OEpxYTZMUjB3aHZmRDFHWGhHNGhQdWQxMThCdkUvZjJpSzdRWW5UWmE3ZWdV?=
 =?utf-8?B?T1BNNjRXLzBvc2tzNkEveVB4WGhiU0I0RXl3L2tKL0ZiUVFILzNINW1pTnRV?=
 =?utf-8?B?K0FQL1lkNUl0Wk13dUFaUTdUdnhqNVYwUVBHNzZ0RHhaV2M1Qm4yRkFXUXcv?=
 =?utf-8?B?dTNVbEVoNzBhdk9HUHBVamI3TEpyY3YxWnZwczhiOFE4T2J0N2wvem5pdk5O?=
 =?utf-8?B?OStuRTRJK2V0V3hxMHVrdDVvazI3R2pBbnF3WmI1ZzJUaHdSek1aeWd6RElQ?=
 =?utf-8?B?Z05ZUkJNcmpCdzQ2VnlZU3BDYWhxTG1yMEtJYWUwSGcrUUZWSmZybGM3K0pM?=
 =?utf-8?B?M0hyVkNta1NIN3AyZWVBS2lsNjJMQzBTczNsWU9lRzRUckFHOHJxQnVGYWU0?=
 =?utf-8?B?SThabmJiUjZ6QnV2OGxReU9NeFFkMklJbVM1NmFFQTMrTUZZa3BKY1RqOEQv?=
 =?utf-8?B?VTZaQkdKS2NlVjJ0MUZpb1ZHY2YwVVZvZjZWdndXYkFMbUE5UG1nWG9neWZx?=
 =?utf-8?B?YlE3ZjJ6VmdUQ2Iyams5KzZIbTdDUktIalplZHp3Vy9nR09JeXlaUUh5eERr?=
 =?utf-8?B?VkF0eUlLVXdkY2FLNlRHK1NLUHZNd2dwZnpxSGxsUFFWZUVOVVRuRkpEZUo3?=
 =?utf-8?B?OC9CVkZMNW1udXhPZTNVOWg4ckp4TGlZUkxoZVl3blhNVG50RjIrOTUxNDVJ?=
 =?utf-8?B?bzdxOHN2QnF0VEVrc3B4WVlwMkdSUllRZXZpRlU4ZGxNajJSMFp6cjlSVVph?=
 =?utf-8?B?bVp1RDdocWl0RmlxTURnVEZ6dDRkRkRqN2J6NlJzZ3VuNlV0eWtxWUp2ZFA3?=
 =?utf-8?B?YmJxZmxsTGNnYitlMXNOZm12TGI1a3E3WHo2SWJCRVhtdE1qRXdoWnJoOUJy?=
 =?utf-8?B?UFJpR2kwbVNIaEF1SC90Z0YyM0VYUkRocy9DTEdVOVBkdWtsWUJSZnJ3QmFy?=
 =?utf-8?B?NklGd1ErNXhFLy9PQTFIV2dwd2N4NjA1MkY0OWVqR3BRMkFYRHFKSk93d3dq?=
 =?utf-8?B?RjRESmtDU0hsQ0ZGYi85OHcwbnEraEo4bTdYRmlvNTkvL2I0Mi9paEx2VDVI?=
 =?utf-8?B?dkx4SUhBYkVTNmxzTjFYRDVJaG5NRytPekIyTzZiMjZZaWt3RHZBckhnM0xh?=
 =?utf-8?B?VkROd3k4dklqZk9pOHZaRjhTaENRWnJtQzkwWUlmR2R0VXZoeWFBTEJYTVVv?=
 =?utf-8?B?WUFxd05pbFlNMjRhZzJhSUU2L1NaWUxBcFVwbGRaZ1E3bDJjSWg1UE1JRlJK?=
 =?utf-8?B?TXhFQVlCMWpZdks5djNpL2R6bklERmpnaG1XV0hHalhvQkFsOG1vS1VXWm41?=
 =?utf-8?B?WC8razgrOVdJb242NzlZR0pOUmw0U0I4YTV2cjN0T1NpcTFYcWFhSFhVM0Fz?=
 =?utf-8?B?Vnp6MHFlWE1WK3lOTGM4SzdzQmZxcWJkTlhtdXNEL1RRL3FaSzlRZlpadmZC?=
 =?utf-8?B?OVoycWFzRGpaNGxaOFlaY1FGMEJhc2tzVDVGUGVhOTJheG8yK3FJQmVCM0dI?=
 =?utf-8?B?bFJZeHEyUWFmQ0NMd0VibjFlNlVINmxQM2FDZFg1OGxmTFRTdDlMT3paVkdn?=
 =?utf-8?B?dU5xc1F3YVI0Y0JCSmRPWnZ4TGttOGp1cTB5Z1BnNmw2bGdpRENvMi81c2Iv?=
 =?utf-8?B?WnNtSzhWQmFOc2t6NnJNR1dJaGVNa0EwdTF0N2MwZ3Y0M25DZlpzem1IcVlK?=
 =?utf-8?B?UlQ3RllBMWFYNGxhVk00R2VwZnlUVkhQY0RYV2JzU25YV0NJbzV6eHlxWjNM?=
 =?utf-8?B?VEZmL0FrbnFHVTZGdW9xY0cydzFkWDNhYWloSHBsOXBEaEpWbjJyOHNmbDFq?=
 =?utf-8?B?R2FBOHRiNWo5aUZ4T2M0cllnNXplTUJrdC92QW9NeVZIdXhLYnVxZHhCTEF4?=
 =?utf-8?B?MmhTcVRLWk1zUHFGc1VpblduL1FtUU9FdnVIMnptZ3pNZXh6S1U1WnhIdUJl?=
 =?utf-8?Q?tYwyTxIj6JZbSNLY1ulUsJkgudv7DI7q4bEIF3qUXh5ny?=
x-ms-exchange-antispam-messagedata-1: 0TKWNe5BGSXau07JskaDOPnqchcOEzGHWPU=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DEDCE954357D6245BB89162B1F31659E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbc86af-aa7e-4686-fe11-08de62272d40
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 06:49:13.4487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: maiJNhFqeH82OklxneHe28Zv/Rb5iGbt0Wd6qq0Y5ujd69uiKpttS5gq7zoy9IGU9OvHFwXEK2ycCK7MJh6mRgrTVp8p8Q16PRv7pAuMfdI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E3E4EC8F35
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAxLTI4IGF0IDA4OjEyICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEvMjcvMjAyNiA2OjExIFBNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gQWRkIG5ldyBoZWxwZXIgdG8gZW5hYmxlIFBTUiBGcmFtZSBDaGFuZ2UgZXZlbnQgZ2VuZXJh
dGlvbiB1c2luZw0KPiA+IHRyYW5zIHB1c2gNCj4gPiBtZWNoYW5pc20uIFRoaXMgaGVscGVyIGlz
IHRvIGJlIHVzZWQgYnkgUFNSIGNvZGUgb24gUFNSIGVuYWJsZS4NCj4gPiANCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+
IFJldmlld2VkLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+
DQoNClRoYW5rIHlvdSBBbmtpdCBmb3IgeW91ciByZXZpZXcuIFRoaXMgc2V0IGlzIG5vdyBwdXNo
ZWQgdG8gZHJtLWludGVsLQ0KbmV4dC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4g
DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIu
YyB8IDkgKysrKysrKysrDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuaCB8IDEgKw0KPiA+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0K
PiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+
ID4gaW5kZXggZjI2OTg5Yzc0MjY4Li42NmM2OGU3ZjNhNDkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBAQCAtOTczLDYgKzk3MywxNSBA
QCB2b2lkIGludGVsX3Zycl90cmFuc2NvZGVyX2Rpc2FibGUoY29uc3Qgc3RydWN0DQo+ID4gaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpDQo+ID4gwqDCoAkJaW50ZWxfdnJyX3RnX2Rp
c2FibGUob2xkX2NydGNfc3RhdGUpOw0KPiA+IMKgIH0NCj4gPiDCoCANCj4gPiArdm9pZCBpbnRl
bF92cnJfcHNyX2ZyYW1lX2NoYW5nZV9lbmFibGUoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gKwllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLQ0KPiA+ID5jcHVfdHJhbnNj
b2RlcjsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19QVVNIKGRp
c3BsYXksDQo+ID4gY3B1X3RyYW5zY29kZXIpLA0KPiA+ICsJCcKgwqDCoMKgwqDCoCB0cmFuc192
cnJfcHVzaChjcnRjX3N0YXRlLCBmYWxzZSkpOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgIGJvb2wg
aW50ZWxfdnJyX2lzX2ZpeGVkX3JyKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4g
KmNydGNfc3RhdGUpDQo+ID4gwqAgew0KPiA+IMKgwqAJcmV0dXJuIGNydGNfc3RhdGUtPnZyci5m
bGlwbGluZSAmJg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zy
ci5oDQo+ID4gaW5kZXggYmVkY2M4YzRiZmYyLi40ZjE2Y2E0YWY5MWYgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gPiBAQCAtMzMsNiArMzMs
NyBAQCB2b2lkIGludGVsX3Zycl9kY2JfaW5jcmVtZW50X2ZsaXBfY291bnQoc3RydWN0DQo+ID4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoMKgCQkJCQlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0Yyk7DQo+ID4gwqAgYm9vbCBpbnRlbF92cnJfaXNfcHVzaF9zZW50KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IMKgIHZvaWQgaW50
ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqb2xkX2Ny
dGNfc3RhdGUpOw0KPiA+ICt2b2lkIGludGVsX3Zycl9wc3JfZnJhbWVfY2hhbmdlX2VuYWJsZShj
b25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoCB2
b2lkIGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsNCj4gPiDCoCBpbnQgaW50ZWxfdnJyX3ZtYXhfdnRvdGFsKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IMKgIGludCBpbnRlbF92cnJfdm1p
bl92dG90YWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7
DQoNCg==
