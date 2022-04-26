Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35751071C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306CE10E1C5;
	Tue, 26 Apr 2022 18:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5791110E1C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650998074;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eJubVxidxrH43nT1ZcESqGVo+TV4vGiI9S8510OYaUk=;
 b=d7aZ+8YfcSH/Rck7V2XQ/4epEAoRZ7zaVfVjfdZoQsg/PtLIWf0HI9oFJzD4H2XghVCDrR
 21++f1O+1PmkZThWmd1HXMgNNIgzSw6rnt14sDJ06q0hINVuNq1+Xb33nFUUew451O14WI
 Rf7kB5FLXUuNRJf7u3b8/I/U1SoIbm4=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-526-cNFP2oZ4Nd-1Fj6eISZ3rQ-1; Tue, 26 Apr 2022 14:34:33 -0400
X-MC-Unique: cNFP2oZ4Nd-1Fj6eISZ3rQ-1
Received: by mail-qt1-f199.google.com with SMTP id
 f22-20020ac840d6000000b002dd4d87de21so10479078qtm.23
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 11:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=eJubVxidxrH43nT1ZcESqGVo+TV4vGiI9S8510OYaUk=;
 b=BJ75WoTHxAPEXh+8kZjoxJRBoNNMSytN43IT0l8cZ53OxcEyt3KSCq5h+aMqCbMTYx
 3Rw7jTpSxWAlBi5UNmXysJfPiXcPYd4fYDeSyEDTC6lcnfBxKImBlLv/2wjNcAvJ7op2
 ZOYHmBvwYARdl7ibdpeJxfIksuI5fbxfzBXLngLNBFLAXoCLezx1SbWuL50VMIb01Aye
 i9Dn39vDkIkHqEfnUBkkkwpiewolg0x8Ect9D00H7u7NTT86BjDhRVIIrBU+erhUKzBi
 cp+68EHpHIKD+6xT4cjPJwvHVSzgCxnyHq4B2BbCt8CNaTaPeWPbBTOydAADDUXK5APN
 L2Rg==
X-Gm-Message-State: AOAM531qKz7KDbd9yerk9E2jIOO6GRP2yRUtf+iiGoOonoD4zWhO30W0
 28MMNdUHK8IXkopemFty6HM3b3x5FIdytEqgF60XUav0+tn/V83vMbgrgi4sVSdRPuakwQ5I2cT
 g/qTtS8StmN2NDrZcBLMFW+/egY28
X-Received: by 2002:a05:6214:4011:b0:446:63b6:8b51 with SMTP id
 kd17-20020a056214401100b0044663b68b51mr17416050qvb.43.1650998072569; 
 Tue, 26 Apr 2022 11:34:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSTyxghOMakuSzLg+vVd1jQRAhTlvSuZxjU1DMb91ySKyNOQTzvYi4NffiezRcnRfbz+CZSQ==
X-Received: by 2002:a05:6214:4011:b0:446:63b6:8b51 with SMTP id
 kd17-20020a056214401100b0044663b68b51mr17416023qvb.43.1650998072239; 
 Tue, 26 Apr 2022 11:34:32 -0700 (PDT)
Received: from [192.168.8.138] (static-71-184-137-158.bstnma.ftas.verizon.net.
 [71.184.137.158]) by smtp.gmail.com with ESMTPSA id
 22-20020ac85916000000b002f3402e34a3sm8785857qty.55.2022.04.26.11.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 11:34:31 -0700 (PDT)
Message-ID: <fa4b1543a0547d505d73a74002eedc12de03e910.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Tue, 26 Apr 2022 14:34:30 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] XDC 2022: Registration & Call for Proposals now open!
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
Cc: board@foundation.x.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello!

The 2022 X.Org Developers Conference is being held in conjunction with
the 2022 Wine Developers Conference.  This is a meeting to bring
together developers working on all things open graphics (Linux kernel,
Mesa, DRM, Wayland, X11, etc.) as well as developers for the Wine
Project, a key consumer of open graphics.

Registration & Call for Proposals are now open for both XDC 2022 and
WineConf 2022, which will take place on October 4-6, 2022 in
Minneapolis, Minnesota, USA. 

https://xdc2022.x.org
 
As usual, the conference is free of charge and open to the general
public. If you plan on attending, please make sure to register as early
as possible!
 
In order to register as attendee, you will therefore need to do it via
the XDC website:
 
https://indico.freedesktop.org/event/2/registrations/2/
 
In addition to registration, the CfP is now open for talks, workshops
and demos at XDC 2022. While any serious proposal will be gratefully
considered, topics of interest to X.Org and freedesktop.org developers
are encouraged. The program focus is on new development, ongoing
challenges and anything else that will spark discussions among
attendees in the hallway track.
 
We are open to talks across all layers of the graphics stack, from the
kernel to desktop environments / graphical applications and about how
to make things better for the developers who build them. Head to the
CfP page to learn more: 
 
https://indico.freedesktop.org/event/2/abstracts/
 
The deadline for submissions is Monday July 4th, 2022.
 
Check out our Reimbursement Policy to accept speaker
expenses for X.Org events like XDC 2022:
 
https://www.x.org/wiki/XorgFoundation/Policies/Reimbursement/

If you have any questions, please send me an email to
xdc@codeweavers.com, adding on CC the X.org board (board
at foundation.x.org).
 
And don't forget, you can follow us on Twitter for all the latest
updates and to stay connected:
 
https://twitter.com/XOrgDevConf

Best regards,
Lyude Paul, on behalf of X.org

