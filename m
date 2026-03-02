Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCGZIrhDpWkg7AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 09:00:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C691D44BC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 09:00:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DDA10E352;
	Mon,  2 Mar 2026 08:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/ZA9zXv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FD310E139;
 Mon,  2 Mar 2026 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772438454; x=1803974454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gRyjRs0xCRetyJlv/U0NPkpGlYwA6aBk1pkSC6GIPLo=;
 b=a/ZA9zXvRvjrk47noQIOZQhynkwUB6Y/9+SZ4PbAbT0pi6mP13CRFFaR
 ZR777chRQLwRoJCLYq9OWlQu+qjYDrNBUA0rCB25BJvsZ59Z40CW1J/Ce
 6CNcQN2KKvUVBG+k5SRet3ii1+HP3+33Um/8hxDEBqs9h1EAlHnpfMoY/
 kqF1kr5OywyRBJLdGYBPQgthCI/lH4Jz9WRkEk3mPJrNblhjbhbBq9xBU
 Gk8XJcAuHL0ZfOkrzTKA5cc9T7csaLVCBlx66H+JCBR5/DMcCTm1BkzMw
 +Ja7uP6Sk3gzkRVqwuygQLk6IwMad7NfQILMVUOx/ntI2EUtPd1FlaI3Q w==;
X-CSE-ConnectionGUID: GAE1EkFmTEKViPt+udsmPQ==
X-CSE-MsgGUID: q9rGyuJTTbqWQfyWzHTmZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77279508"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77279508"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 00:00:54 -0800
X-CSE-ConnectionGUID: ZXwPGCn1QHmUrXtWl6vc4Q==
X-CSE-MsgGUID: VquQ8IP9QnK9aUa+Dl9mTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="248076407"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 00:00:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 00:00:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 00:00:52 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 00:00:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G9SkJm3qPPTQWWkANVpSRP0XhPN3pxT1iVZhU1i57QudKAXulTOGu2qqTPRQC1ueQFv0LQ2X4m5crS2pqc7oNDZ1euENEQpjxJIc4dzjhBQpOdR+hIafZB+6FIdOcnorAbu54Xcz6S1WPAt3f31PEIFCab3EXVdv7kMNPF6krxOBlHjtThQ4kYqeyTr08f21AsTLlaHL1Es9UvqHyXboa89hXx8vAP0k9wVu8tZ61tyTyy1EfUeWRDM02qNoGxNF2YTHGmqSlf2h68GyDIczRotkRtilXhP8tKUhWHpRIpKWJTvbLLokDxpGKa0+3+sjEjm7VIJTPKnEGFc0f1sPwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRyjRs0xCRetyJlv/U0NPkpGlYwA6aBk1pkSC6GIPLo=;
 b=TwVHwphyzoZZFinm04vfWX6fK2HQbk+76+09SnwmK7XMkFqF5iF6mND1iUHffGcASTJxfe6wzGTvmMFZI7b63/uepc+XpXSxnh5hhpppFLPf4kdyG7z8sRq3JizG+MG/bkvAn3ky4164daBcpoSIooryBjh399SxVfTHNLZ/I2ncRJTYx/WBuogeXmIHWdhGKh4a6JOl4WDuQItO0in/mEL84grZcl57COdTmDP5wd4bcZYqraiuNaOYOVdDvCsADPUhw3eeEEVY7b6lC2PpnE23iGHqjphow0v1UnGfbbBZq41427qfEFZAeuNHX1sbb3yETnSd5MGHGROdPLkv/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19)
 by SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Mon, 2 Mar
 2026 08:00:49 +0000
Received: from MN0PR11MB6009.namprd11.prod.outlook.com
 ([fe80::e564:523c:c8cb:95dd]) by MN0PR11MB6009.namprd11.prod.outlook.com
 ([fe80::e564:523c:c8cb:95dd%4]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 08:00:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
Thread-Topic: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
Thread-Index: AQHcqfX0a1ZHy3KePEGa/cNM6gHRX7WazCEAgAAKKoCAAAslAA==
Date: Mon, 2 Mar 2026 08:00:49 +0000
Message-ID: <1bec280e94efd93069cf807703a41f5c631341d3.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <46978246247b387d6d1de157d037014e7c132531.camel@intel.com>
 <67c075b6-ff7c-45fb-9b23-906a9ed98355@intel.com>
In-Reply-To: <67c075b6-ff7c-45fb-9b23-906a9ed98355@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6009:EE_|SA2PR11MB5211:EE_
x-ms-office365-filtering-correlation-id: 973cbe6e-d9fa-449e-16a8-08de7831d14e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: 7RXxVtmUTXHr3dtH0bxHaPz+5e3xVxm5Wv4Au0FX19O9vwoYEr/FnGLqE9NbCu8cIuhFDHgzBeEfXoGBXTYC6wLeAXzTf3CMqk7tPBL33MNVNx9nHsJQoFL0U/+HixmrcGrspHZhcQB5/Eq6f4Z6VcduxPPLjiuDJfOQfcWXgma8sJJQTHFii3yobK5Tzky9zghI2gGwnwmhLZp4qyFhqh3t11aMPj9visnuw99LdTmG5q84gK3lhJhKzCEpe5NxKf7U/AmOROYwPWUTGjzw2sqiHu0fVGIOOKZKGcFWalI2VA2/vMhwOGWunGGxRaAe6u4EJMDeKGt91Lh5FKmAMfyiKz/riQ0oaX4b7XycepxpvRAh6kkL6pPF2+yEI9CK9Q7RT8fBQiIHyi0gpNS7Do9thr5/G65PQ0xflBEsNgRqM3+B8olxlDkz2+yB+EtVvIYsX3L0+bygSUs2C3b/YqDTw4resyR84nrPqJblASwuLzcCQ8GyqClJEFMByxEmY4NMJkQ+R2MNsMRtyVbwM/RSjQ5v+QU705MlDaPRyULsxp2ItMEAt0gHmQoksXOZ9m8No7RLPpniK6UdsIODpnWGYEqKpjAjcntAe05BNBCRaU5238PPY6xf5bJYfMYjMLKwuPdj1o13q8tmpGOkQGvBPWYKzDgpQnGeDVdrhCbWW4GVZnDIYwY/+M5KZdneUrnJOqZW1xHpps7k8CfcnEfiSUIJy497/JM7gM5UCqQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzRsdFhnNk1ZZ0ZYWmlMdkY0UTFnYnhEOHEvcjI0QzJ6Znh1QVRwZTJmdVhS?=
 =?utf-8?B?RjRjTXVRUVRHUDZNNmFtREp4a1NZK2IxUnFwOUhQQmJvUjRMVXdJTUhxU3BN?=
 =?utf-8?B?dGd5S1hEdXhGUWpZVVY0Zko0NVZMeGlnaE04ZElPZmZkMkRKRXdGQkNYRkhn?=
 =?utf-8?B?a01wZ0RtZVZ5WmM1czE1UGdmNHFUTXlQV1hNUzZiS0V2NUNzNEJmYkF4eGZp?=
 =?utf-8?B?OTNyaWtXbXphZHY5S2ZXcCsyclpWM01BZU1mN2pTMG5RWUZIdGRLVmdDVzNq?=
 =?utf-8?B?UGVtSWZPMFFkRzRiQlRwc21HeXhrb1Y3TFVveUtkdGE1TzJERGYxT2lKTDJ5?=
 =?utf-8?B?bi8ySldFWG5sWm9Rc1lWcktpOVZ0WVZlcGpYU3ltd2JLVmlmcld3ODJvb3lX?=
 =?utf-8?B?L3hDTHprWFNyNWI5bTdqYWpnVHJCay9uRFYxYlFVdjk0THZ6bFJnQnZqQVpZ?=
 =?utf-8?B?ZURadC9DMlk2T1ZSWHlBQmtsVXl0cnRybE96blM5UlZuaTNvUllSU1VZNVRu?=
 =?utf-8?B?UW5zRnptdDByMXhtYlVBZHRzUGxiaUxvMGpwWGVrSzBHNGNFbmdnaDZFa2dh?=
 =?utf-8?B?ZzRHRXF2Skhnd01EYTJ4R0IwUkVobjAxWkZld0hwQWJlZmxnanFGeHRONnVJ?=
 =?utf-8?B?QkdRTTdXaTdiWEZQdVI4Q3RiVEZ2MW1qcVBITHpaaHJXc1luNThEYjNaTVJi?=
 =?utf-8?B?S285YUtVRzdsa21XTHVNK29KK2R6ZWdMdFlOWjZiMmNkVzZPSGtvaWxES3Zu?=
 =?utf-8?B?MUVkU0cxcFJtaWliUjNNMzFuTVR1bE9GY085b3dmaWtMN29tR0R5enpYc3VJ?=
 =?utf-8?B?dmo1eXBTQ0VUL3NGMTc1TDg1Z0FPZElLczlPMW16YmJtVWxMb0tscjZ6Nmta?=
 =?utf-8?B?OGI0eTJpc202NmQzV0hDalVCcXBZR2FSakxsT3VFcnhzQnJaUGNHNkp4YWw0?=
 =?utf-8?B?WjJlem5ZODYvSjY0emIrelJPSGkvTm9ZUXRIcnRMQ0JXdjRhTmx2eGEwRVFS?=
 =?utf-8?B?bjVjamxkbVpsbDBZblhXSm1FQ296K0xDWmRWMFFNSExwUEdCWDVNUERYSFU5?=
 =?utf-8?B?MlA2Y3JDZHJpVHAxVkpQNDJiWElQZnZISEZZdkNBWlY5eUg0UXVvNmIzNWpq?=
 =?utf-8?B?WldIU3FpV1pqRkVwTlR4eTlFNXkyc1lYcDVUUWRvNUNtN24rRWJXcnFzTzJz?=
 =?utf-8?B?Z1oxY0tXajdWUDdiVk1oS3dXVUx1ZEpDYWxOT0Y3aGxwSjRmZm53bDBVdzIv?=
 =?utf-8?B?TWJVUnk0VjdSYTdDZHoxdzl4ZzUycVhIYlFKb3dpdkkxVWVSNkxkQ2IvcVUr?=
 =?utf-8?B?TENzbmlKS0hqZHdVeDhjOUpjT3VwMWZlTjFQaFY5N2NZdVJMcUY3OHdBU082?=
 =?utf-8?B?UTF2OVBDZVJsTFphWFJFbVAzdy9CTnBRUXpPWndFM2h0SzhPZS81M3RHZ3V4?=
 =?utf-8?B?bnlJajZxc21wMEZYVVBBeWJqemJEenRvWHBhLzhpN1QyVmlUbTZ1bUZYNURP?=
 =?utf-8?B?OXZPeHN6RHpvc014a2NoaFI5YW5MdFBSN044RUVSVFVNQU80MWw5OWJaMVpJ?=
 =?utf-8?B?cmU2NHgvQkVNd3Uxc3BQN3hDcDNVWVVocEtQejdYL3cyNm1VeHg1eEZFOFFP?=
 =?utf-8?B?VXVTZVJWQ3R6alNOeS84VlA3ZENMSWJuSVlKVUlITXQ5bVZ3UGY1Y2JkcUEz?=
 =?utf-8?B?TDhQajRtL0liVmlYenByd1NMcFlwOVZ2MGFnVXpRSEI5TzhoeFVYVDV6MkRN?=
 =?utf-8?B?dUd6VWM2WHVpQW9DczVSSUtES1hCR3NyQ3REYWRMS1BJa3ZMZGdjL0pPbjVx?=
 =?utf-8?B?OXQ0aFJMWXh5N2lQdlB0OXE0QU44UytFVHhoVTdrVXozSTZ4RlkyaEVpaUNK?=
 =?utf-8?B?UWhGREpWOHJZYTJUb0RKYlhyR3NsamdVT2piVkswdis5REduV2VQN29JTCtM?=
 =?utf-8?B?VHREU2pqK1h5cGVvK3A0Nk5zTCtTK0dEMWR4cnZkVGZZTHMydDIyQ3RERmZY?=
 =?utf-8?B?eUlMZUljWVI3bmF2WEErbnhnNW13QVpBRlFCcFRUMGdKaUUxOE9OcnN2QkZ6?=
 =?utf-8?B?cWsrMVdaZ1A3dUZSTDN2SHZJdk93RnphZ01hVEtERzlIc0cvdzhBM0NDQkNw?=
 =?utf-8?B?VWVDOU5mR0Q3NXcyTXdwcnJkVjZiZE4yMVFXc1FKaTE4YS90V3Q4eUxaaHV4?=
 =?utf-8?B?a2V2Z2FxNlo4NWVybzllOUtyamJkVG9KVFNSNlRSL1FPMjVGMFpGTWpvMGxy?=
 =?utf-8?B?OTN3TlgrbVh2S2p5N2xlNzNUa1ZHc3JPUWRDblpnc3NTZnVPTkJpN3ljRVp2?=
 =?utf-8?B?Qm8wcHQ2aGNuc1U4VzRaSnE1YU9XNklEc3I3cU8xUmRTTGJxR0l0NU5vcWMw?=
 =?utf-8?Q?ypf/jNyKn7aO0s8IHWhJ7gTx5RfN8yt/1vJuOhKBDEyjC?=
x-ms-exchange-antispam-messagedata-1: CZz8ceT8xj/785/RrGk7ZWDoKQDqwKHf3mg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D8AACE20ECBD634E87E761D966A012B7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 973cbe6e-d9fa-449e-16a8-08de7831d14e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 08:00:49.2861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gp6z761u9bb8+uaGESKR8xzd7wnU5rcbk0QubqhW8HllHgta3zYK6oaBhXDYqg6uuKV5O1GrgdOW3ZV4lorV3sePEprNl0pjE6jjaPwNCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
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
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E9C691D44BC
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDEyOjUwICswNTMwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gT24gMDItMDMtMjAyNiAxMjoxNCwgSG9nYW5kZXIsIEpvdW5pIHdyb3RlOg0KPiA+IE9uIE1v
biwgMjAyNi0wMy0wMiBhdCAwOTowNiArMDUzMCwgQXJ1biBSIE11cnRoeSB3cm90ZToNCj4gPiA+
IEluIEFMUE0gaW5pdCwgdGhlIERQQ0QgcmVnaXN0ZXIgQUxQTV9DQVBBQklMSVRJRVMgYXJlIHRv
IGJlIHJlYWQuDQo+ID4gPiBUaGlzDQo+ID4gPiByZWFkIGhhcyB0byBoYXBwZW4gYWZ0ZXIgdGhl
IERQQ0QgaW5pdC4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8
YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA0ICsrLS0NCj4gPiA+IMKgwqAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gaW5kZXgg
NjEzNTU5ZDExMTMzLi5lNjA4MDJiMGI4YzkgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gQEAgLTY5NDgsOCArNjk0OCw2IEBAIHN0
YXRpYyBib29sIGludGVsX2VkcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QNCj4gPiA+IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gPiA+IMKgwqAJICovDQo+ID4gPiDCoMKgCWludGVsX2hwZF9lbmFibGVf
ZGV0ZWN0aW9uKGVuY29kZXIpOw0KPiA+ID4gwqAgDQo+ID4gPiAtCWludGVsX2FscG1faW5pdChp
bnRlbF9kcCk7DQo+ID4gPiAtDQo+ID4gPiDCoMKgCS8qIENhY2hlIERQQ0QgYW5kIEVESUQgZm9y
IGVkcC4gKi8NCj4gPiA+IMKgwqAJaGFzX2RwY2QgPSBpbnRlbF9lZHBfaW5pdF9kcGNkKGludGVs
X2RwLCBjb25uZWN0b3IpOw0KPiA+ID4gwqAgDQo+ID4gPiBAQCAtNjk2MSw2ICs2OTU5LDggQEAg
c3RhdGljIGJvb2wgaW50ZWxfZWRwX2luaXRfY29ubmVjdG9yKHN0cnVjdA0KPiA+ID4gaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiA+ID4gwqDCoAkJZ290byBvdXRfdmRkX29mZjsNCj4gPiA+IMKgwqAJ
fQ0KPiA+ID4gwqAgDQo+ID4gPiArCWludGVsX2FscG1faW5pdChpbnRlbF9kcCk7DQo+ID4gVGhp
cyB3aWxsIGNhdXNlIHByb2JsZW1zIHRvIFBTUi9QYW5lbCBSZXBsYXkuIGludGVsX3Bzcl9pbml0
X2RwY2QNCj4gPiBpcw0KPiA+IHJlbHlpbmcgb24gQUxQTSBkcGNkIGluaXQgaXMgZG9uZSBmaXJz
dC4NCj4gPiANCj4gPiBCUiwNCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IEkgdGhpbmsgdGhp
cyB3aWxsIGFsc28gaGF2ZSB0byBiZSBtb3ZlZCBkb3duLg0KPiANCj4gRm9yIGVEUCBpbnRlbF9w
c3JfaW5pdF9kcGNkKCkgaXMgY2FsbGVkIGluIGludGVsX2VkcF9pbml0X2RwY2QuwqANCj4gU28g
Y2FuIA0KPiB3ZSBtb3ZlIGludGVsX2FscG1faW5pdCBpbnNpZGUgaW50ZWxfZWRwX2luaXRfZHBj
ZCgpID8gSnVzdCBiZWZvcmUgDQo+IGNhbGxpbmcgaW50ZWxfcHNyX2luaXRfZHBjZCAhDQo+IEFs
c28gcmVuYW1lIGludGVsX2FscG1faW5pdCgpIHRvIGludGVsX2FscG1faW5pdF9kcGNkKCkgPw0K
DQpBbmltZXNoIGhhcyBzb21lIG9uZ29pbmcgd29yayByZWxhdGVkOg0KDQpodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjg3NzExLz9zZXJpZXM9MTU2NDE3JnJldj00DQoN
CkkgdGhpbmsgaXQgc2hvdWxkIGJlIG9rIHRvIG1vdmUgYW5kIHJlbmFtZSBpdC4gVGhhdCBtdXRl
eF9pbml0IHdpdGhpbg0Kc2hvdWxkIGJlIGhhbmRsZWQgc29tZWhvdy4NCg0KQlIsDQpKb3VuaSBI
w7ZnYW5kZXINCg0KPiANCj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPiBBcnVuIFIgTXVydGh5DQo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiA+ID4gKw0KPiA+ID4gwqDCoAkvKg0KPiA+ID4g
wqDCoAkgKiBWQlQgYW5kIHN0cmFwcyBhcmUgbGlhcnMuIEFsc28gY2hlY2sgSFBEIGFzIHRoYXQN
Cj4gPiA+IHNlZW1zDQo+ID4gPiDCoMKgCSAqIHRvIGJlIHRoZSBtb3N0IHJlbGlhYmxlIHBpZWNl
IG9mIGluZm9ybWF0aW9uDQo+ID4gPiBhdmFpbGFibGUuDQoNCg==
