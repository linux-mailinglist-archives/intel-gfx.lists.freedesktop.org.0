Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S2XLOYG/Imp5dAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:22:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B7F648121
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:22:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=seu.edu.cn header.s=default header.b=MBJNh3Us;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=seu.edu.cn
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2CA11A7FC;
	Fri,  5 Jun 2026 12:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 303 seconds by postgrey-1.36 at gabe;
 Wed, 03 Jun 2026 13:33:53 UTC
Received: from mail-m60151.netease.com (mail-m60151.netease.com
 [210.79.60.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC2110FE4C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2026 13:33:53 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Message-ID: <AEEA3wBNKXHNFDDbteEVlKoi.3.1780493327957.Hmail.220255722@seu.edu.cn>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com, 
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch, 
 matthew.brost@intel.com, uma.shankar@intel.com, 
 pierre-louis.bossart@linux.dev, jerome.anand@intel.com, 
 tiwai@suse.de, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 jianhao.xu@seu.edu.cn
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSCB2M10gZHJtL2k5MTUvZGlzcGxheTogRml4IGludGVsX2xwZV9hdWRpb19pcnFfaGFuZGxlciBmb3IgUFJFRU1QVC1SVA==?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com web
X-Originating-IP: 223.112.146.162
In-Reply-To: <41760e1def08cbf51bf868a7ebf393e0d9e59125@intel.com>
References: <20260602004515.1907422-1-runyu.xiao@seu.edu.cn>
 <20260602062957.0Nbtw_yY@linutronix.de>
 <3e012936-8493-43c8-b547-17ae40e6ef74@lankhorst.se>
 <41760e1def08cbf51bf868a7ebf393e0d9e59125@intel.com>
MIME-Version: 1.0
Received: from 220255722@seu.edu.cn( [223.112.146.162] ) by ajax-webmail (
 [127.0.0.1] ) ; Wed, 3 Jun 2026 21:28:47 +0800 (GMT+08:00)
From: Runyu Xiao <runyu.xiao@seu.edu.cn>
Date: Wed, 3 Jun 2026 21:28:47 +0800 (GMT+08:00)
X-HM-Tid: 0a9e8d8cb35702f2kunmcd7d59d41b9ba
X-HM-MType: 1
X-HM-NTES-SC: AL0_4z5B86Wr4Tz9jdMF+bhXMdx4Gk9TojlCNw7tyeABf3pHtCqLbYOkFBtNuQ
 eKMqJLwxE4yuoq3Z/LDw3/nFtMAhtMDDQq8pKleCn4nL13edK6O/L8qjkzAxlW29vRwHG25FW/ED
 MKYaNV+hwUYXivKlbtzoOEahY8xiZEbcSMz2M=
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSxoZVkwZQ0wZT0gYGkMeQlYVFA
 kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUhVSkpJVUpPTVVKTUlZV1kWGg8SFR0UWUFZT0tIVU
 pLSEpOTE5VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
 b=MBJNh3UssdsqCkHwPDYFJHjlOpdEqekYnRfDa5cPa/rpiXVgPT6nEdFNxvmWAUk6rE462pIU66aIV/OAFn0Ejn7awKTw4blky/NgBYjxULSZbVQPowtbkF4whiy4a4HSpwnr1U3TWXSKgsJmNXJ2irpMMDaorSHnN42xLR94dtY=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=ZqG1ByE4sCe0kQtHgs6SktRVjMFBTmiskJ/vPNHxqc0=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Approved-At: Fri, 05 Jun 2026 12:22:20 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUBJ_EXCESS_BASE64(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DATE_IN_PAST(1.00)[46];
	DMARC_POLICY_ALLOW(-0.50)[seu.edu.cn,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[seu.edu.cn:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:dev@lankhorst.se,m:bigeasy@linutronix.de,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:matthew.brost@intel.com,m:uma.shankar@intel.com,m:pierre-louis.bossart@linux.dev,m:jerome.anand@intel.com,m:tiwai@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[runyu.xiao@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lankhorst.se,linutronix.de,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,seu.edu.cn];
	DKIM_TRACE(0.00)[seu.edu.cn:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[runyu.xiao@seu.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	HAS_X_PRIO_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lankhorst.se:email,seu.edu.cn:mid,seu.edu.cn:dkim,seu.edu.cn:from_mime,seu.edu.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C7B7F648121

PiBPbiBXZWQsIDAzIEp1biAyMDI2LCBKYW5pIE5pa3VsYSB3cm90ZToKPiBXaGVyZSBhcmUgdGhl
IENJIHJlc3VsdHM/CgpJbnRlbCBHRlggcHJlLW1lcmdlIENJIHdhcyBub3QgdHJpZ2dlcmVkIGZv
ciB0aGlzIHN1Ym1pc3Npb24uCgpQYXRjaHdvcmsgdmFsaWRhdGlvbiBmYWlsZWQgd2l0aDoKIkFk
ZHJlc3MgJ3J1bnl1LnhpYW9Ac2V1LmVkdS5jbicgaXMgbm90IG9uIHRoZSBhbGxvd2xpc3QsIHdo
aWNoIHByZXZlbnRzIENJIGZyb20gYmVpbmcgdHJpZ2dlcmVkIGZvciB0aGlzIHBhdGNoLiIKCkkg
aGF2ZSBhbHJlYWR5IGNvbnRhY3RlZCBpOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZyB0byByZXF1ZXN0IGFsbG93bGlzdGluZyBmb3IgdGhpcyBhZGRyZXNzLgoKU29ycnkgZm9yIHRo
ZSBjb25mdXNpb24uCgpSdW55dQoKPj4KPj4gT24gNi8yLzI2IDA4OjI5LCBTZWJhc3RpYW4gQW5k
cnplaiBTaWV3aW9yIHdyb3RlOgo+Pj4gT24gMjAyNi0wNi0wMiAwODo0NToxNSBbKzA4MDBdLCBS
dW55dSBYaWFvIHdyb3RlOgo+Pj4+IEZyb206IE1hYXJ0ZW4gTGFua2hvcnN0IDxkZXZAbGFua2hv
cnN0LnNlPgo+Pj4+Cj4+Pj4gVGhlIExQRSBhdWRpbyBpbnRlcnJ1cHQgY29tZXMgZnJvbSB0aGUg
aTkxNSBpbnRlcnJ1cHQgaGFuZGxlci4gSXQKPj4+PiBzaG91bGQgYmUgaW4gaXJxIGRpc2FibGVk
IGNvbnRleHQuCj4+Pj4KPj4+PiBXaXRoIFBSRUVNUFRfUlQgZW5hYmxlZCwgdGhlIElSUSBoYW5k
bGVyIGlzIHRocmVhZGVkLgo+Pj4+IEJlY2F1c2UgaW50ZWxfbHBlX2F1ZGlvX2lycV9oYW5kbGVy
KCkgbWF5IGJlIGNhbGxlZCBpbiB0aHJlYWRlZCBJUlEgY29udGV4dCwKPj4+PiBnZW5lcmljX2hh
bmRsZV9pcnFfc2FmZSBBUEkgZGlzYWJsZXMgdGhlIGludGVycnVwdHMgYmVmb3JlIGNhbGxpbmcg
TFBFJ3MKPj4+PiBpbnRlcnJ1cHQgdG9wIGhhbGYgaGFuZGxlci4KPj4+Pgo+Pj4+IFRoaXMgZml4
ZXMgYnJhc3dlbGwgYXVkaW8gaXNzdWVzIHdpdGggUlQgZW5hYmxlZC4KPj4+Pgo+Pj4+IFNpZ25l
ZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxkZXZAbGFua2hvcnN0LnNlPgo+Pj4+IFJldmll
d2VkLWJ5OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPj4+PiBSZXZp
ZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBSdW55dSBYaWFvIDxydW55dS54aWFvQHNldS5lZHUuY24+Cj4+PiAKPj4+IFJldmll
d2VkLWJ5OiBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+
Cj4+PiAKPj4+IFNlYmFzdGlhbgo+Pgo+Cj4tLSAKPkphbmkgTmlrdWxhLCBJbnRlbAo+CgoKPj4K
Pj4gT24gNi8yLzI2IDA4OjI5LCBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yIHdyb3RlOgo+Pj4g
T24gMjAyNi0wNi0wMiAwODo0NToxNSBbKzA4MDBdLCBSdW55dSBYaWFvIHdyb3RlOgo+Pj4+IEZy
b206IE1hYXJ0ZW4gTGFua2hvcnN0IDxkZXZAbGFua2hvcnN0LnNlPgo+Pj4+Cj4+Pj4gVGhlIExQ
RSBhdWRpbyBpbnRlcnJ1cHQgY29tZXMgZnJvbSB0aGUgaTkxNSBpbnRlcnJ1cHQgaGFuZGxlci4g
SXQKPj4+PiBzaG91bGQgYmUgaW4gaXJxIGRpc2FibGVkIGNvbnRleHQuCj4+Pj4KPj4+PiBXaXRo
IFBSRUVNUFRfUlQgZW5hYmxlZCwgdGhlIElSUSBoYW5kbGVyIGlzIHRocmVhZGVkLgo+Pj4+IEJl
Y2F1c2UgaW50ZWxfbHBlX2F1ZGlvX2lycV9oYW5kbGVyKCkgbWF5IGJlIGNhbGxlZCBpbiB0aHJl
YWRlZCBJUlEgY29udGV4dCwKPj4+PiBnZW5lcmljX2hhbmRsZV9pcnFfc2FmZSBBUEkgZGlzYWJs
ZXMgdGhlIGludGVycnVwdHMgYmVmb3JlIGNhbGxpbmcgTFBFJ3MKPj4+PiBpbnRlcnJ1cHQgdG9w
IGhhbGYgaGFuZGxlci4KPj4+Pgo+Pj4+IFRoaXMgZml4ZXMgYnJhc3dlbGwgYXVkaW8gaXNzdWVz
IHdpdGggUlQgZW5hYmxlZC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxkZXZAbGFua2hvcnN0LnNlPgo+Pj4+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEJyb3N0IDxt
YXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPj4+PiBSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBSdW55dSBYaWFvIDxydW55
dS54aWFvQHNldS5lZHUuY24+Cj4+PiAKPj4+IFJldmlld2VkLWJ5OiBTZWJhc3RpYW4gQW5kcnpl
aiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+Cj4+PiAKPj4+IFNlYmFzdGlhbgo+Pgo+
Cj4tLSAKPkphbmkgTmlrdWxhLCBJbnRlbAo+Cg==
