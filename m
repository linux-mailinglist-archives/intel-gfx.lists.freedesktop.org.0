Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 577751BE61E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 20:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4CB86EAC6;
	Wed, 29 Apr 2020 18:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 29 Apr 2020 18:19:45 UTC
Received: from us2mail02.teledyne.com (us2mail02.teledyne.com [130.50.202.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECC26EAC6
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 18:19:45 +0000 (UTC)
IronPort-SDR: dZBftFrOrUOIL5kxSfPc2LLhJVQmA/wo3dljqxeQqAFnvOaY8oSDHEP29q7n59Rni7X9a4j9mb
 RTx/ZFReHVDoVOTM4Mflh3qV0Gv/OLf1AtvQerneqqPGs8wT+cHG9awVn+rk9sCr9yvNZeGQ8o
 0gehGQEwgCVbCCvhfDPcOXQRxzKLzqcY3PJjPDwqY3hxOZjAbDXX6AO/2ZFqUrQBZtT9SqHchF
 AQq74nlXWNBUjjmjpP4nbdZI7pVsj0PgKnUkbTUn9nMK3ATyST4nzuuVanSxvDSUKxHUUWV9Kk
 f0E=
IronPort-PHdr: =?us-ascii?q?9a23=3A5ch5rBbi0L2LhTow9VmF2bf/LSx+4OfEezUN45?=
 =?us-ascii?q?9isYplN5qZps2yZh7h7PlgxGXEQZ/co6odzbaP7ua+AidZuMfJmUtBWaQEbw?=
 =?us-ascii?q?UCh8QSkl5oK+++Imq/EsTXaTcnFt9JTl5v8iLzG0FUHMHjew+a+SXqvnYdFR?=
 =?us-ascii?q?rlKAV6OPn+FJLMgMSrzeCy/IDYbxlViDanbr5+MRW7oR/Qu8QYjoduN7s9xx?=
 =?us-ascii?q?/UqXZUZupawn9lK0iOlBjm/Mew+5Bj8yVUu/0/8sNLTLv3caclQ7FGFToqK2?=
 =?us-ascii?q?866tHluhnFVguP+2ATUn4KnRpSAgjK9w/1U5HsuSbnrOV92S2aPcrrTbAoXD?=
 =?us-ascii?q?mp8qlmRAP0hCoBKjU063/chNBug61HoRKhvx1/zJDSYIGJL/p1Y6fRccoHSW?=
 =?us-ascii?q?ZdQspdUipMCZ6+YYQSFeoMJeZWoZfgqVsSoxWwBgesC+HuyjBUiXH50rY30/?=
 =?us-ascii?q?g6Hg3awAAsA84CvXbSod7oNKkSS+e1zKzQwDnNYPxW3jP955XNch87p/GARa?=
 =?us-ascii?q?97f83QyUksFwPKlFSQqYjrMziI0ekDtGmb7+lgVe21im4nrxt9rTeoxscol4?=
 =?us-ascii?q?bJg5gaylbf+Ctn3ok1IcO3R1N7YN6iDpRcrT2VN4xzQs47RWxjpSk1xKEct5?=
 =?us-ascii?q?GhYCgK1IooxwTZa/GffIaF/xDuWemPLTp7mn9pZqyyihWy/0au1OHyVsu53V?=
 =?us-ascii?q?hKoCdHnNfBqH8D2hLQ58SaS/Zw4lqt1DaB2Q7c9uxJIEY5nrfYJZ452rM8i5?=
 =?us-ascii?q?QevVjZEiL2hEn6lrGae0ok9+Sy5enrfq3qqoKTOoNokA3yL6Ujl8ylDek4LA?=
 =?us-ascii?q?QCRXWX9fq42bH740H0QalGg/Mzn6XErJzVPsUWq6u6DgNJ0osu7hmyACuj3d?=
 =?us-ascii?q?kdgHUKLVRIcw+dgYfzIVHBOvX4AO+6g1SrjThk2ejLPqbkApXRNnjDl6rhfa?=
 =?us-ascii?q?pl505c1gUzyddf6opaBb8cPv7/Q0D+usbfABEkMgK42uHpBch82Y8CRG6DGL?=
 =?us-ascii?q?GXPq3QvlOS+OwgPe2Ma5EItzf9Lfgq+eTigmM+mV8YZaWp3J0XZ26kHvl+Pk?=
 =?us-ascii?q?mUb2bgjs0BHGsWpAYyUuPnhV2YXTNde3q+R6c86Ss6CIKiA4fDXIetgLmZ0S?=
 =?us-ascii?q?m8H51WZWBGBUqNEXfsbYmLVPAMaCaPLc9kiDMEU6OsS5M/2hGqqgD11rpmLu?=
 =?us-ascii?q?zK9SECqZ3j09116/XJlR4u7Tx0E9id02aVQmFuhGwIQiU53KR+oUx7xVeMy6?=
 =?us-ascii?q?14j+ZEGtFI5vNJVBs6OoDYz+BgF9/yXQfBdM+TSFm6WtWmHS0xTtUpzt8Vfk?=
 =?us-ascii?q?Z9AcutjgvD3yawAL8VirmLC4Yu8q7G3HjxOtx9y3PH1KQ6jlkmRNdPOnOihq?=
 =?us-ascii?q?Jl6wfTAIvJmV2Dl6m2baQcwDLN9GCbwGqPukFYTBB/UaHcUXAQaEvXos/05k?=
 =?us-ascii?q?fDT7+1FbQnKRFNycCYKqRUdNLmkEtJROzgONTCZGKxg328BRGSxrODP8LWfD?=
 =?us-ascii?q?An1SDUDEkCnAkWtV3OYRI3Ay6lomTRBTkoHnruZV/h9a91r3btHWEuyATfJX?=
 =?us-ascii?q?Nm07aw8xhRzdmdSPMa37ZO8HMEqjZ0FVe5mezRD9aFrgxJQKhYbN8s5loB3m?=
 =?us-ascii?q?Xc4V8udqe8Jrxv0wZNOz98uFnjglAuUt0ay5ojsW8qwQxuKKmRzFJGcXaC0I?=
 =?us-ascii?q?vtPqHMczCtrhGpd6PSnFrZ1YXe9qQO7aE+rFPu9EGsG1E5+npqm99SzzOH55?=
 =?us-ascii?q?rMAQZTNPC5Uks++xVg4b2PZC476tDV02FhNe+/tTqRk94sDfEunxCnedoXOa?=
 =?us-ascii?q?iYFQj0RssdAcXmKOEjl1WzKBweO+UHyKMwMs+3cfbA06mub+s=3D?=
X-IPAS-Result: =?us-ascii?q?A2ELAABOw6le/x71MoJjAxoBAQEBAQEBAQEBAwEBAQESA?=
 =?us-ascii?q?QEBAQICAQEBAUCBNAQBAQEBCwGBUykoBVsTWB08CoQXg0YDjUKYMYEuFIFfC?=
 =?us-ascii?q?BABARgLCgKBBINAAheCFyQ1CA4CDwEBAQIBAQMFAgEBAmmFVgyCOykBgWyBM?=
 =?us-ascii?q?0IBAQEBAwERERErDA4MBAIBCA0EBAEBAQICIwMCAgImChQBCAgBAQQKBAUIE?=
 =?us-ascii?q?weDBYJ8AQ6oXQKBOYhhdoEyGoNnhm4JAYEEKgGFKYhzPoERQ4JNPoEOgQeCB?=
 =?us-ascii?q?AESASMFEAoLDAINgkszgi0EjleCZJB5kAEDBAOCRYgTiXaGG4JbgQqMNgMQj?=
 =?us-ascii?q?FmYJIEsjxKBOoJ2AgQCBAUCDgEBBYFUAzUpPXBwgzkJkzIXgQMBCIJDilZ0A?=
 =?us-ascii?q?jEDAgYBBwEBAwl8kF4BgQ8BAQ?=
Received: from unknown (HELO US2-VPMSG-MBX01.TDY.Teledyne.com)
 ([130.50.245.30])
 by us2mail02.tdy.teledyne.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Apr 2020 11:12:37 -0700
Received: from US2-VPMSG-MBX03.TDY.Teledyne.com (130.50.245.32) by
 US2-VPMSG-MBX01.TDY.Teledyne.com (130.50.245.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 29 Apr 2020 11:12:35 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (130.50.245.200)
 by US2-VPMSG-MBX03.TDY.Teledyne.com (130.50.245.32) with Microsoft
 SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3 via Frontend Transport; Wed, 29 Apr 2020 11:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsxixfhUNw9APYQ31ZLMWPvT0r/R3EIIJ0HAaEmb5c7Ctxl45KqznjjXTrjZbv8JWh+mV8+hMvG/bc907IjB+O4tmlLENUjmcnNI6bxyIHTRguQ2gbvQBizewwL/Qpl2W6A8/9hh401G5cfz16J+CoOZF017gjBAQq9RWHMP2/c75nfwvM7yzKll2P7CRrAwY9T2hosIEgkCUPWdiKHyEZce++XQSG0nrH/jAwaLP0gEhS7NJ/PavzMVanpwK9nl18S7BJTDxXKypT1S4cH2riHjpCJHRe3hmkSc7QAlBxkiPZ5Xhf9wXp40BFfgyEDiauTsva+DMjenSXBnnVb9bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8uwHlM3HK+A5lQD9pDN0J8bnL3vyVDYyUdpvRUsEwmA=;
 b=Nbf8Ch1tWgm6LLkS3MEFtBb2PZQaVaqCVE7vkmz06AW4i6kQib+b0eXy8wnmAd7OIn878W8R1H7NE3pDzmUhguE2gqFlAMDqYvgzAyiog222rBVZmiaLZok4i0wPACd9NFBrPUaz2Q0+YlBBPyNkrRWJry4JDGCLph2AgE3OGur8gfm7hBaN7PYoFkJjYW6+VNbqwbffc1FL2fwID4VrGRW1JWahWzEZdtUUed3Jyp+9smPkCdD9r79mGMGwcJIiSMxDM8L3/zzR4v1mYgHuKlPQyOVUYix0owJ/jmJ3ChsmLh2VO8ejQyWYkNT8lB3HcyTlNllU5fGG3D0oO8WJXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=teledyne.com; dmarc=pass action=none header.from=teledyne.com;
 dkim=pass header.d=teledyne.com; arc=none
Received: from SN6PR14MB2464.namprd14.prod.outlook.com (2603:10b6:805:4c::16)
 by SN6PR14MB2447.namprd14.prod.outlook.com (2603:10b6:805:48::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 18:12:33 +0000
Received: from SN6PR14MB2464.namprd14.prod.outlook.com
 ([fe80::d914:2f48:1db7:fa93]) by SN6PR14MB2464.namprd14.prod.outlook.com
 ([fe80::d914:2f48:1db7:fa93%7]) with mapi id 15.20.2958.020; Wed, 29 Apr 2020
 18:12:33 +0000
From: "Voldman, Mikhail" <Mikhail.Voldman@Teledyne.com>
To: Ramalingam C <ramalingam.c@intel.com>
Thread-Topic: i915 HDCP 2.2 TX encryption on Teledyne test instrument
Thread-Index: AdWTRw2BG0Bp65ShSKOnMlnbnuJPdAATIS4AACO6JPAAD49FACJ7W1aQ
Date: Wed, 29 Apr 2020 18:12:32 +0000
Message-ID: <SN6PR14MB24642D79A1E77C667D8B658F85AD0@SN6PR14MB2464.namprd14.prod.outlook.com>
References: <BN8PR14MB3156745AD1ACA0DE7181E50E857F0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191105044329.GA19142@intel.com>
 <BN8PR14MB3156BC64F3EB8DDAB2AC5295857E0@BN8PR14MB3156.namprd14.prod.outlook.com>
 <20191106051159.GA32360@intel.com>
In-Reply-To: <20191106051159.GA32360@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=Teledyne.com;
x-originating-ip: [140.165.52.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7264e6b3-bdf9-474b-d610-08d7ec68e361
x-ms-traffictypediagnostic: SN6PR14MB2447:
x-microsoft-antispam-prvs: <SN6PR14MB2447F179E0C92B5C2D292ED985AD0@SN6PR14MB2447.namprd14.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03883BD916
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR14MB2464.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(136003)(396003)(376002)(39860400002)(8676002)(7696005)(186003)(26005)(66446008)(64756008)(66476007)(6506007)(53546011)(33656002)(2906002)(66556008)(76116006)(66946007)(86362001)(8936002)(52536014)(71200400001)(54906003)(6916009)(316002)(478600001)(5660300002)(9686003)(55016002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EO1VMAL3ysCa1Fl8bfFhCaSl/HJTVvfTb/0MEtbF2Z7f1tirCGIDL4UTDrylsAxIOc7hOJYnQ/dKJAXjetPx6z6OorAImDcCNh9y1FC22KA+oOUB50Q7KUM2hgPQ28ONZe39cI+VSlOJcafP0f3HIMsa87acMKOpjlQc4IHimgxB1/Ga8fgo98N4O8IjM/sKCOVxDcl7zqIJl/h6mNVNpTBEqRySZ6LSU+l4xxQMRbSdN+XpCPuYyxAw6MaSOzntcdYwemhTpkBSS5oeVVA+5564sGfO1YFdZWjwq7xMP9ww3oxPhm4zXfFj0DCQF7bWaWOVMKSCb6wj1BibnlKp4I6qNSmwni2U720qFBFrDwQkHn4lu6i7m4RP7iH7j4g7/DNWX02L8QLwv6TWfWaBTra3Q5UV+CrZn0Vu6H21vC2q215AVTK/3nm/8h16talfZGvz/bNWtqx9pqWM8fbQAmUS2V5xG6tCxaC6Wmgg0D8FEAghTFokaqd8E/dc2WPiXWJTs8IoR7+aw8syGDUs0g==
x-ms-exchange-antispam-messagedata: BshUYRqV6R/na8ZKW5vo8xSeCEs/SfZQOkqmyD1J0Q88ADGvnlm/fxjTezMbuDPCjAbb3scM7HrDKgkUpPv8R7zM6R/kENN/FWvavtipWTDYaQYe3HdSaubOxxmbD1SPCAWRikxpMvAzplvDV/0oupD3GQYx3f/63f0yVq70mh39zNMnbeWMJreplQgVVbNJBL3i+cKySNdObYY3pphjatbTDP6XgqmNOTr5rwu97GEjga/OjTYeWM0H6/u6A+gSSaM1ceC4VAATfK3rcWdiWPBsWiyl9cNSqCp/rDxRVYTqQPrguw6kCPUHQ4YTAz+nhGFAHcH5hud4gxncmRATe7/LdxDrEuE2LjP2CIZMS2HXkfcl8R3Pq3qSoZjuW7lROYcCXBxEWOrP/7QByjd8zhwoq7FXZeGkBidg7tL1X1qoBLjGvrf060MvvWSrDd9vZKuFFC17y4ZBNd/Py08HJvvx1KoQRWv69NMo+J9VJxmwPmwVl/dAHesz2nElzL1orBI78ynYaE4UrGQx+KXz7PnVf8dtrDhdVbnxnpIkYuEGIC8qNrbPms+uy/FW7yq/zsimcfxGFQJpYGHN5FzoxEHtvXhiXU4FLUlxgQ4sjOIZXFYKNu50/QHNQhMepZXuSIEGa3M5/Tr4NuA5t4j3uCgdrFhbE4ez1UQV6QRdzC3cmkgwefHsASZY6WtMtDfkY2NCqPgDkZgj3XQXxeg2kiK5W+e6E8YJora4TT4+zZ3leNS9dEplY6dnmcFPLQUl5FCIsxQN8onTtx4ql9L4GnRYvdnBnMzLk1ZtAYf2eQY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7264e6b3-bdf9-474b-d610-08d7ec68e361
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 18:12:32.7960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e324592a-2653-45c7-9bfc-597c36917127
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HiupwY5dPA73oaKf925hBLXN4LfhN4XEqC6JhW6goJD+pl/yS6QAA4zPPgeHncHc1vg5fpcWEmLG87oaFsGX9fkA0/9dCbkNYdZy+gQO0Fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR14MB2447
X-OriginatorOrg: Teledyne.com
X-TM-AS-Product-Ver: SMEX-12.0.0.1727-8.500.1020-25386.002
X-TM-AS-Result: No--21.552000-8.000000-31
X-TM-AS-MatchedID: 150567-703789-704704-705271-703325-703115-702558-703140-7
 03664-700737-700716-701342-705153-702719-701429-703532-390448-700279-121155
 -704380-702102-780014-187125-139006-702481-703208-106660-780048-871061-7030
 61-101438-702031-705249-139010-184130-701559-701589-780037-703117-702617-70
 3408-701270-703173-390249-703812-702937-187165-110462-703215-703045-700135-
 702754-704706-704922-704418-700353-700715-703958-700378-701478-701477-70225
 1-105040-701708-700263-700845-139705-63-148004-148046-148133-20043-24831-36
 048-42000-42003-63-190014
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
Subject: Re: [Intel-gfx] i915 HDCP 2.2 TX encryption on Teledyne test
 instrument
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Kurmi Suresh Kumar <suresh.kumar.kurmi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUmFtLA0KDQpUaGFuayB5b3UgZm9yIHlvdXIgaGVscCwgaW4gdGhlIHBhc3QuIA0KV2UgY2Fu
IGNvbnRyb2wgSERDUCBvbiBvdXIgcHJvZHVjdHMgYXMgbmVlZGVkLg0KDQpPbmUgaXNzdWUgb24g
dGhlIG5ldyBtb3RoZXJib2FyZCB1c2VkIGluIG91ciBwcm9kdWN0Lg0KSW4gdGhpcyBjYXNlLCBp
OTE1IGFkdmVydGlzZXMgaXRzZWxmIGFzIERQLTEgc2luayByZXBlYXRlciBhbmQgYXV0aGVudGlj
YXRlZCBhcyBIRENQIDEuNCBjYXBhYmxlIGRldmljZSwgYnV0IGRvd25zdHJlYW0gSERNSSBkZXZp
Y2UgaXMgSERDUCAyLjMgY2FwYWJsZSBhbmQgY29ycmVjdGx5IGF1dGhlbnRpY2F0ZWQgYXMgSERD
UCAyLjMuIA0KSXMgaXQgYW55IHdheSBJIGNhbiBkZXRlcm1pbmUgd2hhdCBIRENQIGxldmVsIGRv
d25zdHJlYW0gZGV2aWNlIGlzIGF1dGhlbnRpY2F0ZWQ/ICANCkxvY2sgb2YgaTkxNSBkb2N1bWVu
dGF0aW9uIG1ha2VzIHRoaXMgbm90IHZlcnkgb2J2aW91cy4gDQpDYW4geW91IGp1c3QgcG9pbnQg
dXMgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbj8NCg0KVGFoayBZb3UsDQoNCk1pa2hhaWwgVm9sZG1h
bg0KU3lzdGVtIEFyY2hpdGVjdA0KDQpUZWxlZHluZSBMZUNyb3ksIFByb3RvY29sIFNvbHV0aW9u
cyBHcm91cA0KMjExMSBCaWcgVGltYmVyIFJvYWQNCkVsZ2luLCBJTMKgIDYwMTIzDQplbWFpbCBh
ZGRyZXNzOsKgIG1pa2hhaWwudm9sZG1hbkB0ZWxlZHluZS5jb20NCjg0Ny04ODgtMDQ1MCB4MTM2
DQoNClNlbmQgbWUgYSBmaWxlIHNlY3VyZWx5DQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4gDQpTZW50OiBU
dWVzZGF5LCBOb3ZlbWJlciA1LCAyMDE5IDExOjEyIFBNDQpUbzogVm9sZG1hbiwgTWlraGFpbCA8
TWlraGFpbC5Wb2xkbWFuQFRlbGVkeW5lLmNvbT4NCkNjOiBLdXJtaSBTdXJlc2ggS3VtYXIgPHN1
cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBpbnRlbC1nZnggPGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmc+DQpTdWJqZWN0OiBSZTogaTkxNSBIRENQIDIuMiBUWCBlbmNyeXB0aW9u
IG9uIFRlbGVkeW5lIHRlc3QgaW5zdHJ1bWVudA0KDQotLS1FeHRlcm5hbCBFbWFpbC0tLQ0KDQpN
b3ZpbmcgdG8gI2ludGVsLWdmeA0KDQpIaSwNCg0KR2xhZCB0aGF0IEkgY291bGQgaGVscCB5b3Uh
DQoNCk9uIDIwMTktMTEtMDUgYXQgMjE6NTY6MjggKzAwMDAsIFZvbGRtYW4sIE1pa2hhaWwgd3Jv
dGU6DQo+IEhlbGxvIFJhbWFsaW5nYW0sDQo+IA0KPiBUaGFuayB5b3UgZm9yIHF1aWNrIHJlc3Bv
bnNlLiANCj4gWW91ciBpbmZvcm1hdGlvbiBpcyB2ZXJ5IGhlbHBmdWwuIA0KPiBCdXQgY2FuIHlv
dSBlbGFib3JhdGU6DQo+IA0KPiBJbiB5b3VyIHByb2R1Y3QsIElmIHlvdSB3YW50IHRvIGVuYWJs
ZSB0aGUgSERDUCBhbHdheXMgYmFzZWQgb24gdGhlIA0KPiBzaW5rIGNhcGFiaWxpdHksIHNldCB0
aGUgIkNvbnRlbnQgcHJvdGVjdGlvbiIgdG8gREVTSVJFRCBzdGF0ZSBhbG9uZyANCj4gd2l0aCBk
ZXNpcmVkIGNvbnRlbnQgdHlwZS4gIFtNVl0gc2hvdWxkIEkgc2V0IERFU0lSRUQgcHJvdGVjdGlv
biBsZXZlbCBhcyBEUk0gbWFzdGVyPw0KVGhpcyBuZWVkcyBhZGRpdGlvbmFsIGtlcm5lbCBwYXRj
aCBmb3IgeW91ciBwcm9kdWN0IHRvIHNldCB0aGUgZGVzaXJlZCBzdGF0ZSBhcyBkZWZhdWx0IHN0
YXRlIG9mIHRoZSBwcm9wZXJ0eSBhdCB0aGUgY3JlYXRpb24uDQo+IA0KPiBBcyB0aGVzZSBhcmUg
cHJvcGVydGllcywgbm9uIERSTSBNYXN0ZXJzIGNhbiBvbmx5IHJlYWQgdGhlbS4gY2FuIHNldCAN
Cj4gdGhlbS4gW01WXSBkbyB5b3UgbWVhbjogIiBub24gRFJNIE1hc3RlcnMgY2FuIG9ubHkgcmVh
ZCB0aGVtLCBidXQgIGNhbid0IHNldCB0aGVtLiINClllcy4NCj4gQ2FuIEkgdXNlIE1FSSBpbnRl
cmZhY2UgdG8gY29udHJvbCBIRENQPw0KTm90IG5lZWRlZCBpZiB5b3Ugc2V0IHRoZSBkZWZhdWx0
IHN0YXRlIGFzIGRlc2lyZWQuDQotUmFtDQo+IA0KPiBNaWtoYWlsIFZvbGRtYW4NCj4gU3lzdGVt
IEFyY2hpdGVjdA0KPiANCj4gVGVsZWR5bmUgTGVDcm95LCBQcm90b2NvbCBTb2x1dGlvbnMgR3Jv
dXANCj4gMjExMSBCaWcgVGltYmVyIFJvYWQNCj4gRWxnaW4sIElMwqAgNjAxMjMNCj4gTm90ZSBu
ZXcgZW1haWwgYWRkcmVzczrCoCBtaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUuY29tDQo+IDg0Ny04
ODgtMDQ1MCB4MTM2DQo+IA0KPiBTZW5kIG1lIGEgZmlsZSBzZWN1cmVseQ0KPiANCj4gDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdh
bS5jQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciA0LCAyMDE5IDEwOjQ0IFBN
DQo+IFRvOiBWb2xkbWFuLCBNaWtoYWlsIDxNaWtoYWlsLlZvbGRtYW5AVGVsZWR5bmUuY29tPg0K
PiBDYzogS3VybWkgU3VyZXNoIEt1bWFyIDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogaTkxNSBIRENQIDIuMiBUWCBlbmNyeXB0aW9uIG9uIFRlbGVkeW5lIHRl
c3QgaW5zdHJ1bWVudA0KPiANCj4gLS0tRXh0ZXJuYWwgRW1haWwtLS0NCj4gDQo+IE9uIDIwMTkt
MTEtMDQgYXQgMjA6NDI6NDkgKzAwMDAsIFZvbGRtYW4sIE1pa2hhaWwgd3JvdGU6DQo+ID4gSGVs
bG8gUmFtYWxpbmdhbSwNCj4gPiANCj4gPiBXZSBleGNoYW5nZWQgbnVtYmVyIG9mIGUtbWFpbHMg
ZmV3IG1vbnRocyBhZ28gcmVnYXJkaW5nIExpbnV4IGk5MTUgSERDUCAyLjIgZW5jcnlwdGlvbiAg
c3VwcG9ydCBpbiB0aGUgbmV3IFRlbGVkeW5lIHZpZGVvIHRlc3QgaW5zdHJ1bWVudC4NCj4gPiBU
aGFua3MgZm9yIHlvdXIgaGVscCB3ZSB3ZXJlIGFibGUgdG8gY29udHJvbCBIRENQIDIuMiBlbmNy
eXB0aW9uIGFzIERSTSBtYXN0ZXJzLg0KPiA+IA0KPiA+IFVuZm9ydHVuYXRlbHkgb3VyIHByb2R1
Y3QgcmVxdWlyZW1lbnQgc3BlY2lmaWVkIHRoYW4gd2UgbmVlZCB0byAgZW5hYmxlIEhEQ1AgMi4y
IGFsd2F5cyBpZiBhdHRhY2hlZCBtb25pdG9yIGNhcGFiaWxpdGllcyBzaG93cyBIRENQIDIuMiBz
dXBwb3J0Lg0KPiA+IEFsc28gaTkxNSBiYXNlZCBUWCByZXF1aXJlZCB0byBleGVjdXRlIEhEQ1Ag
Mi4yIHJlLWF1dGhlbnRpY2F0aW9uIGlmIFNpbmsgSFBEIGlzIGRldGVjdGVkLg0KPiA+IA0KPiA+
IElzIGN1cnJlbnQgSW50ZWwgaTkxNSBrZXJuZWwgZHJpdmVyIGltcGxlbWVudGF0aW9uIGNhbiBz
dXBwb3J0IGRlc2lyZWQgZnVuY3Rpb25hbGl0eT8gRG8geW91IGhhdmUgcGxhbnMgdG8gc3VwcG9y
dCB0aGlzPw0KPiANCj4gIkhEQ1AgYWx3YXlzIiB3aWxsIG5ldmVyIGJlIGFuIHVwc3RyZWFtIHNv
bHV0aW9uLiBhbHdheXMgdXNlcnNwYWNlIA0KPiBkcml2ZW4uDQo+IA0KPiBJbiB5b3VyIHByb2R1
Y3QsIElmIHlvdSB3YW50IHRvIGVuYWJsZSB0aGUgSERDUCBhbHdheXMgYmFzZWQgb24gdGhlIA0K
PiBzaW5rIGNhcGFiaWxpdHksIHNldCB0aGUgIkNvbnRlbnQgcHJvdGVjdGlvbiIgdG8gREVTSVJF
RCBzdGF0ZSBhbG9uZyANCj4gd2l0aCBkZXNpcmVkIGNvbnRlbnQgdHlwZS4NCj4gDQo+IEFzIHRo
ZXNlIGFyZSBwcm9wZXJ0aWVzLCBub24gRFJNIE1hc3RlcnMgY2FuIG9ubHkgcmVhZCB0aGVtLiBj
YW4gc2V0IA0KPiB0aGVtLg0KPiANCj4gSG9wZSB5b3UgYXJlIHVuYmxvY2tlZC4gQWxsIHRoZSBi
ZXN0IQ0KPiANCj4gLVJhbQ0KPiA+IA0KPiA+IEFyZSBjdXJyZW50IGk5MTUgYWxsb3cgY29udHJv
bCBIRENQIGVuY3J5cHRpb24gYnkgTk9UIERSTSBtYXN0ZXIgYXBwbGljYXRpb24/DQo+ID4gDQo+
ID4gQW55IHN1Z2dlc3Rpb24gb3IgYWR2aWNlIGJ5IEludGVsIEhEQ1AgMi4yIGV4cGVydHMgd2ls
bCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQuDQo+ID4gDQo+ID4gQmVzdCBSZWdhcmRzLA0KPiA+IA0K
PiA+IE1pa2hhaWwgVm9sZG1hbg0KPiA+IFN5c3RlbSBBcmNoaXRlY3QNCj4gPiBbY2lkOmltYWdl
MDAxLmdpZkAwMUQyRDBBNy45MTkzMjBBMF0NCj4gPiBUZWxlZHluZSBMZUNyb3ksIFByb3RvY29s
IFNvbHV0aW9ucyBHcm91cA0KPiA+IDIxMTEgQmlnIFRpbWJlciBSb2FkDQo+ID4gRWxnaW4sIElM
ICA2MDEyMw0KPiA+IE5vdGUgbmV3IGVtYWlsIGFkZHJlc3M6ICANCj4gPiBtaWtoYWlsLnZvbGRt
YW5AdGVsZWR5bmUuY29tPG1haWx0bzptaWtoYWlsLnZvbGRtYW5AdGVsZWR5bmUuY29tPg0KPiA+
IDg0Ny04ODgtMDQ1MCB4MTM2DQo+ID4gDQo+ID4gU2VuZCBtZSBhIGZpbGUgDQo+ID4gc2VjdXJl
bHk8aHR0cHM6Ly90cmFuc2ZlcmVhc3QudGVsZWR5bmUuY29tL2ZpbGVkcm9wL21pa2hhaWwudm9s
ZG1hbkANCj4gPiB0ZWxlZHluZS5jb20+DQo+ID4gDQo+IA0KPiANCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
