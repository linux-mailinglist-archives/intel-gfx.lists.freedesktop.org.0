Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tKWtLUYPRWrH6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A606EDBD7
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=rcpassos.me header.s=purelymail1 header.b=VJkqHKv6;
	dkim=fail ("headers rsa verify failed") header.d=purelymail.com header.s=purelymail1 header.b=SB2Bld69;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=rcpassos.me (policy=reject)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB81010E378;
	Wed,  1 Jul 2026 12:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com
 [34.202.193.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF6310E2E3
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 03:01:21 +0000 (UTC)
DKIM-Signature: a=rsa-sha256;
 b=VJkqHKv6NTNxhw5O2PJ50MOqTaJn60FjLQMKMBpuYgcIN6GDk3IFXCDEc1QeOhkfnDQVT9g9Aezdg0bIyylnlYmDMdBd6M+c9iGxXDbILKYbuY72Mej8ovORFm3ZlAmsryE1KcSXuJ+/P6Q9bk5SEWwPuvMOwBn/TThdLuwYqeZdz9nYLkvKTV+tw4pKWyXbp/tRWEx8lhz7CSZxiBQy5/LbSWK+Qa2p9vKZt/sU7Gu3cZ3rgjUwVhYglel5RQEIQgzBz9Tw2Gn7vHIBVq7ldFWySqxKLT3B9xkboV551k+rTeXOTppZbUdOTnOW8FqQNhtrpkZpluHxdIX0hZIJew==;
 s=purelymail1; d=rcpassos.me; v=1;
 bh=/+xYg6jX1ozm5WfnL4XEE4N+y3jAKId7pgtNcgp8lNQ=;
 h=Received:From:To:Subject:Date; 
DKIM-Signature: a=rsa-sha256;
 b=SB2Bld69AqLyhvJ9wWnJN6kF6iYLq2hweum0LmU0tyitxMQ8D7fBPXHEsciOMIFaVMQ6rtPu7YWnIUNDQpre9098uNPLYXXfMUyfDjCb6wUPHX3F/MhcmS54HZqqHqI5NJS6qPvijpK7LrZitMjCe7iZvONCOlrnWMGkTzPruUp7qSvj8Qs68deW9mc7GEeYStaIWWkM9lkRZ5Gl5xgH1vDPYRPA3ihjw/LUqAuIVWqwNh7IGVU2OetcN5QPibSBPdvJIHbMAFTipgfIE48w/MB4vGUXUDqZNWIrglD1/x5fqVV4WrWnbjHuX5W/u+xz7CEVcvtokSunJL/CUlQc6g==;
 s=purelymail1; d=purelymail.com; v=1;
 bh=/+xYg6jX1ozm5WfnL4XEE4N+y3jAKId7pgtNcgp8lNQ=;
 h=Feedback-ID:Received:From:To:Subject:Date; 
Feedback-ID: 45355:7809:null:purelymail
X-Pm-Original-To: intel-gfx@lists.freedesktop.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -75715480; 
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Sun, 21 Jun 2026 03:01:12 +0000 (UTC)
From: Rafael Passos <rafael@rcpassos.me>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, skhan@linuxfoundation.org,
 Rafael Passos <rafael@rcpassos.me>
Subject: [PATCH v2] Documentation: xe_drm: fix chars used for subsection
Date: Sun, 21 Jun 2026 00:01:14 -0300
Message-ID: <20260621030114.963405-1-rafael@rcpassos.me>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [4.39 / 15.00];
	DMARC_POLICY_REJECT(2.00)[rcpassos.me : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[rcpassos.me:s=purelymail1,purelymail.com:s=purelymail1];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[249];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:intel-xe@lists.freedesktop.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:rafael@rcpassos.me,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafael@rcpassos.me,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rafael@rcpassos.me,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rcpassos.me:-,purelymail.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50A606EDBD7

Fixes "ERROR: A level 2 section cannot be used here".
Equal signs are reserved for document titles.
This file docs gets imported by driver-uapi.rst,
and the page title is defined the.


Signed-off-by: Rafael Passos <rafael@rcpassos.me>
---
Hi, I send the v1 for this patch only for the linux-doc list.
The v2 fixes this, and has improvements to the commit message.
Thanks,

Rafael

 include/uapi/drm/xe_drm.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/uapi/drm/xe_drm.h b/include/uapi/drm/xe_drm.h
index 48e9f1fdb78d..4dfb30e6c8a8 100644
--- a/include/uapi/drm/xe_drm.h
+++ b/include/uapi/drm/xe_drm.h
@@ -2537,21 +2537,21 @@ struct drm_xe_exec_queue_set_property {
  * Refer to Documentation/netlink/specs/drm_ras.yaml for complete interfac=
e specification.
  *
  * Node Registration
- * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+ * -----------------
  *
  * The driver registers DRM RAS nodes for each error severity level.
  * enum drm_xe_ras_error_severity defines the node-id, while DRM_XE_RAS_ER=
ROR_SEVERITY_NAMES maps
  * node-id to node-name.
  *
  * Error Classification
- * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+ * --------------------
  *
  * Each node contains a list of error counters. Each error is identified b=
y a error-id and
  * an error-name. enum drm_xe_ras_error_component defines the error-id, wh=
ile
  * DRM_XE_RAS_ERROR_COMPONENT_NAMES maps error-id to error-name.
  *
  * User Interface
- * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+ * --------------
  *
  * To retrieve error values of a error counter, userspace applications sho=
uld
  * follow the below steps:
--=20
2.53.0

